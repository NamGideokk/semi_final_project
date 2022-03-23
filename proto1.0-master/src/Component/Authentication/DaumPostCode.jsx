import { nominalTypeHack } from 'prop-types';
import DaumPostCode from 'react-daum-postcode';

import "./DaumPostCode.css";

const DaumPost = ({onSelectAddress}) => {

    const postCodeStyle = {
        width: "400px",
        height: "500px",
    };

    const handleComplete = (data) => {
        let fullAddress = data.address;
        let extraAddress = '';
        if (data.addressType === 'R') {
            if (data.bname !== '') {
                extraAddress += data.bname;
            }
            if (data.buildingName !== '') {
                extraAddress += (extraAddress !== '' ? `, ${data.buildingName}` : data.buildingName);
            }
            fullAddress += (extraAddress !== '' ? ` (${extraAddress})` : '');
        }
        //fullAddress -> 전체 주소반환

        if(onSelectAddress) {
            onSelectAddress({ ...data, address1: fullAddress });
        }
    }


    return (
        // <div className='daumModalContainer'>
             <DaumPostCode style={postCodeStyle} onComplete={handleComplete} className='post-code' />
        // </div>

    );
}
export default DaumPost;