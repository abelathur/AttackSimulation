import Button from '@mui/material/Button';
import {Link} from 'react-router-dom';
import {AiFillHome} from "react-icons/ai";
import ListItem from './ListItem';
import React from 'react';
import './linux.css';

function Linuxs() {
  
  return (
    <div className="linux">
      
      <ListItem device = {"linux"}/>

      <Link style={{color: 'blue'}} to="/">
        <Button style={{minWidth: '150px'}} variant="outlined" size="large" id='home'>
          <AiFillHome/> 
        </Button>
      </Link>
    
    </div>
  );
}

export default Linux;