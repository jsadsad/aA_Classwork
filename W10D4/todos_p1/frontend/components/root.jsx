import React from 'react';
import { Provider } from 'react-redux';
import App from './app'

// this takes the base entry 
//and wraps it with a 
// provider to allow react-redux functions

const Root = ({ store }) => (
    <Provider store={store}>
        <App />
    </Provider>
);

export default Root;