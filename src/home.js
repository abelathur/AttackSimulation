import React from 'react';
import { connect } from 'react-redux';
import loadingSlice, { setLoading } from "./slices/LoadingSlice";
import SplashScreen from "./splash";
// import {Button} from "react-bootstrap";
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import './home.css';
import Windows from './windows';
import {Link, Route, Routes, BrowserRouter as Router} from 'react-router-dom';
import Linux from './linux';

class Home extends React.Component {
 render() {
  if (this.props.rootLoading.value === true) {
   return (<SplashScreen />);
  }
  return (
    
    <div className='home'>
      <h1 id='head'>
        S.M.A.K - Attack Simulation <br/> 
        <br/>
        Select Your OS: 
      </h1>
        <Box sx={{ width: '100%' }} className='selectos'>
          <Link style={{color: 'blue'}} to="/windows">
            <Button style={{minWidth: '150px'}} variant="outlined" size="large" className='buttonos'>
              Windows
            </Button>
          </Link>
          <Link style={{color: 'blue'}} to="/linux">
            <Button style={{minWidth: '150px'}} variant="outlined" size="large" className='buttonos' >
              Linux
            </Button>
          </Link>
        </Box>
      
    </div>
    );
  }
}
export default connect(loadingSlice, { setLoading })(Home);
// export default Home;