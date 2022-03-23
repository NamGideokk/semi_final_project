import { useState, useMemo, useEffect, useCallback } from "react";
import "./ProductUpload.css";
import categories from '../types/category';
import axios from 'axios';

const ProductUpload = ({ onProductAdded }) => {

    const [name, setName] = useState('');
    const [categoryValue, setCategoryValue] = useState("none");
    const [detailCategoryValue, setDetailCategoryValue] = useState();
    const [subCategoryList, setSubCategoryList] = useState();
    const [price, setPrice] = useState('');
    const [discountRate, setDiscountRate] = useState('');
    const [stockCount, setStockCount] = useState('');
    const [additionalDesc, setAdditionalDesc] = useState('');
    const [image, setImage] = useState();

    useEffect(() => {
        const subCategoryList = categories.find((v) => v.code == categoryValue)?.subCategories;
        setSubCategoryList(subCategoryList);
        setDetailCategoryValue(subCategoryList?.[0].code);
    }, [categoryValue])

    const onChangeName = useCallback((event) => {
        setName(event.target.value);
    }, []);

    const selectedCategory = useCallback((event) => {
        setCategoryValue(event.target.value);
    }, []);

    const selectedDetailCategory = useCallback((event) => {
        setDetailCategoryValue(event.target.value);
    }, []);

    const onChangePrice = useCallback((event) => {
        setPrice(event.target.value);
    }, []);

    const onChangeDiscountRate = useCallback((event) => {
        setDiscountRate(event.target.value);
    }, []);

    const onChangeStockCount = useCallback((event) => {
        setStockCount(event.target.value);
    }, []);

    const onChangeAdditionalDesc = useCallback((event) => {
        setAdditionalDesc(event.target.value);
    }, []);

    const onImageSelected = useCallback((e) => {
        e.preventDefault();
        setImage(e.target.files[0]);
    }, []);

    const clickUpload = useCallback((e) => {
        e.preventDefault();
        e.stopPropagation();

        if (name == '') {
            alert('이름을 입력해주세요');
            return;
        }

        const formData = new FormData();
        formData.set('name', name);
        formData.set('category1', categoryValue);
        formData.set('category2', detailCategoryValue);
        formData.set('additionalDesc', additionalDesc);
        formData.set('price', price);
        formData.set('discountRate', discountRate);
        formData.set('stockCount', stockCount);
        formData.set('images', image);

        axios
            .post('/api/seller/product', formData, {
                headers: {
                    'Content-Type': 'multipart/form-data',
                },
            })
            .then(() => {
                alert('품목이 추가되었습니다.');
                onProductAdded?.();
            })
            .catch((err) => {
                if (err.response) {
                    alert(err.response.data);
                } else if (err.request) {
                    alert('서버가 응답하지 않습니다.');
                } else {
                    alert('잘못된 요청입니다.');
                }
            });
    }, [name, categoryValue, detailCategoryValue, price, discountRate, stockCount, additionalDesc, image]);

    return(
        <>
        <div className="product-uplaod-wrapper">
            <div className="product-uplaod-container01">
                <div className="puc01-1">
                    <p>상품명</p>
                </div>
                <div className="puc01-2">
                    <input id="product-name" value={name} onChange={onChangeName} type="text" placeholder="상품명을 적어주세요" />
                </div>

                <div className="puc01-3">
                    <p>상품 대표 이미지</p>
                </div>
                <div className="puc01-4">
                    <input id="product-images" type="file" onChange={onImageSelected} />
                </div>

                <div className="puc01-5">
                    <p>카테고리 대분류</p>
                </div>
                <div className="puc01-6">
                    <select id="select-category1" value={categoryValue} onChange={selectedCategory}>
                        <option value='none'>카테고리를 선택하세요</option>
                        {categories.map((v) => (
                            <option value={v.code} key={v.code}>{v.name}</option>
                        ))}
                    </select>
                </div>

                {subCategoryList ?
                <>
                    <div className="puc01-7">
                        <p>소분류</p>
                    </div>
                    <div className="puc01-8">
                        <select value={detailCategoryValue} onChange={selectedDetailCategory}>
                            {subCategoryList.map((v) => (
                                <option value={v.code} key={v.code}>{v.name}</option>
                            ))}
                        </select>
                    </div>
                </>
                : null}
            </div>

            <div className="product-uplaod-container02">
                <div className="puc02-1"><p>상품 가격</p></div>
                <div className="puc02-2">
                    <input type="text" placeholder="가격을 입력하세요" value={price} onChange={onChangePrice}/>
                </div>

                <div className="puc02-3"><p>할인율</p></div>
                <div className="puc02-4">
                    <input type="number" placeholder="할인율을 입력하세요" value={discountRate} onChange={onChangeDiscountRate}/>
                </div>

                <div className="puc02-5">재고 수량</div>
                <div className="puc02-6">
                    <input type="number" placeholder="재고 수량을 입력하세요" value={stockCount} onChange={onChangeStockCount}/>
                </div>

                <div className="puc02-7"><p>부가 정보</p></div>
                <div className="puc02-8">
                    <input type="text" placeholder="예시)200g" value={additionalDesc} onChange={onChangeAdditionalDesc}/>
                </div>
            </div>

            <button onClick={clickUpload} className="upload-prd-btn">상품 올리기</button>
        </div>
        </>
    );
}

export default ProductUpload;