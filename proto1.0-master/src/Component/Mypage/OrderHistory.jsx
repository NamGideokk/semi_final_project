import './OrderHistory.css';
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faAngleDoubleLeft, faAngleDoubleRight, faAngleLeft, faAngleRight } from "@fortawesome/free-solid-svg-icons";
import { useEffect, useState, useCallback, useMemo } from "react";
import { useSearchParams, useNavigate } from 'react-router-dom';
import axios from 'axios';
import OrderHistoryItem from '../Order/OrderHistoryItem';

const OrderHistory = () => {

    const [searchParams] = useSearchParams();
    const navigate = useNavigate();

    const [orderList, setOrderList] = useState([]);

    const page = useMemo(() => {
        const queryPage = parseInt(searchParams.get('page'));
        let page = 1;
        if (queryPage > 0) {
            page = queryPage;
        }
        return page;
    }, [searchParams]);

    const startPageNum = useMemo(() => {
        if(page < 1) {
            return 1;
        }
        return page - ((page - 1) % 10);
    }, [page]);

    const changePage = useCallback((pageNum) => {
        if (pageNum < 1) {
            pageNum = 1;
        }
        searchParams.set('page', pageNum);
        navigate({
            search: searchParams.toString(),
        });
    }, []);

    useEffect(()=>{
        if(!page) {
            return;
        }
        axios
            .get('/api/consumer/showOrder',
            {params: {
                size: 20,
                page: page,
            }})
            .then((response) =>
                setOrderList(response.data)
            )
            .catch((err) => {
                setOrderList([]);
                if (err.response) {
                    alert(err.response.data);
                } else if (err.request) {
                    alert('서버가 응답하지 않습니다.');
                } else {
                    alert('잘못된 요청입니다.');
                }
            });
    },[page]);

    const onChangeOrderInfo = useCallback((orderInfo) => {
        setOrderList(orderList.map(v => {
            if(v.id == orderInfo.id) {
                return orderInfo;
            }
            return v;
        }));
    }, [orderList]);

    return(
        <>
        <div className="pcb">
            {orderList.map((v) => (
                <OrderHistoryItem orderInfo={v} onChangeOnderInfo={onChangeOrderInfo} key={v.id}/>
            ))}
        </div>

        <div className="prd-paging">
            <a className='pageNum'><div className="dddddd">
                <FontAwesomeIcon icon={faAngleDoubleLeft} className="to-left-end" onClick={() => changePage(1)} />
            </div></a>
            <a className='pageNum'><div className="dddddd">
                <FontAwesomeIcon icon={faAngleLeft} className="to-left" onClick={() => changePage(startPageNum - 1)} />
            </div></a>
            {[...Array(10)].map((e, i) => {
                const num = startPageNum + i;
                return (
                    <a className={'pageNum' + (num == page ? ' selected' : '')} key={i}
                        onClick={() => changePage(num)}
                    ><div className="dddddd">
                        {num}
                    </div></a>
                );
            })}
            <a className='pageNum'><div className="dddddd">
                <FontAwesomeIcon icon={faAngleRight} className="to-right" onClick={() => changePage(startPageNum + 10)} />
            </div></a>
            <a className='pageNum'><div className="dddddd">
                <FontAwesomeIcon icon={faAngleDoubleRight} className="to-left-end" />
            </div></a>
        </div>
        </>
    );
}

export default OrderHistory;