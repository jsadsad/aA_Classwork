import React from 'react';
import ReactDOM from 'react-dom';
import createStore from './store/store';
// import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
    const root = document.getElementById('root');
    let preloadedState = undefined; //makes sure we have a variable we can use.
    if (window.currentUser) {
        preloadedState = {
            session: {
                currentUser: window.currentUser
            }
        };
    }
    // const store = createStore(preloadedState);
    const store = createStore();
    window.getState = store.getState;
    window.dispatch = store.dispatch;

    // ReactDOM.render(<Root store={store} />, root);
    ReactDOM.render(<h1>Welcome to BenchBnB</h1>, root);
})

// document.addEventListener("DOMContentLoaded", () => {
//     const root = document.getElementById("root");
//     ReactDOM.render(<h1>Welcome to BenchBnB</h1>, root);
// });