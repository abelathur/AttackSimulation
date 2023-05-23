import React, { useState }  from 'react';
import { toppings as topWin } from "./utils/toppings";
import { toppings as topLin } from "./utils/toppingsLinux";
import "./ListItem.css";
import { Button } from '@mui/material';
import {AiFillHome} from "react-icons/ai";
import {Link} from 'react-router-dom';
//const { exec } = require('child_process');

export default function ListItem(props) {

  const {device} = props;
  var toppings = null;

  const [checked, setChecked] = useState([]);
  const [isClicked, setIsClicked] = useState(false);

  const handleChecked = (e, index) => {
    let prev = checked;
    console.log(checked);
    let itemIndex = prev.indexOf(index);
    if (itemIndex !== -1) {
      prev.splice(itemIndex, 1);
    } else {
      prev.push(index);
    }
    setChecked([...prev]);
  };

  const handleSubmit = () => {
    if(checked.length === 0) {
      window.alert("Please select one or more tactics to attack!")
      return;
    }
    if(!isClicked) setIsClicked(true)
    const files = checked.map((index) =>
      toppings[index].file
    );
    window.electronAPI.runProcess(files)
  };

  

  switch(device){
    case "windows": toppings = topWin; break;
    case "linux": toppings = topLin; break;
  }

  return (
    <div className="listItem">
      <ul className="toppings-list">
        {toppings.map(({ name, price }, index) => {
          return (
            <>
              <li key={index}>
                <div className="toppings-list-item">
                  <span className="left-section">
                    <input
                      type="checkbox"
                      id={`custom-checkbox-${index}`}
                      name={name}
                      value={name}
                      checked={checked.includes(index)}
                      onChange={(e) => handleChecked(e, index)}
                    />
                    <label htmlFor={`custom-checkbox-${index}`}>{name}</label>
                  </span>
                  <span className='description'>{price}</span>
                </div>
              </li>
            </>
          );
        })}
      </ul>
      <Button 
        style={{maxWidth: '150px', fontFamily: 'courier new', color: 'darkturquoise'}} 
        variant="outlined" 
        size="large" 
        id='home'
        onClick={() => handleSubmit()}
        disabled = {isClicked}
      >
         {isClicked ? "Running...": "Attack!"}
      </Button> 
      <Link style={{color: 'blue'}} to="/">
        <Button style={{minWidth: '60px', color: 'darkturquoise'}} variant="outlined" size="large" id='home'>
          <AiFillHome/> 
        </Button>
      </Link>
    </div>
  );
}
