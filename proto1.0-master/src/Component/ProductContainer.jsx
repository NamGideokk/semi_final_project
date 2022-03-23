import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faShoppingBasket, faStar } from '@fortawesome/free-solid-svg-icons';
import './ProductContainer.css';
import { useEffect, useRef, useState, useMemo, useCallback } from 'react';
import { useNavigate } from 'react-router-dom';

const ProductContainer = ({ salesProductInfo }) => {
  const navigate = useNavigate();

  const prdPriceStyle = useRef(null);
  const DisRate = useRef(null);

  // 할인이 있으면 true
  const [isDiscount, setIsDiscount] = useState(false);

  if (isDiscount === true) {
    prdPriceStyle.current.style.textDecoration = 'line-through';
    prdPriceStyle.current.style.color = '#888888';
  }

  useEffect(() => {
    if (DisRate.current.innerText !== "") {
      setIsDiscount(true);
    }
  }, []);

  const moveToProductPage = useCallback(() => {
    navigate(
      `/prdpg?page=${salesProductInfo.salesPageInfo.id}&prd=${salesProductInfo.id}`
    );
    window.scroll({
      top: 0
    });
  }, [salesProductInfo]);

  const [
    prdName,
    prdRating,
    prdRatingCount,
    prdPrice,
    prdDisRate,
    prdDisPrice,
    prdImage,
  ] = useMemo(() => {
    let prdName = '이름 없음';
    let prdRating = '0';
    let prdRatingCount = 0;
    let prdPrice = 0;
    let prdDisRate = 0;
    let prdDisPrice = 0;
    let prdImage = null;
    if (salesProductInfo != null) {
      prdName = salesProductInfo.productInfo.name;
      prdRating = salesProductInfo.productInfo.avgFeedbackPoint ?? 0;
      prdRatingCount = salesProductInfo.productInfo.feedbackCount;
      prdPrice = salesProductInfo.productInfo.price;
      prdDisRate = salesProductInfo.productInfo.discountRate;
      prdDisPrice = Math.round(prdPrice * ((100 - prdDisRate) / 100));
      let images = salesProductInfo.productInfo.images;
      if (images?.length) {
        prdImage = process.env.REACT_APP_BACKEND_HOST.concat(images[0]);
      }
    }
    return [
      prdName,
      prdRating,
      prdRatingCount,
      prdPrice,
      prdDisRate,
      prdDisPrice,
      prdImage,
    ];
  }, [salesProductInfo]);

  return (
    <div className='product-container' onClick={moveToProductPage}>
      <div className='product-img'>
        <img src={prdImage} alt='상품보기' />
      </div>
      <div className='product-info'>
        <div className='product-name'>{prdName}</div>
        <div className='product-rating'>
          <FontAwesomeIcon icon={faStar} className='prd-rating' />
          {Math.round(prdRating * 10)/10.0}점{' '}
          <small className='review-count'>({prdRatingCount}건)</small>
        </div>
        <div ref={prdPriceStyle} className='product-price'>
          {prdPrice} 원
        </div>
        <div ref={DisRate} className='product-discount-rate'>
          {prdDisRate > 0 ? 
            prdDisRate + " %"
          : ""}
        </div>
        <div className='product-discount-price'>
          {prdDisRate > 0 ? 
            prdDisPrice + " 원"
          : null}
        </div>
        <div className='cart-add-btn' title='장바구니에 추가하기'>
          <FontAwesomeIcon icon={faShoppingBasket} className='prd-to-cart' />
        </div>
      </div>
    </div>
  );
};

export default ProductContainer;
