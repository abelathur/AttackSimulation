import Button from '@mui/material/Button';
import {Link} from 'react-router-dom';
import ListItem from './ListItem';
import React from 'react';
import './windows.css';
import {AiFillHome} from "react-icons/ai";

function Windows() {
  
  return (
    <div className="windows">
      
      <ListItem device = {"windows"}/>

      <Link style={{color: 'blue'}} to="/">
        <Button style={{minWidth: '150px'}} variant="outlined" size="large" id='home'>
          <AiFillHome/> 
        </Button>
      </Link>
    
    </div>
  );
}

export default Windows;
