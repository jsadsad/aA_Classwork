import { RECEIVE_TODOS, RECEIVE_TODO } from '../actions/todo_actions';

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

export const todosReducer = (state = initialState, action) => {
    // [ { id: 1, title: 'wash car', body: 'with soap', done: 'yes'},  { id: 2, title: 'wash table', body: 'with water', done: 'yes' }]
    const newState = {
        todos: {},
    }

    switch(action.type) {
        case RECEIVE_TODOS:
            action.todos.forEach((todo) => {
                newState.todos[todo.id] = todo;
            })
            return Object.assign({}, state, newState);
            
        case RECEIVE_TODO: //adding or editingre
            const existingTodos = state;
            existingTodos[action.todo.id] = action.todo;
            // existingTodos[3] = { id: 3, etc... }
            // state[3] = { id: 3, etc... } <-- BAD: modifying state directly
            return Object.assign({}, state, existingTodos);
        default:
            return state;
    }
}