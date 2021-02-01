import { createStore } from 'redux';
import rootReducer from '../reducers/root_reducer';

const configureStore = () => {
    const preloadedState = {}
    return createStore(rootReducer, preloadedState)
}

export default configureStore;


// with the store, we get these:
// getState() - Returns the store's current state.
// dispatch(action) - Passes an action into the store's reducer telling it what information to update.
// subscribe(callback) - Registers callbacks to be triggered whenever the store updates.Returns a function, which when invoked, unsubscribes the callback function from the store.
