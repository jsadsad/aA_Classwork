import React from 'react';
import ReactDOM from 'react-dom';
import { receiveTodo, receiveTodos} from './actions/todo_actions'
import configureStore from './store/store'

const root = document.getElementById("content")
const App = () => (
    <h1>Todos App</h1>
);
    window.store = configureStore();
    window.receiveTodo = receiveTodo
    window.receiveTodos = receiveTodos
ReactDOM.render(<App />, root)