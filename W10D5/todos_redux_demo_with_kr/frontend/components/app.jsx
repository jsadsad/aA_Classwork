import React from 'react';
import TodoListContainer from './todo_list/todo_list_container';

// import { createStore, applyMiddleware } from 'redux'
// import { Provider, connect } from 'react-redux'

// const myReducer = (state = {}, action) => {
//   switch(action.type) {
//     case 'HELLO': {
//       return {
//         ...state,
//         said: 'hello'
//       }
//       break;
//     }
//     default:
//       return state
//   }
// }

// const middleware = () => {}

// const Root = () => {
//   const store = createStore(combineReducers({myReducer}), {}, applyMiddleware(middleware))
//   return <Provider store={store}><App /></Provider>
// }

// const MyComponent = () => {

// }

// const TodoListContainer = connect(() => { return {}}, () => { return {}})(MyComponent)

const App = () => (
  <div className="app">
    <h1>Todo List with Redux</h1>
    <TodoListContainer />
  </div>
);

export default App;
