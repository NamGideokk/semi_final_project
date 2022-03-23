import { useEffect, useState, useCallback, useMemo } from 'react';
import { useSearchParams, useNavigate } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import {
  faAngleDoubleLeft,
  faAngleDoubleRight,
  faAngleLeft,
  faAngleRight,
  faTimes,
} from '@fortawesome/free-solid-svg-icons';
import axios from 'axios';
import ProductItem from './Product/ProductItem';

import '../Component/CustomerCenter/CustomerCenter.css';
import '../Component/CustomerCenter/CustomerCenter2.css';

import ProductUpload from './ProductUpload';

const SellerPrd = () => {
  const [searchParams] = useSearchParams();
  const navigate = useNavigate();

  const [productList, setProductList] = useState([]);
  const [showPrdUpload, setShowPrdUpload] = useState(false);
  const [refreshFlag, setRefreshFlag] = useState(false);

  const page = useMemo(() => {
    const queryPage = parseInt(searchParams.get('page'));
    let page = 1;
    if (queryPage > 0) {
      page = queryPage;
    }
    return page;
  }, [searchParams]);

  const startPageNum = useMemo(() => {
    if (page < 1) {
      return 1;
    }
    return page - ((page - 1) % 10);
  }, [page]);

  const changePage = useCallback(
    (pageNum) => {
      if (pageNum < 1) {
        pageNum = 1;
      }
      searchParams.set('page', pageNum);
      navigate({
        search: searchParams.toString(),
      });
    },
    [searchParams]
  );

  useEffect(() => {
    if (!page) {
      return;
    }
    axios
      .get('/api/seller/product/search', {
        params: {
          size: 20,
          page: page,
          sort: 'id,desc',
        },
      })
      .then((response) => setProductList(response.data))
      .catch((err) => {
        setProductList([]);
        if (err.response) {
          alert(err.response.data);
        } else if (err.request) {
          alert('서버가 응답하지 않습니다.');
        } else {
          alert('잘못된 요청입니다.');
        }
      });
  }, [page, refreshFlag]);

  const clickPrdUpload = useCallback(() => {
    setShowPrdUpload(true);
  }, []);

  const onProductAdded = useCallback(() => {
    setShowPrdUpload(false);
    setRefreshFlag(!refreshFlag);
  }, [refreshFlag]);

  const onProductRemoved = useCallback(() => {
    setRefreshFlag(!refreshFlag);
  }, [refreshFlag])

  const onRegisteredSalesPage = useCallback(() => {
    setRefreshFlag(!refreshFlag);
  }, [refreshFlag]);

  return (
    <>
      <article>
        <table>
          <thead>
            <tr>
              <th>번호</th>
              <th>상품명</th>
              <th>재고</th>
              <th>날짜</th>
              <th>상태</th>
              <th>삭제</th>
            </tr>
          </thead>
          <tbody>
            {productList.map((v) => (
              <ProductItem productInfo={v} onProductRemoved={onProductRemoved} onRegisteredSalesPage={onRegisteredSalesPage} key={v.id} />
            ))}
          </tbody>
        </table>
      </article>

      <div className='prd-paging'>
        <a className='pageNum'>
          <div className='dddddd'>
            <FontAwesomeIcon
              icon={faAngleDoubleLeft}
              className='to-left-end'
              onClick={() => changePage(1)}
            />
          </div>
        </a>
        <a className='pageNum'>
          <div className='dddddd'>
            <FontAwesomeIcon
              icon={faAngleLeft}
              className='to-left'
              onClick={() => changePage(startPageNum - 1)}
            />
          </div>
        </a>
        {[...Array(10)].map((e, i) => {
          const num = startPageNum + i;
          return (
            <a
              className={'pageNum' + (num == page ? ' selected' : '')}
              key={i}
              onClick={() => changePage(num)}
            >
              <div className='dddddd'>{num}</div>
            </a>
          );
        })}
        <a className='pageNum'>
          <div className='dddddd'>
            <FontAwesomeIcon
              icon={faAngleRight}
              className='to-right'
              onClick={() => changePage(startPageNum + 10)}
            />
          </div>
        </a>
        <a className='pageNum'>
          <div className='dddddd'>
            <FontAwesomeIcon
              icon={faAngleDoubleRight}
              className='to-left-end'
            />
          </div>
        </a>
      </div>

      <div className='sp06-wrapper'>
        <div className='sp06-detail-btn'>
          <p onClick={clickPrdUpload}>상품 등록</p>
        </div>
      </div>

      {showPrdUpload && (
        <div className='upload-form-wrapper'>
          <FontAwesomeIcon
            icon={faTimes}
            className='off-upload-form-icon'
            onClick={() => {
              setShowPrdUpload(false);
            }}
          />
          <ProductUpload onProductAdded={onProductAdded} />
        </div>
      )}
    </>
  );
};

export default SellerPrd;
