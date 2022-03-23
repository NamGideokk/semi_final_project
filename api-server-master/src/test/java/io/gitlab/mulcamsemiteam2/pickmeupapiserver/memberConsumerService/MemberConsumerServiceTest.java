package io.gitlab.mulcamsemiteam2.pickmeupapiserver.memberConsumerService;

//
//@SpringBootTest
//@Transactional
public class MemberConsumerServiceTest {

//    @Autowired
//    MemberConsumerService memberConsumerService;
//    @Autowired
//    MemberConsumerRepositoy memberConsumerRepositoy;
//
//
//    @Test
//    @Rollback(value = false)
//    public void 회원가입() throws Exception {
//        MemberConsumer memberConsumer = new MemberConsumer();
//        memberConsumer.setName("이종민");
//        memberConsumer.setEmail("ljm170@naver.com");
//        memberConsumer.setRegTime(new Date());
//        int saveId = memberConsumerService.join(memberConsumer);
//        assertEquals(memberConsumer, memberConsumerRepositoy.findOne(saveId));
//    }
//
//    @Test
//    public void 중복체크() throws Exception {
//        MemberConsumer memberConsumer = new MemberConsumer();
//        memberConsumer.setName("이종민");
//        memberConsumer.setEmail("ljm170@naver.com");
//        memberConsumer.setRegTime(new Date());
//        int saveId = memberConsumerService.join(memberConsumer);
//
//        MemberConsumer memberConsumer2 = new MemberConsumer();
//        memberConsumer2.setName("이종민2");
//        memberConsumer2.setEmail("ljm170@naver.com");
//        memberConsumer2.setRegTime(new Date());
//        int validateDuplicate = memberConsumerService.validateDuplicateMember(memberConsumer2);
//        System.out.println(validateDuplicate);
//        assertEquals(validateDuplicate, 1); // 중복회원 조회 시 1
//
//        MemberConsumer memberConsumer3 = new MemberConsumer();
//        memberConsumer3.setName("이종민3");
//        memberConsumer3.setEmail("ljm170@daumnet");
//        memberConsumer3.setRegTime(new Date());
//        int NotValidateDuplicate =memberConsumerService.validateDuplicateMember(memberConsumer3);
//        assertEquals(NotValidateDuplicate, 0); // 중복회원 없을 시 0
//    }
//
//    @Test
//    public void 회원수정() throws Exception {
//        MemberConsumer memberConsumer = new MemberConsumer();
//        Address address = new Address();
//        address.setAddress1("서울시");
//        memberConsumer.setName("이종민");
//        memberConsumer.setAddress(address);
//        memberConsumer.setRegTime(new Date());
//        int saveId = memberConsumerService.join(memberConsumer);
//
//        MemberConsumer memberConsumerModify = memberConsumer;
//        memberConsumerModify.setContact("010-2044-6199");
//        memberConsumerModify.setAddress(new Address("서울시", "성북구", "123"));
//
//
//        int modifySuccess = memberConsumerService.MemberConsumerUpdate(memberConsumerModify);
//        assertEquals(modifySuccess, 0); // 중복회원 없을 시 0
//    }

}
