import React from 'react';
import { Provider } from 'react-redux';
import App from './app.jsx';

const Root = ({ store }) => (
  <Provider store={store}>
    <App />
  </Provider>
);

// provider is the React.Context that wraps our entire App.

export default Root;
