import React from 'react';
import {Link} from 'react-router-dom';

export const PokemonIndexItem = ({poke}) => {
  //use {} to extract key from props
    return (
      <Link to={`/pokemon/${poke.id}`}>
        <li className="pokemon-index-item">
          <span>{poke.id}</span>
          <img src={poke.imageUrl}/>
          <span>{poke.name}</span>
        </li>
      </Link>
    )
}