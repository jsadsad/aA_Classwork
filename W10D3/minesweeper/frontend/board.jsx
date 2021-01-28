import React from "react";
import Tile from './tile';

export default class Board extends React.Component {
  constructor(props) {
    super(props);

    let board = this.props.board;

    // this.renderTiles = this.renderTiles.bind(this)
    // this.renderRows = this.renderRows.bind(this)
  }

  renderRows() {
    let board = this.props.board
    return board.grid.map ((row, idx) => {
      return (
        <div>
          {this.renderTiles(row, idx)}
        </div>
      )
    })
  }

  renderTiles(row, idx) {
    return row.map ((tile, idx) => { //this returns the actual array
      return ( //replaces the tile
        <Tile
          tile={tile}
          updateGame={this.props.updateGame}
          key={idx}
        />
      )
    })
  }

  render() {
    return (
      <div>
        { this.renderRows() }
      </div>
    )
  }
}
