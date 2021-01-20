class View {
  constructor(game, $el) {
    this.game = game;
    this.container = $el;

    this.setupBoard();
  }

  bindEvents() {}

  makeMove($square) {}

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