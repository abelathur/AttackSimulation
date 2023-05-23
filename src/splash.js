import React from "react";
import { Spinner } from "react-bootstrap";
import { connect } from "react-redux";
import loadingSlice, { setLoading } from "./slices/LoadingSlice";
import Box from '@mui/material/Box';
import LinearProgress from '@mui/material/LinearProgress';
//import logo from './images/Screenshot 2023-05-01 at 6.58.41 PM.png'
import './splash.css'
import mylogo from './images/myLogo.jpg'


const sleep = async (milliseconds) => {
    await new Promise(resolve => {
        return setTimeout(resolve, milliseconds)
    });
};

class SplashScreen extends React.Component {
 componentDidMount() {
  this.init();
 }
 async init() {
    await sleep(3000);
    this.props.setLoading(false);
 }
 render() {
 return (
  <div key="splash-screen" className="splash-div">
   <div key="splash-screen-spinner" style={{ marginTop: "15px" }}>
        <img src={mylogo} alt="Logo" class="flex-items" />;
        <Spinner animation="border" variant="primary" role="status" class="flex-items">
            <Box sx={{ width: '100%' }}>
                <LinearProgress />
            </Box>
        </Spinner>
   </div>
  </div>);
 }
}
export default connect(loadingSlice, { setLoading })(SplashScreen);