# React

React is a frontend libary for building / managing UI. As the user interfaces with the app, components _react_ and update if they need to.

_Changing what the user sees in a single page application_

# Why do we like React

- React abstracts away low-level DOM manipulation allowing developer to focus on how app should look and behave.
- `JSX` - easily incorporate JS into HTML (like `html.erb`)
- Virtual DOM - we don't need jQuery or vanilla JS. _We do want jQuery ajax function_

# JSX

- Syntax extension to JavaScript.
- Uses camelCase naming convention
- Uses {} to embed and interpolate JS expressions.

# NPM

World's largest software registry. _Node Packagae Manager_ is very similar to the gemfile in Ruby (`packagae.json`) as it holds dependencies.

# GitIgnore

- node_modules/
- bundle.js
- bundle.js.map

# Setting Up Your Project

1. `npm init -y` to create package.json. Change the name.
2. `npm install webpack@4.46.0` creates node_modules.
3. `npm install -D webpack-cli`
4. create a `webpack.config.js` in the root. Copy AA's webpack.
5. Change the entry.
6. Add one line to output - `path: path.resolve(__dirname)`
7. `npm install @babel/core @babel/preset-env @babel/preset-react babel-loader react react-dom`
8. Create a `frontend/entry.jsx`
9. `npx webpack`
10. create a .gitignore
11. add a `<script src="bundle.js">` inside `index.html`
12. `npx webpack --watch --mode=development`
13. add `"start": "webpack --watch --mode=development"` inside script inside packagage.json
14. `npm start`

# Babel

Changes JSX to plain old javascript as well as ES6 into older versions.

# Components

- Accepts a single "props" object and returns a React element.
- Create via either clases or functions.
- must have a `render()`

# State and Props

- _Props_ refer to information that the component receives from a parent component.
- _State_ refers to information that the component itself manages.
