import './ProductOrderItem.css';

import { useMemo } from "react";

const ProductOrderItem = ({ salesProductInfo, qty = 0 }) => {

  const [
    prdName,
    prdImage,
  ] = useMemo(() => {
    let prdName = '이름 없음';
    let prdImage = null;
    if (salesProductInfo) {
      prdName = salesProductInfo.productInfo.name;
      let images = salesProductInfo.productInfo.images;
      if (images?.length) {
        prdImage = process.env.REACT_APP_BACKEND_HOST.concat(images[0]);
      }
    }
    return [
      prdName,
      prdImage,
    ];
  }, [salesProductInfo]);

  const totalPrice = useMemo(() => {
    let prdDisPrice = 0;
    if (salesProductInfo) {
      let prdPrice = salesProductInfo.productInfo.price;
      let prdDisRate = salesProductInfo.productInfo.discountRate;
      prdDisPrice = prdPrice * ((100 - prdDisRate) / 100);
    }
    return Math.round(prdDisPrice) * qty;
  }, [salesProductInfo, qty]);

  return (
    <div className='purchase-product-container'>
      <div className='ppc1'>
        <div className='ppc1-img-container'>
          <img src={prdImage} alt={prdName} />
        </div>
      </div>
      <div className='ppc2'>
        <p title='상품명'>{prdName}</p>
      </div>
      <div className='ppc3'>
        <p title='구매 수량'>{qty}개</p>
      </div>
      <div className='ppc4'>
        <p title='총 금액'>{totalPrice}원</p>
      </div>
    </div>
  );
};

export default ProductOrderItem;
