package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.MemberRoles;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.model.CommonMemberSecureInfo;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Entity
@Getter
@Setter
@DynamicInsert
@DynamicUpdate
@Table(name="member_admin")
@NoArgsConstructor
public class MemberAdmin extends CommonMemberSecureInfo {

    @NotNull @Size(min = 2, max = 20)
    private String name;

    @NotNull @Size(max = 20)
    private String contact;

    @NotNull
    @Column(columnDefinition = "TINYINT UNSIGNED DEFAULT 0")
    private Integer unreadNotiCount = 0;

    @CreationTimestamp
    @Column(columnDefinition = "DATETIME DEFAULT now()", nullable = false)
    private Date lastAccessTime;

    @OneToMany(mappedBy = "memberAdmin", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<NotificationAdmin> notificationList = new ArrayList<>();

    @Builder
    public MemberAdmin(Long id, String email, byte[] pwd, String name, String contact) {
        super(id, email, pwd);
        this.name = name;
        this.contact = contact;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority("ROLE_" + MemberRoles.ADMIN));
        return authorities;
    }
}