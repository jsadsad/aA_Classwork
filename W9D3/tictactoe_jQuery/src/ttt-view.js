class View {
  constructor(game, $el) {
    this.game = game;
    this.container = $el;

    this.setupBoard();
  }

  bindEvents() {
    this.container.on('click', 'li', (e) => {
      this.makeMove($(e.target));
    })
    if (this.game.isOver()) {
      console.log("Game over");
    }
  }

  makeMove($square) {
    const currentPlayer = this.game.currentPlayer
    //have to use playMove
    debugger
    this.game.playMove($square)
  }

  setupBoard() {
    const $ul = $("<ul>");
    for (let row = 0; row < 3; row++) {
      for (let col = 0; col < 3; col++) {
        let $li = $("<li>")
        $li.data("pos", [row, col])
        $ul.append($("<li>"));
      }
    }
    this.container.append($ul)
  }
}

module.exports = View;