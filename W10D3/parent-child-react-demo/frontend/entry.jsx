import React from "react";
import ReactDOM from "react-dom";
import ParentComponent from './parent_component'

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  ReactDOM.render(<ParentComponent />, root)
})