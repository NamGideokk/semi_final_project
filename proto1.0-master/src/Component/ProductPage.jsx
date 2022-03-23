import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import "./ProductPage.css";
import { faCoins, faMinus, faPlus, faStar, faUserCircle } from "@fortawesome/free-solid-svg-icons";
import { faCommentDots, faCreditCard, faHeart, faThumbsUp, faStar as regFaStar } from "@fortawesome/free-regular-svg-icons";
import { useEffect, useRef, useState, useMemo } from "react";
import { Link } from "react-router-dom";
import axios from 'axios';
import categories from '../types/category';
import { useSearchParams, useNavigate } from 'react-router-dom';
import qs from 'qs';

import ProductPageReviews from './Review/ProductPageReviews';


// 상품 상세 페이지 path="/sc1"
const ProductPage = () => {

    const [searchParams] = useSearchParams();
    const navigate = useNavigate();

    const [purchaseQuantity, setPurchaseQuantity] = useState(1); // 구매 수량
    const [prdTotalPrice, setPrdTotalPrice] = useState(0); // 총 금액
    const [pageInfo, setPageInfo] = useState();
    const [selectedProduct, setSelectedProduct] = useState();

    const [images, category1, category2, reviewPoint, reviewCount, price, disCountPrice, discountRate] = useMemo(() => {
        if(selectedProduct == null) {
            return [[]];
        }
        const product = selectedProduct.product;

        let images = [];
        let category1 = '알수없는 카테고리';
        let category2 = '알수없는 카테고리';
        let reviewPoint = 0;
        let reviewCount = 0;
        let price = 0;
        let disCountPrice = 0;
        let discountRate = 0;

        if(product.images?.length > 0) {
            images = product.images;
        }

        const category = categories.find((v) => v.code == product.category1);
        if(category) {
            category1 = category.name;
            const subCategory = category.subCategories.find(v => v.code == product.category2);
            if(subCategory) {
                category2 = subCategory.name;
            }
        }

        if(product.avgFeedbackPoint) {
            reviewPoint = product.avgFeedbackPoint;
        }
        if(product.feedbackCount) {
            reviewCount = product.feedbackCount;
        }
        if(product.price) {
            price = product.price;
            disCountPrice = price;
        }
        if(product.discountRate) {
            disCountPrice = price * ((100 - product.discountRate) / 100);
            discountRate = product.discountRate;
        }

        return [images, category1, category2, reviewPoint, reviewCount, price, disCountPrice, discountRate];
    }, [selectedProduct]);

    useEffect(() => {
        const pageId = searchParams.get('page');
        const productId = searchParams.get('prd');

        axios.get(`/api/salespage/${pageId}`)
            .then((response) => {
                setPageInfo(response.data);
                let findProduct = response.data.salesProductList.find(v => v.id == productId);
                if(findProduct) {
                    setSelectedProduct(findProduct);
                } else {
                    setSelectedProduct(response.data.salesProductList[0]);
                }
            })
            .catch((err) => {
                if (!err.response) {
                    alert('서버가 응답하지 않습니다.');
                } else {
                    alert('잘못된 요청입니다.');
                }
                navigate(-1);
            });
    }, [searchParams]);

    const onChangePurchaseQuantity = (event) => {
        setPurchaseQuantity(event.target.value);
    }

    const clickMinus = () => {
        setPurchaseQuantity((current) => current-1);
        if(purchaseQuantity <= 1){
            setPurchaseQuantity(1);
        }
    }
    const clickPlus = () => {
            setPurchaseQuantity((current) => current+1);
        if(purchaseQuantity >= 20){
            alert("20개 이상 구매하실수 없습니다.");
            setPurchaseQuantity(20);
        }
    }

    const pgPrdPriceStyle = useRef(null);
    const pgDisRate = useRef(null);

    // 할인이 있으면 true
    const [isDiscount, setIsDiscount] = useState(false);

    if (isDiscount === true) {
        pgPrdPriceStyle.current.style.textDecoration = 'line-through';
        pgPrdPriceStyle.current.style.color = '#888888';
    }

    useEffect(() => {
        if (pgDisRate.current.innerText !== '') {
          setIsDiscount(true);
        }
    }, []);


    // 장바구니 담기 버튼
    const [alertCart, setAlertCart] = useState(false);

    // 장바구니 담기 버튼 클릭
    const clickPutInCart = (e) => {
        axios.post('/api/consumer/addCart', qs.stringify({
            id: selectedProduct.id,
            count: purchaseQuantity,
        }))
        .then((response) => {
            if(response.data) {
                setAlertCart(!alertCart);
            } else {
                alert('재고가 부족합니다.');
            }
        })
        .catch(() => alert('요청이 실패했습니다.'));
    }

    // 계속 쇼핑하기 버튼 클릭
    const clickModalclose = (e) => {
        setAlertCart(!alertCart);
    }

    useEffect(()=>{
        console.log(alertCart);
    },[alertCart])

    // 이동할 각 탭div
    const prdinfoSectionTop = useRef();
    const reviewSectionTop = useRef();
    const returnSectionTop = useRef();
    // 탭 클릭시 해당 y값으로 이동
    const handleScrollY = (event) =>{
        if(event.target.innerText === "상세정보"){
            window.scroll({
                top: prdinfoSectionTop.current.offsetTop - 89,
                behavior: "smooth"
            })
        } else if(event.target.innerText === "리뷰"){
            window.scroll({
                top: reviewSectionTop.current.offsetTop - 89,
                behavior: "smooth"
            })
        } else if(event.target.innerText === "교환/반품 안내"){
            window.scroll({
                top: returnSectionTop.current.offsetTop - 89,
                behavior: "smooth"
            })
        }
    }

    // 할인율 있을때 총 금액 재계산 추가 필요
    useEffect(() => {
      // 구매수량 변할때 마다 총 금액 재계산
      setPrdTotalPrice(Math.round(purchaseQuantity * disCountPrice));
    }, [purchaseQuantity, disCountPrice]);



    return(
        <>
        <div className="product-info-container">
            <div className="pg-img">
                <div className="pg-img-container">
                    {images.map((v,i) => (
                        <img src={process.env.REACT_APP_BACKEND_HOST.concat(v)} key={i} alt="상품" />
                    ))}
                </div>
            </div>
            <div className="pg-img-list"></div>
            <div className="pg-category"><div>카테고리</div>{category1} ＞ {category2}</div>
            <div className="pg-favo"><FontAwesomeIcon icon={faHeart} className="prd-favo" title="상품 찜하기"/></div>
            <div className="pg-mart-favo"></div>
            <div className="pg-mart-name"><div>판매마트</div>{pageInfo?.seller.name}</div>
            <div className="pg-prd-name">{selectedProduct?.product.name}</div>
            <div className="pg-rating"><div>상품평점</div><FontAwesomeIcon icon={faStar} className="pg-prd-rating" /> {Math.round(reviewPoint * 10)/10.0}점 ({reviewCount}개)</div>
            <div className="pg-delivery">
                <div>배송방법</div>
                <select id="deli-method" name="deli-method">
                    <option value="none">배송 방법</option>
                    <option value="pickup">픽업 무료</option>
                </select>
            </div>
            <div className="pg-prd-weight"><div>부가정보</div>{selectedProduct?.product.additionalDesc}</div>
            <div className="pg-prd-price-div"><div>상품가격</div></div>
            <div className="pg-prd-price" ref={pgPrdPriceStyle}>
                {discountRate === 0 ?
                 null
                 : price +"원"}
            </div>
            <div className="pg-discount-price">{Math.round(disCountPrice)}원</div>

            <div ref={pgDisRate} className="pg-discount-rate">
                {discountRate === 0 ?
                    null:
                discountRate +"%"}
            </div>

            <div className="pg-prd-amount">
                <span onClick={clickMinus}><FontAwesomeIcon icon={faMinus} className="amount-minus" /></span>
                <input value={purchaseQuantity} onChange={onChangePurchaseQuantity} type="number" placeholder="수량" />
                <span onClick={clickPlus}><FontAwesomeIcon icon={faPlus} className="amont-plus" /></span>
            </div>
            <div className="pg-total-price"><small>총</small> {prdTotalPrice}원</div>
            <div className="pg-to-cart">
                <button onClick={clickPutInCart}>장바구니 담기</button>
            </div>
            <div className="pg-purchase">
                <Link to={`/payment?prdId=${selectedProduct?.id}&qty=${purchaseQuantity}`}><button>바로 구매하기</button></Link>
            </div>
        </div>

        {/* 페이지 탭 */}
        <div className="pg-tabs">
            <div onClick={handleScrollY} className="detail-tab">상세정보</div>
            <div onClick={handleScrollY} className="review-tab">리뷰</div>
            <div onClick={handleScrollY} className="return-tab">교환/반품 안내</div>
        </div>

        {/* 상세정보 섹션 이미지 */}
        <div className="pg-detail-img-container" ref={prdinfoSectionTop}>
            <div dangerouslySetInnerHTML={{ __html: pageInfo?.content }}></div>
        </div>

        {/* 리뷰 섹션 */}
        <div className="review-title" ref={reviewSectionTop}>
            리뷰
        </div>
        <div className="reviews-rating-average-container">
            <div className="rrac-1"><p>{pageInfo?.totalFeedbackCount}건</p></div>
            <div className="rrac-2">

                {pageInfo?.avgFeedbackPoint === null || pageInfo?.avgFeedbackPoint === 0 ?
                <>
                <FontAwesomeIcon icon={regFaStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={regFaStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={regFaStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={regFaStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={regFaStar} className="rating-average-icon" />
                </>
                : null}

                {pageInfo?.avgFeedbackPoint >= 1 && pageInfo?.avgFeedbackPoint < 2 ?
                <>
                <FontAwesomeIcon icon={faStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={regFaStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={regFaStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={regFaStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={regFaStar} className="rating-average-icon" />
                </>
                : null}

                {pageInfo?.avgFeedbackPoint >= 2 && pageInfo?.avgFeedbackPoint < 3 ?
                <>
                <FontAwesomeIcon icon={faStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={faStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={regFaStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={regFaStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={regFaStar} className="rating-average-icon" />
                </>
                : null}

                {pageInfo?.avgFeedbackPoint >= 3 && pageInfo?.avgFeedbackPoint < 4 ?
                <>
                <FontAwesomeIcon icon={faStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={faStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={faStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={regFaStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={regFaStar} className="rating-average-icon" />
                </>
                : null}

                {pageInfo?.avgFeedbackPoint >= 4 && pageInfo?.avgFeedbackPoint < 5 ?
                <>
                <FontAwesomeIcon icon={faStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={faStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={faStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={faStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={regFaStar} className="rating-average-icon" />
                </>
                : null}

                {pageInfo?.avgFeedbackPoint === 5 ?
                <>
                <FontAwesomeIcon icon={faStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={faStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={faStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={faStar} className="rating-average-icon" />
                <FontAwesomeIcon icon={faStar} className="rating-average-icon" />
                </>
                : null}

            </div>
            <div className="rrac-3"><p>{Math.round((pageInfo?.avgFeedbackPoint ?? 0) * 10) / 10.0} / 5</p></div>
        </div>

        {/* 리뷰글 목록 래퍼 */}
        <div className="review-list-wrapper">
            <div className="review-list-title">
                <h3>구매 리뷰보기</h3>
            </div>
            <ProductPageReviews />
        </div>


        {/* 교환/반품 안내 섹션 */}
        <div className="return-title" ref={returnSectionTop}>
            교환/반품 안내
        </div>

        {/* 판매자 정보 */}
        <div className="return-container">
            <div className="seller-info-container">
                <div className="seller1"><h3>판매자 정보</h3></div>
                <div className="seller2">업체명</div>
                <div className="seller3">{pageInfo?.seller.name}</div>
                <div className="seller4">사업자번호</div>
                <div className="seller5">{pageInfo?.seller.companyCode}</div>
                <div className="seller6">연락처</div>
                <div className="seller7">{pageInfo?.seller.contact}</div>
                <div className="seller8">사업장 소재지</div>
                <div className="seller9">{pageInfo?.seller.address1}</div>
            </div>

            {/* 교환/반품 규정 안내 */}
            <div className="return-info-container">
                <div className="return1"><h3>교환/반품 규정 안내</h3></div>
                <div className="return2">상품에 문제가 있는 경우</div>
                <div className="return3">
                    받으신 상품이 표시·광고 내용 또는 계약 내용과 다른 경우에는 상품을 받은 날부터
                    3개월 이내, 그 사실을 알게 된 날부터 30일 이내에 교환 및 환불을 요청하실 수 있습니다.
                    상품의 정확한 상태를 확인할 수 있도록 사진을 함께 보내주시면 더 빠른 상담이 가능합니다.<br/><br/>

                    ※ 상품에 문제가 있는 것으로 확인되면 배송비는 픽미업이 부담합니다.
                </div>
                <div className="return4">단순 변심, 주문 착오의 경우</div>
                <div className="return5">
                    신선 / 냉장 / 냉동 식품<br/>
                    재판매가 불가한 상품의 특성상, 단순 변심, 주문 착오 시 교환 및 반품이 어려운 점
                    양해 부탁드립니다. 상품에 따라 조금씩 맛이 다를 수 있으며, 개인의 기호에 따라 같은 상품도
                    다르게 느끼실 수 있습니다.<br/><br/>
                    유통기한 30일 이상 식품 (신선/냉장/냉동 제외) ＆ 기타상품<br/>
                    상품을 받은 날부터 7일 이내에 고객센터로 문의해주세요.<br/><br/>
                    ※ 단순 변심으로 인한 교환 또는 환불의 경우 고객님께서 배송비 6,000원을 부담하셔야 합니다.<br/>
                    (주문 건 배송비를 결제하셨을 경우 3,000원)

                </div>
                <div className="return6">교환/반품이 불가한 경우</div>
                <div className="return7">
                    다음에 해당하는 교환·환불 신청은 처리가 어려울 수 있으니 양해 부탁드립니다.<br/><br/>
                    · 고객님의 책임 있는 사유로 상품이 멸실되거나 훼손된 경우<br/>
                    　(단, 상품의 내용을 확인하기 위해 포장 등을 훼손한 경우는 제외)<br/>
                    · 고객님의 사용 또는 일부 소비로 상품의 가치가 감소한 경우<br/>
                    · 시간이 지나 다시 판매하기 곤란할 정도로 상품의 가치가 감소한 경우<br/>
                    · 복제가 가능한 상품의 포장이 훼손된 경우<br/>
                    · 고객님의 주문에 따라 개별적으로 생산되는 상품의 제작이 이미 진행된 경우
                </div>
            </div>

            <div className="cancel-info-container">
                <div className="cancel1"><h3>주문 취소 안내</h3></div>
                <div className="cancel2">취소 가능한 경우</div>
                <div className="cancel3">
                    · [배송준비중] 이전까지 주문 취소 가능합니다.<br/>
                    · [주문내역 상세페이지] 에서 직접 취소하실 수 있습니다.<br/>
                </div>
                <div className="cancel4">취소 불가한 경우</div>
                <div className="cancel5">
                    · [배송준비중] 부터는 취소가 불가하니, 반품으로 진행해주세요.<br/>
                    　(상품에 따라 반품이 불가할 수 있습니다.)<br/>
                    · 주문마감 시간에 임박할수록 취소 가능 시간이 짧아질 수 있습니다.<br/>
                    · 주문상품의 부분취소는 불가능합니다. 전체 주문 취소 후 다시 구매 해주세요.
                </div>
            </div>
        </div>

        {alertCart ?
            <div className="cart-modal-wrapper">
                <div className="cart-modal-container">
                    <div className="cmc1">
                        <p>장바구니에 상품을 담았습니다.</p>
                    </div>
                    <div className="cmc2">
                        <button className="cmc2-btn-cart" onClick={()=>{
                            navigate('/myInfo/cart');
                        }}>장바구니 가기</button>
                        <button className="cmc2-btn-contin" onClick={clickModalclose}>쇼핑 계속하기</button>
                    </div>
                </div>
            </div>
        : null}

        </>
    );
}

export default ProductPage;