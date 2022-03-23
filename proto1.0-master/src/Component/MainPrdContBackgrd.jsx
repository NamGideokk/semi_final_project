import ProductContainer from "./ProductContainer"
import "./MainPrdContBackgrd.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faAngleLeft, faAngleRight } from "@fortawesome/free-solid-svg-icons";
import { useEffect, useRef, useState } from "react";
import axios from 'axios';

// 메인페이지에서 노출할 한줄짜리 상품 리스트
const MainPrdContBackgrd = ({title="타이틀", sort}) => {

    const [productList, setProductList] = useState([]);
    const [translateX, setTranslateX] = useState(0);
    const container = useRef(null);
    const clickBtn = (e) => {
        if(e.target.className === "left-btn"){
            console.log("왼쪽 이동");
            setTranslateX((translateX) + 275);
            container.current.style.transform = `translate(${translateX}px)`;
            if(translateX === 0){
                setTranslateX(0);
            }
        } else if(e.target.className === "right-btn"){
            console.log("오른쪽 이동");
            setTranslateX(translateX - 275);
            container.current.style.transform = `translate(${translateX}px)`;
        }
    }

    useEffect(()=>{
        container.current.style.transform = `translate(${translateX}px`;
    },[translateX])

    useEffect(()=>{
        axios
            .get('/api/salesproduct/search',
            {params: {
                sort: sort,
                size: 4,
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
    },[]);

    return(
        <>
            <div className="container-title"><h2>{title}<button>더보기 ＞</button></h2></div>
            <div className="pcb-container">
                <div className="pcb" ref={container}>
                    {productList.map((v) => (
                        <ProductContainer salesProductInfo={v} key={v.id}/>
                    ))}
                </div>
            </div>
            <div className="btn-container">
                <div className="left-btn" onClick={clickBtn}>
                    <FontAwesomeIcon icon={faAngleLeft} className="left-icon" />
                </div>
                <div className="right-btn" onClick={clickBtn}>
                    <FontAwesomeIcon icon={faAngleRight} className="right-icon" />
                </div>
            </div>
        </>
    )
}

export default MainPrdContBackgrd;