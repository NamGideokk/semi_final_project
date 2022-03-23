import "./Footer.css";
import {} from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faAmazonPay, faFacebook, faGoogle, faInstagramSquare, faYoutube } from "@fortawesome/free-brands-svg-icons";

// footer .react
const Footer = () => {
    return(
            <footer>
                <div className="footer-wrapper">
                    <div className="footer">
                        <div className="footer-top-left">
                            픽미업 고객센터
                        </div>
                        <div className="footer-top-right">
                            <a href="#!">회사소개</a>
                            <a href="http://www.ecmc.or.kr" target="_black" >전자거래분쟁조정위원회</a>
                            <a href="#!">개인정보처리방침</a>
                            <a href="#!">이용약관</a>
                            <a href="#!">이용안내</a>
                        </div>
                        <div className="footer-mid-left01">
                            <p>1666 - 0909</p>
                            <p>FAX 02) 123 - 4567</p>
                            <button>카카오톡 문의</button>
                            <button>1:1 문의</button>
                        </div>
                        <div className="footer-mid-left02">
                            <p>오전 7시 - 오후 7시</p>
                            <p>오전 7시 - 오후 7시</p>
                            <p>오전 7시 - 오후 7시</p>
                            <p>24시간 접수 가능</p>
                        </div>
                        <div className="footer-mid-right01">
                            법인명(상호) : 주식회사 픽미업<br/>
                            사업자등록번호 : 123-45-67899 │ <a href="#!"><mark className="green">사업자정보 확인</mark></a><br/>
                            통신판매업 : 제2022-서울강남-12345호 │ 개인정보보호책임자 : 이재호<br/>
                            주소 : 서울특별시 강남구 테헤란로 123, 23층 │ 대표이사 : 이재호<br/>
                            이메일 : <a href="#!"><mark className="green">master@pickmeup.com</mark></a>
                        </div>
                        <div className="footer-mid-right02">
                            <a href="#!"><FontAwesomeIcon icon={faAmazonPay} className="footer-amazon" />구매안전서비스</a>
                        </div>
                        <div className="footer-mid-right03">
                            <a href="http://www.youtube.com" target="_black" ><FontAwesomeIcon icon={faYoutube} className="footer-youtube" /></a>
                            <a href="http://www.facebook.com" target="_black" ><FontAwesomeIcon icon={faFacebook} className="footer-facebook" /></a>
                            <a href="http://www.google.com" target="_black" ><FontAwesomeIcon icon={faGoogle} className="footer-google" /></a>
                            <a href="http://www.instargram.com" target="_black" ><FontAwesomeIcon icon={faInstagramSquare} className="footer-instargram" /></a>
                        </div>
                        <div className="footer-bottom">
                            픽미업에서 판매되는 상품 중에는 픽미업에 입점한 개별 판매자가 판매하는 마켓플레이스 상품이 포함되어 있습니다.<br/>
                            마켓플레이스 상품의 경우 픽미업은 통신판매증개자로서 통신판매의 당사자가 아닙니다.<br/>
                            픽미업은 해당 상품의 주문, 품질, 교환/환불 등 의무와 책임을 부담하지 않습니다.<br/><br/>
                            ⓒ PICKMEUP CORP.ALL RIGHTS RESERVED
                        </div>
                    </div>
                </div>
            </footer>
    );
}

export default Footer;