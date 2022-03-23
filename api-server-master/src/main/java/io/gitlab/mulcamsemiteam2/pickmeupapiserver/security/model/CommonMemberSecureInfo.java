package io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Base64;
import java.util.Date;

@Getter
@Setter
@MappedSuperclass
@NoArgsConstructor
public abstract class CommonMemberSecureInfo implements UserDetails {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "uid", columnDefinition = "INT UNSIGNED ZEROFILL")
    private Long id;

    @NotNull @Size(max = 255)
    @Column(unique = true)
    private String email;

    @NotNull @Size(max = 64)
    @Column(columnDefinition = "VARBINARY(64)")
    private byte[] pwd;

    @CreationTimestamp
    @Column(columnDefinition = "DATETIME DEFAULT now()", nullable = false)
    private Date regTime;

    public CommonMemberSecureInfo(Long id, String email, byte[] pwd) {
        this.id = id;
        this.email = email;
        this.pwd = pwd;
    }

    @Override
    @JsonIgnore
    public String getPassword() {
        return Base64.getEncoder().encodeToString(this.pwd); // 길이 86~88
    }

    @Override
    @JsonIgnore
    public String getUsername() {
        return getEmail();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return isAccountNonExpired() &&
                isAccountNonLocked() &&
                isCredentialsNonExpired();
    }
}
