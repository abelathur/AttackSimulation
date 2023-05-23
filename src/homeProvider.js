import ReactDOM from 'react-dom';
import React from 'react';
// import App from './App';
import { Provider } from 'react-redux';
import store from "./store";
import Home from './home';
import Windows from './windows';
import Linux from './linux';
import {BrowserRouter as Router, Routes, Route} from 'react-router-dom';

function HomeProvider() {
    return (
        <div>
            <Provider store={store}>
                <Home setLoading={true}/>
            </Provider>,
        </div>
    );
  }
 

export default HomeProvider;