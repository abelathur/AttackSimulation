import ReactDOM from 'react-dom';
import React from 'react';
// import App from './App';
import { Provider } from 'react-redux';
import store from "./store";
import Home from './home';
import Windows from './windows';
import Linux from './linux';
import {BrowserRouter as Router, Routes, Route} from 'react-router-dom';

ReactDOM.render(
  <Provider store={store}>
    <Router>
      <Routes>  
        <Route exact path='/' element={< Home setLoading={true} />}></Route>  
        <Route exact path='/windows' element={< Windows />}></Route>  
        <Route exact path='/linux' element={< Linux />}></Route>  
      </Routes>  
    </Router>
  </Provider>, 

document.getElementById('root'));