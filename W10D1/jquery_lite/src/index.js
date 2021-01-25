const DOMNodeCollection = require("./dom_node_collection");

window.$1 = (arg) => {
  if (arg instanceof HTMLElement) {
      const nodes = new DOMNodeCollection([arg])
      return nodes;
  } else {
      const nodes = document.querySelectorAll(arg);
      let nodesArr = Array.from(nodes);
      return nodesArr;
  }
};
