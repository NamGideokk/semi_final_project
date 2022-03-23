import "./PrdContBackgrd.css";
import ProductContainer from "./ProductContainer";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faAngleDoubleLeft, faAngleDoubleRight, faAngleLeft, faAngleRight, faArrowDown, faArrowUp } from "@fortawesome/free-solid-svg-icons";
import { useEffect, useRef, useState, useCallback, useMemo } from "react";
import { useSearchParams, useNavigate } from 'react-router-dom';
import axios from 'axios';
import categories from '../types/category';

// 상품 컨테이너 백그라운드 컴포넌트
// (20개씩(height: 2225px), 40개씩(height: 4450px) 60개씩 보기(height: 6675px)
const PrdContBackgrd = () => {

    const [searchParams] = useSearchParams();
    const navigate = useNavigate();

    const [productList, setProductList] = useState([]);

    const [order, setOrder] = useState('product.sellCount,desc');
    const [size, setSize] = useState(20);

    const clickPoplPrdPlt = useCallback(() => {
        setOrder('product.sellCount,desc');
    }, []);
    const clickLowPoplPrdPlt = useCallback(() => {
        setOrder('product.sellCount,asc');
    }, []);
    const clickLowprcPrdPlt = useCallback(() => {
        setOrder('product.price,asc');
    }, []);
    const clickHighprcPrdPlt = useCallback(() => {
        setOrder('product.price,desc');
    }, []);

    const prdListContainer = useRef();

    const [category1, category2, page] = useMemo(() => {
        const categoryCode = searchParams.get('category');
        const subCategoryCode = searchParams.get('subCategory');
        const queryPage = parseInt(searchParams.get('page'));
        let page = 1;
        let category = categories.find((e) => e.code == categoryCode);
        if (!category && categoryCode) {
            category = categories[0];
        }
        if (queryPage > 0) {
            page = queryPage;
        }
        return [category?.code, subCategoryCode, page];
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

    },[prdListContainer])

    useEffect(()=>{
        if(!category1) {
            return;
        }
        axios
            .get('/api/salesproduct/search',
            {params: {
                category1: category1,
                category2: category2,
                sort: order,
                size: size,
                page: page,
            }})
            .then((response) =>
                setProductList(response.data)
            )
            .catch((err) => {
                setProductList([]);
                if(!err.response) {
                    alert('서버가 응답하지 않습니다.');
                }
            });
    },[category1, category2, order, size, page]);

    const handleContainerHeight = (event) => {
        console.log("value값 : ",event.target.innerText);
        if(event.target.innerText === "20개씩"){
            setSize(20);
        } else if(event.target.innerText === "40개씩"){
            setSize(40);
        } else if(event.target.innerText === "60개씩"){
            setSize(60);
        }
    }

    const showFilterBtn = useRef();
    const [isShowFilter,setIsShowFilter] = useState(false);
    const clickShowFilter = (e) => {
        setIsShowFilter(!isShowFilter);
        showFilterBtn.current.style.color = "var(--accent-default)";
        if(isShowFilter === true){
            setIsShowFilter(!isShowFilter);
            showFilterBtn.current.style.color = "var(--font-dark)";
        }
    }

    return(
        <>
        <div className="prd-list-filter">
            <div className="left-filter">
                <span onClick={clickShowFilter} ref={showFilterBtn} className="filter-btn">
                    {isShowFilter ?
                        "필터 숨기기"
                    : "필터"}
                </span>
                {isShowFilter ?
                    <>
                        ｜
                        <span>가격순
                            <FontAwesomeIcon icon={faArrowUp} onClick={clickHighprcPrdPlt} className="high-price-icon" title="가격 높은순" />
                            <FontAwesomeIcon icon={faArrowDown} onClick={clickLowprcPrdPlt} className="low-price-icon" title="가격 낮은순" />
                        </span>
                        ｜<span>판매량순
                            <FontAwesomeIcon icon={faArrowUp} onClick={clickPoplPrdPlt} className="high-salesrate-icon" title="판매량 높은순" />
                            <FontAwesomeIcon icon={faArrowDown} onClick={clickLowPoplPrdPlt} className="low-salesrate-icon" title="판매량 낮은순" />
                        </span>｜
                    </>
                : null}
            </div>

            <div className="right-filter">
                <span onClick={handleContainerHeight}>20개씩</span>｜<span onClick={handleContainerHeight}>40개씩</span>｜<span onClick={handleContainerHeight}>60개씩</span>
            </div>
        </div>

        <div ref={prdListContainer} className="pcb">
            {productList.map((v) => (
                <ProductContainer salesProductInfo={v} key={v.id}/>
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

export default PrdContBackgrd;