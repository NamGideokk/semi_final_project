import {
  faAppleAlt,
  faBacon,
  faCarrot,
  faCookie,
  faEgg,
  faFish,
  faGlassWhiskey,
  faSeedling,
  faTint,
  faUtensils,
  faWineBottle,
} from '@fortawesome/free-solid-svg-icons';
import { faSnowflake } from '@fortawesome/free-regular-svg-icons';

export default [
  {
    name: '쌀/잡곡',
    code: 100,
    icon: faSeedling,
    subCategories: [
      {
        name: '백미',
        code: 101,
      },
      {
        name: '잡곡',
        code: 102,
      },
      {
        name: '혼합곡',
        code: 103,
      },
      {
        name: '견과류',
        code: 104,
      },
    ],
  },
  {
    name: '육류/계란',
    code: 200,
    icon: faEgg,
    subCategories: [
      {
        name: '소고기',
        code: 201,
      },
      {
        name: '돼지고기',
        code: 202,
      },
      {
        name: '닭/오리고기',
        code: 203,
      },
      {
        name: '계란',
        code: 204,
      },
    ],
  },
  {
    name: '해산물',
    code: 300,
    icon: faFish,
    subCategories: [
      {
        name: '생선',
        code: 301,
      },
      {
        name: '연체류',
        code: 302,
      },
      {
        name: '조개류',
        code: 303,
      },
      {
        name: '해초류',
        code: 304,
      },
    ],
  },
  {
    name: '채소',
    code: 400,
    icon: faCarrot,
    subCategories: [
      {
        name: '뿌리채소',
        code: 401,
      },
      {
        name: '옥수수/오이/호박',
        code: 402,
      },
      {
        name: '고추/버섯',
        code: 403,
      },
      {
        name: '양파/마늘/생강/파',
        code: 404,
      },
      {
        name: '부추/나물',
        code: 405,
      },
      {
        name: '쌈/샐러드',
        code: 406,
      },
      {
        name: '배추/무/열무',
        code: 407,
      },
    ],
  },
  {
    name: '과일',
    code: 500,
    icon: faAppleAlt,
    subCategories: [
      {
        name: '생과일',
        code: 501,
      },
      {
        name: '냉동과일',
        code: 502,
      },
      {
        name: '건조과일',
        code: 503,
      },
    ],
  },
  {
    name: '우유/유제품',
    code: 600,
    icon: faGlassWhiskey,
    subCategories: [
      {
        name: '우유',
        code: 601,
      },
      {
        name: '요거트',
        code: 602,
      },
      {
        name: '치즈',
        code: 603,
      },
    ],
  },
  {
    name: '생수/음료',
    code: 700,
    icon: faWineBottle,
    subCategories: [
      {
        name: '생수',
        code: 701,
      },
      {
        name: '탄산음료',
        code: 702,
      },
      {
        name: '주스',
        code: 703,
      },
      {
        name: '커피',
        code: 704,
      },
      {
        name: '주류',
        code: 705,
      },
    ],
  },
  {
    name: '냉장/냉동식품',
    code: 800,
    icon: faSnowflake,
    subCategories: [
      {
        name: '햄/어묵/맛살',
        code: 801,
      },
      {
        name: '가공식품',
        code: 802,
      },
      {
        name: '냉동식품',
        code: 803,
      },
      {
        name: '아이스크림',
        code: 804,
      },
    ],
  },
  {
    name: '김치/반찬',
    code: 900,
    icon: faUtensils,
    subCategories: [
      {
        name: '김치',
        code: 901,
      },
      {
        name: '젓갈',
        code: 902,
      },
      {
        name: '밑반찬',
        code: 903,
      },
    ],
  },
  {
    name: '면류/즉석식품',
    code: 1000,
    icon: faBacon,
    subCategories: [
      {
        name: '라면',
        code: 1001,
      },
      {
        name: '파스타',
        code: 1002,
      },
      {
        name: '생면',
        code: 1003,
      },
      {
        name: '건면',
        code: 1004,
      },
    ],
  },
  {
    name: '양념/오일',
    code: 1100,
    icon: faTint,
    subCategories: [
      {
        name: '장류',
        code: 1101,
      },
      {
        name: '소스',
        code: 1102,
      },
      {
        name: '가루/분말',
        code: 1103,
      },
      {
        name: '식용유',
        code: 1104,
      },
      {
        name: '참기름/들기름',
        code: 1105,
      },
    ],
  },
  {
    name: '과자/시리얼',
    code: 1200,
    icon: faCookie,
    subCategories: [
      {
        name: '과자',
        code: 1201,
      },
      {
        name: '시리얼',
        code: 1202,
      },
      {
        name: '초콜릿',
        code: 1203,
      },
      {
        name: '사탕',
        code: 1204,
      },
      {
        name: '안주스낵',
        code: 1205,
      },
    ],
  },
];
