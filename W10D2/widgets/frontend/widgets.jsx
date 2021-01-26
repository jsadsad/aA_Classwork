import React from 'react';
import ReactDOM from 'react-dom';

import Clock from './clock'; //this is not a dependency

document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById("root");
    ReactDOM.render(<Clock />, root);
})