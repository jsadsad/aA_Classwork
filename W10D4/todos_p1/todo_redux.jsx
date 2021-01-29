import React from 'react'
import ReactDOM from 'react-dom'
import configureStore from './frontend/store/store';
import { receiveTodo, receiveTodos, removeTodo} from './frontend/actions/todo_actions'
import { receiveStep, receiveSteps, removeStep} from './frontend/actions/step_actions'
import Root from './frontend/components/root'
import {allTodos} from './frontend/reducers/selectors'

const todos = {
	todos: { //key = id, values = objects
		1: {
			id: 1,
			body: 'learn selectors',
			done: 'done'
		},
		2: {
			id: 2,
			body: 'look good doing it',
			done: 'undone'
		}
	},
}

document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById("content");
    const store = configureStore(todos)
    ReactDOM.render(<Root store={store}/>, root )

    window.store = configureStore()
    window.receiveTodo = receiveTodo
    window.receiveTodos = receiveTodos
    window.removeTodo = removeTodo
    window.receiveStep = receiveStep
    window.receiveSteps = receiveSteps
    window.removeStep = removeStep
    window.allTodos = allTodos

})