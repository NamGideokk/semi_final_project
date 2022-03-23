import * as React from "react";
import { useRef, useEffect, useState } from "react";
import InputLabel from "@mui/material/InputLabel";
import MenuItem from "@mui/material/MenuItem";
import { styled } from "@mui/material/styles";
import FormControl from "@mui/material/FormControl";
import Select from "@mui/material/Select";
import InputBase from "@mui/material/InputBase";

import "../Component/Authentication/SellerSignUp.css";

const BootstrapInput = styled(InputBase)(({ theme }) => ({
  "label + &": {
    marginTop: theme.spacing(0.9)
  },
  "& .MuiInputBase-input": {
    borderRadius: 4,
    position: "relative",
    backgroundColor: theme.palette.background.paper,
    border: "1px solid rgb(165, 165, 165)",
    fontSize: 13,
    padding: "0px 20px 0px 12px",
    transition: theme.transitions.create(["border-color", "box-shadow"]),
    // Use the system font instead of the default Roboto font.
    fontFamily: [
        'Welcome'
    ].join(','),

    "&:focus": {
      borderRadius: 4,
      borderColor: "#80bdff",
      boxShadow: "0 0 0 0.2rem rgb(76, 204, 71)"
    }
  }
}));

export default function AddrBtn() {
    const [bigCity, setBigCity] = React.useState("");
    const [city, setCity] = React.useState("");
    const [dong, setDong] = React.useState("");
    const [gu, setGu] = React.useState("");

    const [koBigCity, setKoBigCity] = React.useState("");
    const [koCity, setKoCity] = React.useState("");
    const [koDong, setKoDong] = React.useState("");
    const [koGu, setKoGu] = React.useState("");
    const [koAddr, setKoAddr] = React.useState("");

    const chosenSpot1 = useRef();
    const chosenSpot2 = useRef();
    const chosenSpot3 = useRef();
    const chosenSpot4 = useRef();
    const chosenSpot5 = useRef();

  const handleChangeBig = (e) => {
      setBigCity(e.target.value);

      if(e.target.value == 1000) 
        setKoBigCity("서울시");
        else if(e.target.value == 2000)
        setKoBigCity("경기도");
        else
            setKoBigCity("강원도");
  }

  const handleChangeCity = (e) => {
    setCity(e.target.value);
    console.log(chosenSpot1);
  };

  const handleChangeGu = (e) => {
    setGu(e.target.value);
  }


  const handleChangeDong = (e) => {
      setDong(e.target.value);

      if(bigCity == 1000 && gu != "" && dong != "" ) {
        setKoAddr({koBigCity});
        // chosenSpot1.current.innerText = koAddr;
        console.log(koAddr);
        console.log(chosenSpot1.current.innerText);
      } else if(bigCity != 1000 && city != "" && gu != "" && dong != "" ) {
            setKoAddr({koBigCity});
            // chosenSpot1.current.innerText = koAddr;
      }     
  }

 


//   const selectSpot = () => {
//       if(bigCity == 1000 && gu != "" && dong != "" ) {
//         setSelectAddr("bigCity + gu + dong");
//         chosenSpot1.current.value = selectAddr;
//       } else if(bigCity != 1000 && city != "" && gu != "" && dong != "" ) {
//           setSelectAddr("bigCity+city+gu+dong");
//           chosenSpot1.current.value = selectAddr;
//       }     
//   }

  return (
    <>
    <div className="addrForm">
      <FormControl sx={{ m: 1, minWidth: 120 }}>
        <InputLabel id="demo-simple-select-helper-label">시도 입력*</InputLabel>
        <Select
          labelId="demo-simple-select-helper-label"
          id="demo-simple-select-helper"
          value={bigCity}
          label="도 입력"
          onChange={handleChangeBig}
          input={<BootstrapInput />}
        >
          <MenuItem value="">
            <em>None</em>
          </MenuItem>
          <MenuItem value={1000}>서울시</MenuItem>
          <MenuItem value={2000}>경기도</MenuItem>
          <MenuItem value={3000}>강원도</MenuItem>
        </Select>
      </FormControl>

      

    { bigCity != 1000 ?
        <>
      <FormControl sx={{ m: 1, minWidth: 120 }}>
        <InputLabel id="demo-simple-select-helper-label">시 입력*</InputLabel>
        <Select
          labelId="demo-simple-select-helper-label"
          id="demo-simple-select-helper"
          value={city}
          label="시도 입력"
          onChange={handleChangeCity}
          input={<BootstrapInput />}
        >
          <MenuItem value="">
            <em>None</em>
          </MenuItem>
          <MenuItem value={100}>안양시</MenuItem>
          <MenuItem value={200}>화성시</MenuItem>
          <MenuItem value={300}>고양시</MenuItem>
        </Select>
      </FormControl>

      <FormControl sx={{ m: 1, minWidth: 120 }}>
        <InputLabel id="demo-simple-select-helper-label">구 입력*</InputLabel>
        <Select
          labelId="demo-simple-select-helper-label"
          id="demo-simple-select-helper"
          value={gu}
          label="구 입력"
          onChange={handleChangeGu}
          input={<BootstrapInput />}
        >
          <MenuItem value="">
            <em>None</em>
          </MenuItem>
          <MenuItem value={10}>종로구</MenuItem>
          <MenuItem value={20}>중구</MenuItem>
          <MenuItem value={30}>용산구</MenuItem>
        </Select>
      </FormControl>

      <FormControl sx={{ m: 1, minWidth: 120 }}>
        <InputLabel id="demo-simple-select-helper-label">동 입력*</InputLabel>
        <Select
          labelId="demo-simple-select-helper-label"
          id="demo-simple-select-helper"
          value={dong}
          label="동 입력"
          onChange={handleChangeDong}
          input={<BootstrapInput 
          />}
        >
          <MenuItem value="">
            <em>None</em>
          </MenuItem>
          <MenuItem value={1}>갈월동</MenuItem>
          <MenuItem value={2}>이태원동</MenuItem>
          <MenuItem value={3}>홍은동</MenuItem>
        </Select>
      </FormControl>
    </>
      
    :
    <>
    <FormControl sx={{ m: 1, minWidth: 120 }}>
        <InputLabel id="demo-simple-select-helper-label">구 입력*</InputLabel>
        <Select
          labelId="demo-simple-select-helper-label"
          id="demo-simple-select-helper"
          value={gu}
          label="구 입력"
          onChange={handleChangeGu}
          input={<BootstrapInput />}
        >
          <MenuItem value="">
            <em>None</em>
          </MenuItem>
          <MenuItem value={10}>종로구</MenuItem>
          <MenuItem value={20}>중구</MenuItem>
          <MenuItem value={30}>용산구</MenuItem>
        </Select>
      </FormControl>

      <FormControl sx={{ m: 1, minWidth: 120 }}>
        <InputLabel id="demo-simple-select-helper-label">동 입력*</InputLabel>
        <Select
          labelId="demo-simple-select-helper-label"
          id="demo-simple-select-helper"
          value={dong}
          label="동 입력"
          onChange={handleChangeDong}
          input={<BootstrapInput />}
        >
          <MenuItem value="">
            <em>None</em>
          </MenuItem>
          <MenuItem value={1}>갈월동</MenuItem>
          <MenuItem value={2}>이태원동</MenuItem>
          <MenuItem value={3}>홍은동</MenuItem>
        </Select>
      </FormControl>
    </>
    }
    </div>

    <div>

        <p ref={chosenSpot1}>{koAddr}</p>
        <p ref={chosenSpot2}></p>
        <p ref={chosenSpot3}></p>
        <p ref={chosenSpot4}></p>
        <p ref={chosenSpot5}></p>

    </div>



    </>
  );
}
