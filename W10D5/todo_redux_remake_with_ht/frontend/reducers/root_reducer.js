// This file will be responsible for combining your multiple, domain - specific reducers.It will export default a single rootReducer.

import { combineReducers } from 'redux';
import { todosReducer } from './todos_reducer';

const rootReducer = combineReducers({ 
    todos: todosReducer
});

export default rootReducer;