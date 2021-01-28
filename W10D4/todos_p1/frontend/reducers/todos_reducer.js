import {RECEIVE_TODOS, RECEIVE_TODO} from "../actions/todo_actions"
 
const todosReducer = (state = {}, action) => { //action from todo_actions.js
    Object.freeze(state);
    const nextState = Object.assign({},state) //this creates clone
    switch (action.type) {
        case RECEIVE_TODOS: //array of multiple
            action.todos.forEach((todo) => {
                nextState[action.todo.id]
                return nextState
            })
        case RECEIVE_TODO:
            nextState[action.todo.id] = action.todo
            return nextState
        
            
        default:
            return state;
    }
  };
  
  export default todosReducer;