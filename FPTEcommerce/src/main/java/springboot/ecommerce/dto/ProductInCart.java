package springboot.ecommerce.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ProductInCart {

    private int id;
    private int quantity;
    private String shopName;
    private String shopUrl;
    private String pathImage;
    private Float unitPrice;
    private Float promotionPrice;
    private Integer percentz;
    private String color;
    private String size;
    private String name;
}
