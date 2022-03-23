package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums.MemberType;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums.ResourceType;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.math.BigInteger;
import java.util.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
@DynamicInsert
public class NotificationAdmin {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "uid", columnDefinition = "BIGINT UNSIGNED ZEROFILL")
    private BigInteger id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "admin_id", nullable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private MemberAdmin memberAdmin;

    @NotNull @Size(max = 255)
    private String message;

    @NotNull
    @Column(columnDefinition = "TINYINT UNSIGNED")
    private ResourceType targetType;

    // 알림이 가리키는 대상의 id
    @NotNull
    @Column(columnDefinition = "BIGINT UNSIGNED ZEROFILL")
    private BigInteger targetId;

    @NotNull
    @Column(columnDefinition = "TINYINT UNSIGNED")
    private MemberType sourceType;

    @NotNull
    @Column(columnDefinition = "INT UNSIGNED ZEROFILL")
    private Long sourceId;

    @CreationTimestamp
    @Column(columnDefinition = "DATETIME DEFAULT now()", nullable = false)
    private Date regTime;

    @Builder
    public NotificationAdmin(MemberAdmin memberAdmin, String message, ResourceType targetType,
                              BigInteger targetId, MemberType sourceType, Long sourceId) {
        this.memberAdmin = memberAdmin;
        this.message = message;
        this.targetType = targetType;
        this.targetId = targetId;
        this.sourceType = sourceType;
        this.sourceId = sourceId;
    }

    @PostPersist
    private void postPersist() {
        int newNotiCount = memberAdmin.getUnreadNotiCount() + 1;
        if(newNotiCount > 100) {
            newNotiCount = 100;
        }
        memberAdmin.setUnreadNotiCount(newNotiCount);
    }
}
