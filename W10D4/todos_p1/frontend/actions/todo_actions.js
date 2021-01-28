export const RECEIVE_TODOS = "RECEIVE_TODOS";
export const RECEIVE_TODO = "RECEIVE_TODO";
export const REMOVE_TODO = "REMOVE_TODO";

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