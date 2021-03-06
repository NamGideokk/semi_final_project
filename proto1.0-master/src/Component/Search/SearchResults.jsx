import styles from './SearchResults.module.css';
import ProductContainer from '../ProductContainer';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import {
  faAngleDoubleLeft,
  faAngleDoubleRight,
  faAngleLeft,
  faAngleRight,
  faArrowDown,
  faArrowUp,
} from '@fortawesome/free-solid-svg-icons';
import { useEffect, useRef, useState, useCallback, useMemo } from 'react';
import { useSearchParams, useNavigate } from 'react-router-dom';
import axios from 'axios';
import categories from '../../types/category';

const SearchResults = () => {
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

  const [category1, category2, page, searchText] = useMemo(() => {
    const categoryCode = searchParams.get('category');
    const subCategoryCode = searchParams.get('subCategory');
    const queryPage = parseInt(searchParams.get('page'));
    const queryName = searchParams.get('searchText');
    let page = 1;
    let category = categories.find((e) => e.code == categoryCode);
    if (!category && categoryCode) {
      category = categories[0];
    }
    if (queryPage > 0) {
      page = queryPage;
    }
    return [category?.code, subCategoryCode, page, queryName];
  }, [searchParams]);

  const startPageNum = useMemo(() => {
    if (page < 1) {
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
  }, [searchParams]);

  useEffect(() => {}, [prdListContainer]);

  useEffect(() => {
    if (!searchText) {
      return;
    }
    axios
      .get('/api/salesproduct/search', {
        params: {
          category1: category1,
          category2: category2,
          sort: order,
          size: size,
          page: page,
          name: searchText,
        },
      })
      .then((response) => setProductList(response.data))
      .catch((err) => {
        setProductList([]);
        if (!err.response) {
          alert('????????? ???????????? ????????????.');
        }
      });
  }, [category1, category2, order, size, page, searchText]);

  const handleContainerHeight = (event) => {
    if (event.target.innerText === '20??????') {
      setSize(20);
    } else if (event.target.innerText === '40??????') {
      setSize(40);
    } else if (event.target.innerText === '60??????') {
      setSize(60);
    }
  };

  const showFilterBtn = useRef();
  const [isShowFilter, setIsShowFilter] = useState(false);
  const clickShowFilter = (e) => {
    setIsShowFilter(!isShowFilter);
    showFilterBtn.current.style.color = 'var(--accent-default)';
    if (isShowFilter === true) {
      setIsShowFilter(!isShowFilter);
      showFilterBtn.current.style.color = 'var(--font-dark)';
    }
  };

  return (
    <>
      <div className={styles['prd-list-filter']}>
        <div className='left-filter'>
          <span
            onClick={clickShowFilter}
            ref={showFilterBtn}
            className={styles['filter-btn']}
          >
            {isShowFilter ? '?????? ?????????' : '??????'}
          </span>
          {isShowFilter ? (
            <>
              ???
              <span>
                ?????????
                <FontAwesomeIcon
                  icon={faArrowUp}
                  onClick={clickHighprcPrdPlt}
                  className={styles['high-price-icon']}
                  title='?????? ?????????'
                />
                <FontAwesomeIcon
                  icon={faArrowDown}
                  onClick={clickLowprcPrdPlt}
                  className={styles['low-price-icon']}
                  title='?????? ?????????'
                />
              </span>
              ???
              <span>
                ????????????
                <FontAwesomeIcon
                  icon={faArrowUp}
                  onClick={clickPoplPrdPlt}
                  className={styles['high-salesrate-icon']}
                  title='????????? ?????????'
                />
                <FontAwesomeIcon
                  icon={faArrowDown}
                  onClick={clickLowPoplPrdPlt}
                  className={styles['low-salesrate-icon']}
                  title='????????? ?????????'
                />
              </span>
              ???
            </>
          ) : null}
        </div>

        <div className={styles['right-filter']}>
          <span onClick={handleContainerHeight}>20??????</span>???
          <span onClick={handleContainerHeight}>40??????</span>???
          <span onClick={handleContainerHeight}>60??????</span>
        </div>
      </div>

      <div ref={prdListContainer} className={styles['pcb']}>
        {productList.map((v) => (
          <ProductContainer salesProductInfo={v} key={v.id} />
        ))}
      </div>

      <div className={styles['prd-paging']}>
        <a className={styles['pageNum']}>
          <div className={styles['dddddd']}>
            <FontAwesomeIcon
              icon={faAngleDoubleLeft}
              className={styles['to-left-end']}
              onClick={() => changePage(1)}
            />
          </div>
        </a>
        <a className={styles['pageNum']}>
          <div className={styles['dddddd']}>
            <FontAwesomeIcon
              icon={faAngleLeft}
              className={styles['to-left']}
              onClick={() => changePage(startPageNum - 1)}
            />
          </div>
        </a>
        {[...Array(10)].map((e, i) => {
          const num = startPageNum + i;
          return (
            <a
              className={styles['pageNum'] + (num == page ? ' ' + styles['selected'] : '')}
              key={i}
              onClick={() => changePage(num)}
            >
              <div className={styles['dddddd']}>{num}</div>
            </a>
          );
        })}
        <a className={styles['pageNum']}>
          <div className={styles['dddddd']}>
            <FontAwesomeIcon
              icon={faAngleRight}
              className={styles['to-right']}
              onClick={() => changePage(startPageNum + 10)}
            />
          </div>
        </a>
        <a className={styles['pageNum']}>
          <div className={styles['dddddd']}>
            <FontAwesomeIcon
              icon={faAngleDoubleRight}
              className={styles['to-left-end']}
            />
          </div>
        </a>
      </div>
    </>
  );
};

export default SearchResults;
