import {applyMiddleware, createStore} from 'redux'
import rootReducer from '../reducers/root_reducer'
import myThunk from '../middleware/thunk.js'
import logger from 'redux-logger';

const configureStore = (preloadedState = {}) => {
    return createStore(
        rootReducer, 
        preloadedState, 
        applyMiddleware(myThunk, logger)
    ) 
    //reducer (required) - A reducing function that receives the app's current state and incoming actions, 
    //determines how to update the store's state, and returns the next state (more on this in a moment).
    //preLoadedState (optional) - An object representing any application state that existed before the store was created.
}

export default configureStore