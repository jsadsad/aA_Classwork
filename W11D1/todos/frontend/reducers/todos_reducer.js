import {RECEIVE_TODOS, RECEIVE_TODO, REMOVE_TODO} from "../actions/todo_actions"
 
const todosReducer = (state = {}, action) => { //action from todo_actions.js
    Object.freeze(state);
    const nextState = Object.assign({}, state) //this creates clone
    switch (action.type) {
        case RECEIVE_TODOS: //array of multiple
            action.todos.forEach((todo) => {
                nextState[action.todo.id]
                return nextState
            })
        case RECEIVE_TODO:
            nextState[action.todo.id] = action.todo
            return nextState
        case REMOVE_TODO: //remove key from obj
            delete nextState[action.todoId]
            return nextState
        //     return { ...state.items: state.items.splice(item.index, 1) };
        
        default:
            return state;
    }
  };
  
  export default todosReducer;

const initialState = {
    1: {
        id: 1,
        title: "wash car",
        body: "with soap",
        done: false
    },
    2: {
        id: 2,
        title: "wash dog",
        body: "with shampoo",
        done: true
    }
};
