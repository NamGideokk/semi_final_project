import "./SearchPage.css";
import { useSearchParams } from 'react-router-dom';
import { useMemo } from 'react';

const SearchPage = () => {
    const [searchParams] = useSearchParams();

    const searchText = useMemo(() => {
        const queryName = searchParams.get('searchText');
        return queryName;
    }, [searchParams]);

    return (
        <>
            <div className='search-page'>
                {searchText ? (
                    <p>'{searchText}' 의 검색 결과를 보여드릴게요</p>
                ) : (
                    <p>검색어를 입력해주세요</p>
                )}
            </div>
        </>
    );
}

export default SearchPage;