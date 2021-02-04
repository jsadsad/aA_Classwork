import {RECEIVE_POKEMON} from '../actions/pokemon_actions';

export const itemsReducer = (state = {}, action) => {
    Object.freeze(state);
    const nextState = Object.assign({}, state);
    switch (action.type) {
    case RECEIVE_POKEMON:
        return {...nextState, ...action.payload.items}
    default:
        return state;
    }
}