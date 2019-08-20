


INSERT INTO "public"."order_main" VALUES (2147483643, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:20.439', 100.00, 0, '2018-03-15 12:52:20.439');
INSERT INTO "public"."order_main" VALUES (2147483645, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:29.007', 4.00, 0, '2018-03-15 12:52:29.007');
INSERT INTO "public"."order_main" VALUES (2147483641, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:07.428', 180.00, 2, '2018-03-15 12:52:53.664');
INSERT INTO "public"."order_main" VALUES (2147483647, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:35.289', 2.00, 2, '2018-03-15 12:52:55.919');
INSERT INTO "public"."order_main" VALUES (2147483649, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:58:23.824', 150.00, 0, '2018-03-15 12:58:23.824');
INSERT INTO "public"."order_main" VALUES (2147483642, '3200 West Road', 'customer1@email.com', 'customer1', '123456789', '2018-03-15 13:01:21.135', 4.00, 2, '2018-03-15 13:02:09.023');
INSERT INTO "public"."order_main" VALUES (2147483640, '3200 West Road', 'customer1@email.com', 'customer1', '123456789', '2018-03-15 13:01:16.271', 20.00, 2, '2018-03-15 13:02:52.067');
INSERT INTO "public"."order_main" VALUES (2147483648, '3200 West Road', 'customer1@email.com', 'customer1', '123456789', '2018-03-15 13:01:06.943', 134.00, 1, '2018-03-15 13:02:56.498');


INSERT INTO "public"."product_category" VALUES (2147483641, 'Books', 0, '2018-03-09 23:03:26', '2018-03-10 00:15:27');
INSERT INTO "public"."product_category" VALUES (2147483642, 'Clothes', 2, '2018-03-10 00:15:02', '2018-03-10 00:15:21');
INSERT INTO "public"."product_category" VALUES (2147483644, 'Drink', 3, '2018-03-10 01:01:09', '2018-03-10 01:01:09');
INSERT INTO "public"."product_category" VALUES (2147483645, 'Food', 1, '2018-03-10 00:26:05', '2018-03-10 00:26:05');


INSERT INTO "public"."product_in_order" VALUES (2147483642, 0,1,'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', 30.00,96,NULL, 2147483641);
INSERT INTO "public"."product_in_order" VALUES (2147483644, 0,1, 'Learn Spring', 'https://images-na.ssl-images-amazon.com/images/I/51gHy16h5TL._SX397_BO1,204,203,200_.jpg', 'B0002', 'Spring In Action', 20.00,195,NULL, 2147483643);
INSERT INTO "public"."product_in_order" VALUES (2147483646, 1,1, 'Kids Party Food', 'http://asset1.marksandspencer.com/is/image/mands/MS_FD_F04C_00398503_NC_X_EC_0?$PDP_MAXI_ZOOM_NEW$', 'F0001', 'Chicken', 4.00,57,NULL, 2147483645);
INSERT INTO "public"."product_in_order" VALUES (2147483648, 3,1,'Starbucks', 'https://starbuckssecretmenu.net/wp-content/uploads/2017/06/Starbucks-Violet-Drink.jpg', 'D0002', 'Starbucks Violet Drink', 2.00,200,NULL, 2147483647);
INSERT INTO "public"."product_in_order" VALUES (2147483640, 1,1, 'Kids Party Food', 'http://asset1.marksandspencer.com/is/image/mands/MS_FD_F04C_00398503_NC_X_EC_0?$PDP_MAXI_ZOOM_NEW$', 'F0001', 'Chicken', 4.00,57,NULL, 2147483649);
INSERT INTO "public"."product_in_order" VALUES (2147483641, 2,1, 'Boys Clothes', 'https://d2ul0w83gls0j4.cloudfront.net/taxonomy/300/0102/20171024151632.jpg', 'C0002', 'Shirts', 13.00,108,NULL, 2147483649);
INSERT INTO "public"."product_in_order" VALUES (2147483632, 1,1, 'Family s', 'http://cdn1.thecomeback.com/wp-content/uploads/2017/05/mcdonalds_food-832x447.png', 'F0002', 'McDonald‘s Food', 20.00,22,NULL, 2147483649);
INSERT INTO "public"."product_in_order" VALUES (2147483643, 0,1, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', 30.00,96,NULL, 2147483648);
INSERT INTO "public"."product_in_order" VALUES (2147483634, 2,1, 'Under Armour', 'https://assets.academy.com/mgen/33/20088533.jpg?is=500,500', 'C0001', 'T-shirt', 10.00, 109,NULL, 2147483649);
INSERT INTO "public"."product_in_order" VALUES (2147483647, 3,1, 'Awesome', 'https://starbuckssecretmenu.net/wp-content/uploads/2017/06/Starbucks-Violet-Drink.jpg', 'D0002', 'Starbucks Violet Drink', 2.00,200,NULL, 2147483645);
INSERT INTO "public"."product_in_order" VALUES (2147483649, 0,1, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', 30.00,  96,NULL,2147483645);





INSERT INTO "public"."product_info" VALUES ('B0003', 0, '2019-03-10 10:37:39', 'Moto G7 Play 32GB', 'https://brmotorola.vteximg.com.br/arquivos/ids/160769-700-700/01-moto-g7-play-32gb-indigo.png?v=636854936870570000', 'Moto G7', 719.00, 1, 0, '2019-03-10 19:42:02');
INSERT INTO "public"."product_info" VALUES ('C0003', 2, '2019-03-10 12:12:46', 'Ar condicionado', 'https://climario.vteximg.com.br/arquivos/ids/172415-420-420/ArCondicionadoSplitHiWallSpringerMidea9000Btuhfrio220v.png?v=636643269393730000', 'Ar condicionado', 1119.00, 0, 222, '2018-03-10 12:12:46');
INSERT INTO "public"."product_info" VALUES ('D0001', 3, '2019-03-10 06:51:03', 'Macbook Pro 128GB', 'https://images-americanas.b2w.io/produtos/01/00/offers/01/00/item/132490/8/132490881_1GG.jpg', 'Macbook Pro', 7500.00, 0, 100, '2018-03-10 12:04:13');
INSERT INTO "public"."product_info" VALUES ('B0002', 0, '2019-03-10 10:35:43', 'PS4', 'https://images-americanas.b2w.io/produtos/01/00/item/133092/7/133092720_1GG.jpg', 'PS4', 2150.00, 0, 195, '2018-03-10 10:35:43');
INSERT INTO "public"."product_info" VALUES ('C0001', 2, '2019-03-10 12:09:41', 'Under Armour', 'https://assets.academy.com/mgen/33/20088533.jpg?is=500,500', 'T-shirt', 10.00, 0, 109, '2018-03-10 12:09:41');
INSERT INTO "public"."product_info" VALUES ('C0002', 2, '2019-03-10 12:11:51', 'Boys Clothes', 'https://d2ul0w83gls0j4.cloudfront.net/taxonomy/300/0102/20171024151632.jpg', 'Shirts', 13.00, 0, 108, '2018-03-10 12:11:51');
INSERT INTO "public"."product_info" VALUES ('B0001', 0, '2019-03-10 06:44:25', 'Forno micro-ondas', 'https://images-americanas.b2w.io/produtos/01/00/item/119757/7/119757799_1GG.png', 'Forno micro-ondas', 360.00, 0, 96, '2018-03-10 06:44:25');
INSERT INTO "public"."product_info" VALUES ('B0004', 0, '2019-03-10 10:39:29', 'IPhone 6s', 'https://images-americanas.b2w.io/produtos/01/00/offers/01/00/item/129251/7/129251732_1GG.png', 'IPhone 6s', 3000.00, 0, 199, '2018-03-10 10:39:32');
INSERT INTO "public"."product_info" VALUES ('B0005', 0, '2019-03-10 10:40:35', 'Purificador', 'https://images-americanas.b2w.io/produtos/01/00/img2/24209/8/24209862_1GG.jpg', 'Purificador', 387.00, 0, 199, '2018-03-10 10:40:35');
INSERT INTO "public"."product_info" VALUES ('D0002', 3, '2019-03-10 12:08:17', 'Câmera de segurança', 'https://images-americanas.b2w.io/produtos/01/00/img2/26899/4/26899495_1GG.jpg', 'Câmera de segurança', 2.00, 0, 200, '2018-03-10 12:08:17');
INSERT INTO "public"."product_info" VALUES ('F0001', 1, '2019-03-10 12:15:05', 'Smart TV LED 43', 'https://images-americanas.b2w.io/produtos/01/00/offers/01/00/item/133720/7/133720749_1GG.png', 'Smart TV LED 43', 2000.00, 0, 57, '2018-03-10 12:15:10');
INSERT INTO "public"."product_info" VALUES ('F0002', 1, '2019-03-10 12:16:44', 'Relógio Inteligente', 'https://images-americanas.b2w.io/produtos/01/00/img3/135163/0/135163026_1GG.jpg', 'Relógio Inteligente', 50.00, 0, 22, '2018-03-10 12:16:44');


INSERT INTO "public"."users" VALUES (2147483641, 't', '3200 West Road', 'teste@email.com', 'customer1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '123456789', 'ROLE_CUSTOMER');
INSERT INTO "public"."users" VALUES (2147483642, 't', '2000 John Road', 'colaborador@email.com', 'colaborador', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '987654321', 'ROLE_MANAGER');
INSERT INTO "public"."users" VALUES (2147483643, 't', '222 East Drive ', 'cliente@email.com', 'cliente', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '123123122', 'ROLE_EMPLOYEE');
INSERT INTO "public"."users" VALUES (2147483645, 't', '3100 Western Road A', 'customer2@email.com', 'customer2', '$2a$10$0oho5eUbDqKrLH026A2YXuCGnpq07xJpuG/Qu.PYb1VCvi2VMXWNi', '2343456', 'ROLE_CUSTOMER');

INSERT INTO "public"."cart" VALUES (2147483641);
INSERT INTO "public"."cart" VALUES (2147483642);
INSERT INTO "public"."cart" VALUES (2147483643);
INSERT INTO "public"."cart" VALUES (2147483645);


