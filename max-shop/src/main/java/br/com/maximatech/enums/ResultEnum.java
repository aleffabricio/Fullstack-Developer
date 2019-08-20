package br.com.maximatech.enums;

import lombok.Getter;


@Getter
public enum ResultEnum  {

    PARAM_ERROR(1, "Erro no parametro!"),
    PRODUCT_NOT_EXIST(10, "Produto não existe!"),
    PRODUCT_NOT_ENOUGH(11, "Não há produtos no estoque!"),
    PRODUCT_STATUS_ERROR(12, "Status incorreto!"),
    PRODUCT_OFF_SALE(13,"Product não encontrado no momento!"),
    PRODUCT_NOT_IN_CART(14,"Produto não esta no carrinho!"),
    CART_CHECKOUT_SUCCESS(20, "Compra finalizada! "),

    CATEGORY_NOT_FOUND(30, "Categoria não existe!"),

    ORDER_NOT_FOUND(60, "Ordem não existe!"),
    ORDER_STATUS_ERROR(61, "Status esta incorreto"),


    VALID_ERROR(50, "Informação"),
    USER_NOT_FOUNT(40,"Usuario não encontrado!")
    ;

    private Integer code;

    private String message;

    ResultEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
    
    
}
