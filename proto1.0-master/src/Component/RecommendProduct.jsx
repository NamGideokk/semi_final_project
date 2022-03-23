import PropTypes from "prop-types";

import { faAngleRight } from "@fortawesome/free-solid-svg-icons";
import { faShoppingBasket } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import "./RecommendProduct.css"

//propTypes 정의
// RecommendProduct.PropTypes = {
//     recommendType: PropTypes.string.isRequired,
//     prdImg: PropTypes.
//     prdName: PropTypes.string.isRequired,
//     prdPrice: PropTypes.string.isRequired,
//     prdDisRate: PropTypes.string.isRequired,
//     prdDisPrice: PropTypes.string.isRequired,
// };


// 메인 노출 추천 상품 (이 상품 어때요?)
const RecommendProduct = () => {

//         const productName = document.querySelector(".product-name"); //상품 이름
//         const productPrice = document.querySelector(".product-price"); //상품 가격
//         const productDiscountRate = document.querySelector(".product-discount-rate"); //상품 할인율
//         const productInfo = document.querySelector("#rp01-a");

//         const showLeft = document.querySelector("#show-left"); //왼쪽 이동 버튼
//         const showRight = document.querySelector("#show-right"); //오른쪽 이동 버튼
//         const productListBox = document.querySelector(".recommend-produt-01-inner"); //상품 나열된 내부 박스
//         const productIcon = document.querySelectorAll(".rp01-icon"); //각 상품 아이콘(박스)
//         const productIconWidth = 235; //상품 아이콘 가로 너비
//         const productIconMargin = 40; //상품 아이콘 좌우 마진
//         const currentIndex = 0;

//         // 테스트 (마우스오버시 제품이름 뜨는것)
//     productInfo.setAttribute("title", productName.innerText);
    
//     //할인율 있을 경우 기본 가격에 가로줄 추가, 글씨 색상 변경
//     if(productDiscountRate.innerText !== ""){
//         productPrice.style.textDecoration = "line-through";
//         productPrice.style.color = "#646464";
//     };

//     productListBox.style.width = ((productIconWidth + productIconMargin) * productIcon.length) + "px"; //내부 박스 유동적 가로 너비

//     function moveSlide(num){
//         productListBox.style.left = -num * 275 + "px";
//         currentIndex = num;
//     };

// //가장 왼쪽일때 왼쪽 이동 버튼 숨김
// if(currentIndex == 0) {
//     showLeft.style.left = "-100px";
//     showLeft.style.opacity = "0";
// };

// showRight.addEventListener("click",()=>{
//     if(currentIndex < productIcon.length - 4){
//         moveSlide(currentIndex + 1);
//         showRight.style.right = "0";
//         showRight.style.opacity = "1";
//     }
//     if(currentIndex == (productIcon.length - 4)) {
//         showRight.style.right = "-100px";
//         showRight.style.opacity = "0";
//     }
//     if(currentIndex > 0){
//         showLeft.style.left = "0";
//         showLeft.style.opacity = "1";
//     }
//     console.log(currentIndex);
// });

// showLeft.addEventListener("click",()=>{
//     if(currentIndex > 0){
//         moveSlide(currentIndex - 1);
//     }
//     if(currentIndex < (productIcon.length - 4)){
//         showRight.style.right = "0";
//         showRight.style.opacity = "1";
//     }
//     if(currentIndex == 0) {
//         showLeft.style.left = "-100px";
//         showLeft.style.opacity = "0";
//     }
//     console.log(currentIndex);
// });


    return(
        <div class="recommend-produt-01">
            <h2>{this.props.recommendType}</h2><p><a href="#!">더보기 <FontAwesomeIcon icon={faAngleRight} className='prd-see-more' /></a></p>
            <div class="recommend-produt-01-inner">
                
                <a id="rp01-a" href="#!" title="">
                    <div class="rp01-icon">
                        <div class="rp01-img">
                            <img src={this.props.prdImg} alt="상품보기" />
                        </div>
                        <div class="product-info">
                            <div class="product-name">{this.props.prdName}</div>
                            <div class="product-price">{this.props.prdPrice}</div>
                            <div class="product-discount-rate">{this.props.prdDisRate}</div>
                            <div class="product-discount-price">{this.props.prdDisPrice}</div>
                            <div class="cart-add-btn" title="장바구니에 추가하기">
                                <FontAwesomeIcon icon={faShoppingBasket} className="prd-to-cart" />
                            </div>
                        </div> 
                    </div>
                </a>

            </div>
        </div>
    );
}



export default RecommendProduct;