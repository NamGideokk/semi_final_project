import './DetailedCategory.css';
import categories from '../types/category';
import { Link } from 'react-router-dom';
import { useMemo } from 'react';
import { useSearchParams } from 'react-router-dom';

export default function DetailedCategory() {
  const [searchParams] = useSearchParams();

  const [categoryCode, subList, selectedSubCategoryCode] = useMemo(() => {
    const categoryCode = searchParams.get('category');
    const subCategoryCode = searchParams.get('subCategory');
    let category = categories.find((e) => e.code == categoryCode);
    if (!category) {
      category = categories[0];
    }
    return [category.code, category.subCategories, subCategoryCode];
  }, [searchParams]);

  return (
    <div className='detailed-container'>
      {subList.map((v) => (
        <Link
          to={`?category=${categoryCode}&subCategory=${v.code}`}
          key={v.code}
          className={selectedSubCategoryCode == v.code ? 'selected' : ''}
        >
          {v.name}
        </Link>
      ))}
    </div>
  );
}
