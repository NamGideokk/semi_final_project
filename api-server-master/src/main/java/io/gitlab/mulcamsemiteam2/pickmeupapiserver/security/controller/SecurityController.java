package io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.controller;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.MemberAdminService;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.MemberConsumerService;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.MemberSellerService;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.MemberRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SecurityController {

    @Autowired
    @Qualifier("memberAdminService")
    private MemberAdminService adminService;

    @Autowired
    @Qualifier("memberSellerService")
    private MemberSellerService sellerService;

    @Autowired
    @Qualifier("memberConsumerService")
    private MemberConsumerService consumerService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/admin/login", method = RequestMethod.GET)
    public String adminlogin() {
        return "login";
    }

    @RequestMapping(value = "/seller/login", method = RequestMethod.GET)
    public String sellerlogin() {
        return "login";
    }

    @RequestMapping(value = "/api/myInfo", method = RequestMethod.GET)
    @ResponseBody
    public Object myInfo(Authentication authentication) {
        Long id = (Long) authentication.getPrincipal();
        String role = authentication.getAuthorities().stream()
                .filter(auth -> auth.getAuthority().startsWith("ROLE_"))
                .findAny().get().getAuthority();

        if (role.equals("ROLE_" + MemberRoles.ADMIN)) {
            return adminService.getUserInfo(id);
        } else if (role.equals("ROLE_" + MemberRoles.CONSUMER)) {
            return consumerService.getUserInfo(id);
        } else if (role.equals("ROLE_" + MemberRoles.SELLER)) {
            return sellerService.getUserInfo(id);
        }
        return null;
    }
}
