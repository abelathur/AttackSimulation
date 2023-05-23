import { configureStore } from '@reduxjs/toolkit';
import loadingReducer from './slices/LoadingSlice';
export default configureStore({
 reducer: {
  rootLoading: loadingReducer
 }
})