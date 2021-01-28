import React from 'react'; //library becomes available

import Board from './board'
import * as Minesweeper from '../minesweeper'

export default class Game extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      board: new Minesweeper.Board(9, 1),
    }
  }

  updateGame() {

  }

  render() {
    return(
      <div>
        <Board
          board={this.state.board}
          updateGame={this.updateGame}
        />
      </div>
    )
  }

}
