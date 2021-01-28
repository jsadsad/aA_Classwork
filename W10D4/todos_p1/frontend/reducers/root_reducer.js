import {combineReducers} from 'redux'
import todosReducer from './todos_reducer'
import todoReducer from './todos_reducer'


const rootReducer = combineReducers({
    todos: todosReducer,
    todo: todoReducer
})


export default rootReducer