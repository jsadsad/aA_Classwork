import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {fetchPokemon, fetchAllPokemon} from './util/api_util'
import {requestPokemon} from './actions/pokemon_actions';

document.addEventListener("DOMContentLoaded", () => {

  const rootEl = document.getElementById("root");
  const store = configureStore();
  window.store = store;
  window.requestPokemon = requestPokemon;
  window.fetchPokemon = fetchPokemon;
  window.fetchAllPokemon = fetchAllPokemon;
  ReactDOM.render(<Root store={store} />, rootEl)
})