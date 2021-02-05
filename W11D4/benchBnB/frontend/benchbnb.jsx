import React from 'react'
import ReactDOM from "react-dom"
import configureStore from "./store/store"  
import Root from "./components/root"

import { login } from './actions/session_actions'


document.addEventListener("DOMContentLoaded", () => {
    let preloadedState = {
        session: {},
        entities: {
            users: { 1 : {
                username: "JS",
                email: "test@example.com",
                password: 12345
            }}
        }
    }

    const store = configureStore(preloadedState)

    // TESTING START
    window.getState = store.getState
    window.dispatch = store.dispatch
    window.login = login

    // TESTING END

    const root = document.getElementById("root")
    ReactDOM.render(<Root store={store} />, root)
});