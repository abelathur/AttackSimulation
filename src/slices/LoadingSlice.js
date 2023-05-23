import { createSlice } from '@reduxjs/toolkit'
export const loadingSlice = createSlice({
 name: 'rootLoading',
 initialState: {value: true},
 reducers: {
  setLoading: (state, data) => {
   state.value = data.payload;
  },
 }
})
// Action creators are generated for each case reducer function
export const { setLoading } = loadingSlice.actions
export default loadingSlice.reducer