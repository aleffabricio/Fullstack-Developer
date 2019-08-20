import { AfterContentChecked, Component, OnDestroy, OnInit } from '@angular/core';
import { CartService } from '../../services/cart.service';
import { Subject, Subscription } from 'rxjs';
import { UserService } from '../../services/user.service';
import { JwtResponse } from '../../response/JwtResponse';
import { ProductInOrder } from '../../models/ProductInOrder';
import { debounceTime, switchMap } from 'rxjs/operators';
import { ActivatedRoute, Router } from '@angular/router';
import { Role } from '../../enum/Role';
import { FreightService } from 'src/app/services/freight.service';

@Component({
    selector: 'app-cart',
    templateUrl: './cart.component.html',
    styleUrls: ['./cart.component.css']
})
export class CartComponent implements OnInit, OnDestroy, AfterContentChecked {

    constructor(private cartService: CartService,
        private userService: UserService,
        private freightService: FreightService,
        private router: Router) {
        this.userSubscription = this.userService.currentUser.subscribe(user => this.currentUser = user);
    }

    productInOrders = [];
    freight: number = 0;
    total = 0;
    qtdItens = 0;
    currentUser: JwtResponse;
    userSubscription: Subscription;

    private updateTerms = new Subject<ProductInOrder>();
    sub: Subscription;

    static validateCount(productInOrder) {
        const max = productInOrder.productStock;
        if (productInOrder.count > max) {
            productInOrder.count = max;
        } else if (productInOrder.count < 1) {
            productInOrder.count = 1;
        }
        console.log(productInOrder.count);
    }

    ngOnInit() {
        this.cartService.getCart().subscribe(prods => {
            this.productInOrders = prods;
        });

        this.countQtdItens();
        this.getFreight();

        this.sub = this.updateTerms.pipe(

            debounceTime(300),

            switchMap((productInOrder: ProductInOrder) => this.cartService.update(productInOrder))
        ).subscribe(prod => {
            if (prod) { throw new Error(); }
        },
            _ => console.log('Falha ao alterar'));

    }


    ngOnDestroy() {
        if (!this.currentUser) {
            this.cartService.storeLocalCart();
        }
        this.userSubscription.unsubscribe();
    }

    ngAfterContentChecked() {
        this.total = this.productInOrders.reduce(
            (prev, cur) => prev + cur.count * cur.productPrice, 0);
    }

    countQtdItens() {
        this.qtdItens = this.productInOrders.reduce(
            (prev, cur) => prev + cur.count, 0);
        console.log(this.qtdItens);

    }
    /*
    Função que calcula o frete de acordo com a quantidade de itens
    */
    getFreight() {
        this.freightService.getCalculateFreight(this.qtdItens).subscribe(freight => {
            this.freight = freight;
            console.log('Valor do frete randomico: ' + this.freight);

        });
    }

    addOne(productInOrder) {
        productInOrder.count++;
        CartComponent.validateCount(productInOrder);
        if (this.currentUser) { this.updateTerms.next(productInOrder); }
    }

    minusOne(productInOrder) {
        productInOrder.count--;
        CartComponent.validateCount(productInOrder);
        if (this.currentUser) { this.updateTerms.next(productInOrder); }
    }

    onChange(productInOrder) {
        CartComponent.validateCount(productInOrder);
        if (this.currentUser) { this.updateTerms.next(productInOrder); }
    }


    remove(productInOrder: ProductInOrder) {
        this.cartService.remove(productInOrder).subscribe(
            success => {
                this.productInOrders = this.productInOrders.filter(e => e.productId !== productInOrder.productId);
                console.log('Carrinho: ' + this.productInOrders);
            },
            _ => console.log('Falha ao remover do carrinho'));
    }

    checkout() {
        if (!this.currentUser) {
            this.router.navigate(['/login'], { queryParams: { returnUrl: this.router.url } });
        } else if (this.currentUser.role !== Role.Customer) {
            this.router.navigate(['/seller']);
        } else {
            this.cartService.checkout().subscribe(
                _ => {
                    this.productInOrders = [];
                },
                error1 => {
                    console.log('Falha ao conferir carrinho');
                });
            this.router.navigate(['/']);
        }

    }
}

