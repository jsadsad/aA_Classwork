import React from 'react';

export const PokemonIndexItem = ({poke}) => {
  //use {} to extract key from props
    return (
        <li className="pokemon-index-item">
          <span>{poke.id}</span>
          <img src={poke.imageUrl}/>
          <span>{poke.name}</span>
        </li>
    )
}