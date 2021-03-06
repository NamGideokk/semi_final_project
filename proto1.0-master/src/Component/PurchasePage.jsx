import "./PurchasePage.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faCoins, faTicketAlt, faTimes } from "@fortawesome/free-solid-svg-icons";
import { useEffect, useRef, useState, useMemo, useCallback } from "react";
import ProductOrderItem from './Order/ProductOrderItem';
import { useSearchParams, useNavigate } from 'react-router-dom';
import { useSelector } from 'react-redux';
import axios from 'axios';
import qs from 'qs';

const PurchasePage = () => {

    const navigate = useNavigate();
    const [searchParams] = useSearchParams();

    const userInfo = useSelector((state) => state.user.userInfo);
    const location = useSelector((state) => state.user.location);

    const [productList, setProductList] = useState([]);

    const [purchaseType, purchaseInfo] = useMemo(() => {
        let purchaseType = searchParams.get('type');
        const cartIds = searchParams.getAll('cartIds');
        const prdId = searchParams.get('prdId');
        const qty = searchParams.get('qty');

        let purchaseInfo = {};
        if (purchaseType=='cart') {
            purchaseInfo = {
                cartIds
            };
        } else {
            purchaseType = 'direct';
            purchaseInfo = {
                prdId, qty,
            }
        }
        return [purchaseType, purchaseInfo];;
    }, [searchParams]);

    const totalPrice = useMemo(() => {
        return productList.reduce((acc, v) => {
            const price = v.productInfo.productInfo.price;
            const discount = v.productInfo.productInfo.discountRate;
            const discoutPrice = Math.round(price * ((100 - discount) / 100));
            return acc + (discoutPrice * v.qty);
        }, 0);
    }, [productList]);

    useEffect(async () => {
        if(!purchaseType) {
            return;
        }

        try {
            if(purchaseType == 'cart') {
                const cartIds = purchaseInfo.cartIds;

                if(!cartIds || cartIds.length == 0) {
                    throw '';
                }

                const requests = [];
                const productList = [];
                cartIds.forEach(cartId => {
                    requests.push(
                        axios.get(`/api/consumer/cart/${cartId}`)
                        .then(response => productList.push(
                            {
                                productInfo: response.data.salesProductInfo,
                                qty: response.data.qty
                            }))
                    );
                });
                await Promise.all(requests);

                setProductList(productList);
            } else {
                if(!purchaseInfo.prdId || !purchaseInfo.qty) {
                    throw '';
                }
                const response = await axios.get(`/api/salesproduct/${purchaseInfo.prdId}`);
                setProductList([{ productInfo: response.data, qty: purchaseInfo.qty }]);
            }
        } catch (err) {
            if(err.response) {
                alert(err.response.data);
            } else if (err.request) {
                alert('????????? ???????????? ????????????.');
            } else {
                alert('????????? ???????????????.');
            }
            navigate(-1);
        }
    }, [purchaseType, purchaseInfo]);

    const clickPayment = useCallback(async() => {
        try {
            if(purchaseType == 'cart') {
                const cartIds = purchaseInfo.cartIds;

                if(!cartIds || cartIds.length == 0) {
                    throw '';
                }

                await axios.post(`/api/consumer/order/createOrderList`, qs.stringify({
                    cartId: cartIds,
                    receiverName: userInfo?.name,
                    receiverContact: userInfo?.contact,
                    receiverComment: '',
                    paymentMethod: 0,
                    paymentDetailsJson: '{}',
                }));
            } else {
                if(!purchaseInfo.prdId || !purchaseInfo.qty) {
                    throw '';
                }
                await axios.post(`/api/consumer/order/createOrder`, qs.stringify({
                    salesProductId: purchaseInfo.prdId,
                    qty: purchaseInfo.qty,
                    receiverName: userInfo?.name,
                    receiverContact: userInfo?.contact,
                    receiverComment: '',
                    paymentMethod: 0,
                    paymentDetailsJson: '{}',
                }));
            }
            navigate('/myInfo/orders');
        } catch (err) {
            if(err.response) {
                alert(err.response.data);
            } else if (err.request) {
                alert('????????? ???????????? ????????????.');
            } else {
                alert('????????? ???????????????.');
            }
        }
    }, [purchaseType, purchaseInfo]);

    // ?????? ?????? ?????? ?????????
    const clickNotReady = (e) => {
        alert("????????? ??????????????????.");
    }

    const pickupCheckbox = useRef();
    const clickDelivery = (e) => {
        alert("????????? ??????????????????.");
        pickupCheckbox.current.checked = "false";
    }


    const clickTab01 = (e) => {
        tab01.current.style.minHeight = "0";
        tab01.current.style.maxHeight = "0";
    }

    const tab01 = useRef(null);

    return(
        <>
        <div className="purchase-page-container">
            <h1>?????????</h1>

            <div className="purchase-product-title" onClick={clickTab01}>
                <p>?????? ??????</p>
            </div>

            {/* ?????? ?????? ???????????? grid */}
            <div className="purchase-product-wrapper" ref={tab01}>
                {productList.map(v => (
                    <ProductOrderItem salesProductInfo={v.productInfo} qty={v.qty} key={v.productInfo.id}/>
                ))}
            </div>

            {/* ????????? ?????? */}
            <div className="purchase-user-info-title">
                <p>????????? ??????</p>
            </div>
            <div className="purchase-user-info-wrapper">
                <div className="purchase-user-info-container">
                    <div className="puic01">
                        <p>?????????</p>
                    </div>
                    <div className="puic1">
                        <p>{userInfo?.name}</p>
                    </div>
                    <div className="puic02">
                        <p>?????????</p>
                    </div>
                    <div className="puic2">
                        <p>{userInfo?.contact}</p>
                    </div>
                    <div className="puic03">
                        <p>?????????</p>
                    </div>
                    <div className="puic3">
                        <p>{location}</p>
                    </div>
                </div>
            </div>

            {/* ?????? ?????? */}
            <div className="delivery-method-title">
                <p>?????? ??????</p>
            </div>
            <div className="delivery-method-container">
                <div className="dmc1">
                    <input type="radio" id="dmc-delivery" name="dm" onClick={clickDelivery} /><label htmlFor="dmc-delivery">??????</label>
                </div>
                <div className="dmc2">
                    <input ref={pickupCheckbox} type="radio" id="dmc-pickup" name="dm" /><label htmlFor="dmc-pickup">??????</label>
                </div>
            </div>

            {/* ??????/?????? */}
            <div className="coupon-point-title">
                <p>?????? / ?????????</p>
            </div>
            <div className="coupon-point-wrapper">
                <div className="coupon-point-container">
                    <div className="cpc1">
                        <p>
                            <FontAwesomeIcon icon={faTicketAlt} className="coupon-icon" /><br/>
                            ?????? ???????????? ??????????????????.</p>
                    </div>
                    <div className="cpc2">
                        <p>
                            <FontAwesomeIcon icon={faCoins} className="point-icon" /><br/>
                            ????????? ?????? ???????????? ??????????????????.</p>
                    </div>
                </div>
            </div>

            {/* ?????? ?????? */}
            <div className="purchase-method-title">
                <p>?????? ??????</p>
            </div>
            <div className="purchase-method-wrapper">
                <div className="purchase-method-container">
                    <div className="pmc01">
                        <div className="pmc01-box" onClick={clickNotReady}>
                            <p>????????????</p>
                        </div>
                    </div>
                    <div className="pmc02">
                        <div className="pmc02-box" onClick={clickNotReady}>
                            <p>???????????????</p>
                        </div>
                    </div>
                    <div className="pmc03">
                        <div className="pmc03-box" onClick={clickNotReady}>
                            <p>???????????????</p>
                        </div>
                    </div>
                    <div className="pmc04">
                        <div className="pmc04-box" onClick={clickNotReady}>
                            <p>???????????????</p>
                        </div>
                    </div>
                    <div className="pmc05">
                        <div className="pmc05-box" onClick={clickNotReady}>
                            <p>??????</p>
                        </div>
                    </div>
                </div>
            </div>

            <input type="checkbox" id="agree-to-purchase"></input>
            <label id="agree-to-purchase-label" htmlFor="agree-to-purchase">????????? ????????? ?????? ????????? ???????????????, ??????????????? ???????????????.</label><br/>
            <button className="ppp-btn" onClick={clickPayment}>{totalPrice}??? ????????????</button>

        </div>
        </>
    )
}

export default PurchasePage;