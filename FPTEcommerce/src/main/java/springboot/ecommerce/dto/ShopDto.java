package springboot.ecommerce.dto;

import lombok.Getter;
import lombok.Setter;
import springboot.ecommerce.entity.ShopEntity;

@Getter
@Setter
public class ShopDto {

    private int id;

    private String name;

    private String address;

    private String phone;

    private String description;

    private String linkImage;

    private Integer status;

    public ShopDto(){}

    public ShopDto(ShopEntity entity){
        this.id = entity.getId();
        this.name = entity.getName();
        this.address = entity.getAddress();
        this.phone = entity.getPhone();
        this.description = entity.getDescription();
        this.linkImage = entity.getLinkImage();
        this.status = entity.getStatus();
    }
}
