import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import './SearchCategory.css';
import { useMemo, useCallback } from 'react';
import { useSearchParams, useNavigate } from 'react-router-dom';
import categories from '../../types/category';

const SearchCategory = () => {
  const [searchParams] = useSearchParams();
  const navigate = useNavigate();

  const categoryCode = useMemo(() => {
    const categoryCode = searchParams.get('category');
    let category = categories.find((e) => e.code == categoryCode);
    if (!category && categoryCode) {
      category = categories[0];
    }
    return category?.code;
  }, [searchParams]);

  const changeCategory = useCallback((category) => {
    if(category == categoryCode) {
      searchParams.delete('category');
    } else {
      searchParams.set('category', category);
    }
    navigate({
      search: searchParams.toString(),
    });
    window.scroll({
      top: 620,
      behavior: 'smooth',
    });
  }, [searchParams]);

  return (
    <>
      <div className='category'>
        <div className='category-inner'>
          <div className='category-inner-01 selected'>
            {categories.slice(0, 6).map((v) => (
              <a onClick={() => changeCategory(v.code)} key={v.code}>
                <div className={categoryCode == v.code ? 'selected' : ''}>
                  <FontAwesomeIcon className='categoryIcon' icon={v.icon} />
                  <p>{v.name}</p>
                </div>
              </a>
            ))}
          </div>

          <div className='category-inner-02'>
            {categories.slice(6).map((v) => (
              <a onClick={() => changeCategory(v.code)} key={v.code}>
                <div className={categoryCode == v.code ? 'selected' : ''}>
                  <FontAwesomeIcon className='categoryIcon' icon={v.icon} />
                  <p>{v.name}</p>
                </div>
              </a>
            ))}
          </div>
        </div>
      </div>
    </>
  );
};

export default SearchCategory;
