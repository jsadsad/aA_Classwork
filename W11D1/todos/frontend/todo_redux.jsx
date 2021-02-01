import React from 'react'
import ReactDOM from 'react-dom'
import configureStore from './store/store';
import { receiveTodo, receiveTodos, removeTodo} from './actions/todo_actions'
import { receiveStep, receiveSteps, removeStep} from './actions/step_actions'
import Root from './components/root'
import {allTodos} from './reducers/selectors'
import {fetchTodos} from "./utils/api_util"

const todos = {
	todos: { //key = id, values = objects
		1: {
			id: 1,
			title: 'learn selectors',
			done: 'done'
		},
		2: {
			id: 2,
			title: 'look good doing it',
			done: 'undone'
        },
        3: {
            id: 3,
            title: "be smart",
            done: 'done'
        }
	},
}

document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById("root");
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
    window.fetchTodos = fetchTodos

})