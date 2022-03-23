import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import "./ProductCategory.css";
import { useMemo } from 'react';
import { Link } from "react-router-dom";
import { useSearchParams } from 'react-router-dom';
import categories from '../types/category';

// 식품 카테고리
const ProductCategory = () => {
    // let yValue = window.scroll;
    // console.log(yValue);

    // 카테고리 애니메이션
    // const scrollAnimation = (event) => {
    //     window.addEventListener("scroll", ()=>{

    //         if(yValue > 640) {
    //             event.style.animation = "move 0.5s cubic-bezier(.95,-1.06,.11,1.62)";
    //         } else{
    //             event.style.animation = "";
    //         }
    //     });
    // };

    /////////////////////////////////////////////////////////

    const [searchParams] = useSearchParams();

    const categoryCode = useMemo(() => {
        const categoryCode = searchParams.get('category');
        let category = categories.find((e) => e.code == categoryCode);
        if (!category && categoryCode) {
            category = categories[0];
        }
        return category?.code;
    }, [searchParams]);

    const clickCategory = (e) => {
        window.scroll({
            top: 620,
            behavior: "smooth"
        })
    }

    return(
        <>
        <div className="category">
            <div className="category-inner">
                <div className="category-inner-01 selected">
                    {categories.slice(0,6).map((v) => (
                        <Link
                            to={`/mainProducts?category=${v.code}`}
                            key={v.code}
                        >
                            <div onClick={clickCategory} className={categoryCode == v.code ? 'selected' : ''}>
                                <FontAwesomeIcon className='categoryIcon' icon={v.icon} />
                                <p>{v.name}</p>
                            </div>
                        </Link>
                    ))}
                </div>

                <div className="category-inner-02">
                    {categories.slice(6).map((v) => (
                        <Link
                            to={`/mainProducts?category=${v.code}`}
                            key={v.code}
                        >
                            <div onClick={clickCategory} className={categoryCode == v.code ? 'selected' : ''}>
                                <FontAwesomeIcon className='categoryIcon' icon={v.icon} />
                                <p>{v.name}</p>
                            </div>
                        </Link>
                    ))}
                </div>
            </div>
        </div>
        </>
    );
}

export default ProductCategory;