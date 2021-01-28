import React from 'react'
import ReactDOM from 'react-dom'
import configureStore from './frontend/store/store';
import { receiveTodo, receiveTodos, removeTodo} from './frontend/actions/todo_actions'


document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById("content");
    ReactDOM.render(<h1>Todos App</h1>, root )

    window.store = configureStore()
    window.receiveTodo = receiveTodo
    window.receiveTodos = receiveTodos
    window.removeTodo = removeTodo

})