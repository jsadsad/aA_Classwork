import {RECEIVE_TODOS, RECEIVE_TODO} from "../actions/todo_actions"

const todosReducer = (state = {}, action) => { //action from todo_actions.js
    switch (action.type) {
        case RECEIVE_TODOS:
        case RECEIVE_TODO:
        
            
        default:
            return state;
    }
  };
  
  export default todosReducer;