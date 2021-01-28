# Redux

To learn, we need to separate between React and Redux.

`Redux` makes it easy to reason about complex data and UI changes.

You will need to manually update the state.

`Redux` is the most popular implementation of the Flux architecture.

Remember, `State` is an object. Application state is represented as one giant plain old `JavaScript` object.

Redux copies state and modify it. Throw away old state.

We don't want to mutate the old state because it wants to keep track of modifications.

`Redux` is good since your data changes over time and you want a single souce of truth. The same data is assembled from diffrent sources and can be rendered in several places throughout the UI.

# Application State

- We need to hold a copy of what was pulled from the data. Think of it like a front-end storage.

- An application state can minimize api calls to our backend.

- Changes on the webpage that don't need to be saved to the database

- It has rendering speed advantage.

# Flux

Flux is a also state management accessor. It organizes how the information flows throughout the application. Think of the store as the wrapper to hold the information.

An action is the only way for interaction with the dstate to update information. The action is _usually_ living in the view.

# Redux Principles

- Single source of truth
- Like Flux, only actions change state
- State is read-only.

# Reducer

Just a function that takes into 2 variables - `oldState`, `action`

Each reducer takes care of _every_ small part of state. It keeps track of one small slice of state.

Takes care care of whole state or slice of state.

`Object.freeze(oldState)` helpful if updating old state.
`const nextState = Object.assign({}, oldState)` will create a copy.

I will need to merge all reducers together into `RootReducer` that will be a function that returns state using `{ combineReducers } from 'redux'`

`Enhancer` can be the third optional argument.

# Store

Store for our redux app.

`store.getState()` will return empty object unless populated of the current state of the application. It is an implicit return.

`store.dispatch(action)` is the only way to change the state of the store. It takes in an `action` and send(dispatch) to our store in order to update our state.

`action` are an object that will take in a `type`, and any other key like data, payload to mofdify state.

Sometimes, you want `preloadedState` when you open state because it always live there. You will need to wrap it in other object.

# Structure

1. create a `frontend` folder with an `entry` file for React
2. Same structure with `components`, `actions`, `reducers`, `store`
3. `npm init --yes` and then add start script.
4. `npm install webpack@4.46.0 webpack-cli redux @babel/core @babel/preset-env babel-loader`
5. create `webpack.config.js`
