import React from 'react'
import ReactDOM from 'react-dom'
import configureStore from './frontend/store/store';
import { receiveTodo, receiveTodos, removeTodo} from './frontend/actions/todo_actions'
import { receiveStep, receiveSteps, removeStep} from './frontend/actions/step_actions'
import Root from './frontend/components/root'


document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById("content");
    ReactDOM.render(<Root />, root )

    window.store = configureStore()
    window.receiveTodo = receiveTodo
    window.receiveTodos = receiveTodos
    window.removeTodo = removeTodo
    window.receiveStep = receiveStep
    window.receiveSteps = receiveSteps
    window.removeStep = removeStep

})