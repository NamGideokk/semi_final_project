package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.validator.constraints.Length;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Embeddable
@Getter
@Setter
public class Address {

    @NotNull @Size(max = 128)
    @Column(length = 128, nullable = false)
    private String address1;

    @NotNull @Size(max = 128)
    @Column(length = 128, nullable = false)
    private String address2;

    @NotNull @Size(min = 10, max = 10)
    @Length(min = 10, max = 10)
    @Column(length = 10, nullable = false)
    private String eupmyundongCode;

    public Address() {
    }

    public Address(String address1, String address2, String bcode) {
        this.address1 = address1;
        this.address2 = address2;
        this.eupmyundongCode = bcode;
    }
}
