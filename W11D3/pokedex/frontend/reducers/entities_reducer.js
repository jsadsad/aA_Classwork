import {combineReducers} from 'redux';
import pokemonReducer from './pokemon_reducer';
import {itemsReducer} from './items_reducer';
import {movesReducer} from './moves_reducer';

const entitiesReducer = combineReducers({
  pokemon: pokemonReducer,
  item: itemsReducer,
  move: movesReducer
})

export default entitiesReducer;