package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.dto;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

@Data
public class ProductModifyReq {

    private String name;

    private String[] removeImages;

    private MultipartFile[] newImages;

    private int category1;

    private int category2;

    private String additionalDesc;

    private int price;

    private int discountRate;

    private int stockCount;
}
