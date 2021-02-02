export const RECEIVE_TODOS = "RECEIVE_TODOS";
export const RECEIVE_TODO = "RECEIVE_TODO";
export const REMOVE_TODO = "REMOVE_TODO";

import * as apiUtil from '../utils/api_util'

export const receiveTodos = (todos) => { //recieves an array of todos
    return {
      type: RECEIVE_TODOS, //type property pointing to RECEIVE_TODOS
      todos //todos property ointing to the todos argument
      //returns an action object with the above properties
    };
  };

//implicit return version:
// const receiveTodos = (todos) => ({
//   type: RECEIVE_TODOS,
//   todos,
// });

export const receiveTodo = (todo) => { //recieves only a signular todo property
    return {
      type: RECEIVE_TODO,
      todo
    };
  };

export const removeTodo = (todoId) => { //recieves only a signular todo property
  return {
    type: REMOVE_TODO,
    todoId
  };
};

export const fetchTodos = () => { //fetching from the database
  return (dispatch) => {
    return apiUtil.fetchTodos() //gets all like [{…}, {…}, {…}, {…}, {…}, {…}]
    .then(todos => { //promise to get the response and then dispatch the todos that we just got back from the database
      dispatch(receiveTodos(todos))
    })
  }
}

export const createTodo = (todo) => (dispatch, getState) => {
	return apiUtil.createTodo(todo)
		.then( todo => dispatch(receiveTodo(todo)))
		// .catch( (error) => console.log(error))
		// .fail( (error) => console.log(error)) for jquery ajax 
}