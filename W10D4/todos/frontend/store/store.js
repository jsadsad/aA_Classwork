import {createStore} from 'redux'
import rootReducer from '../reducers/root_reducer'

const configureStore = (preloadedState = {}) => {
    return createStore(rootReducer, preloadedState) 
    //reducer (required) - A reducing function that receives the app's current state and incoming actions, 
    //determines how to update the store's state, and returns the next state (more on this in a moment).
    //preLoadedState (optional) - An object representing any application state that existed before the store was created.
}

export default configureStore