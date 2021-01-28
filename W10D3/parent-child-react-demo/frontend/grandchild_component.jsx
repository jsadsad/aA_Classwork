import React from "react";

class GrandChild extends React.Component {
  constructor(props) {
    super(props);
    // debugger;
  }

  render() {
    console.log("grandchild rendered")
    return (
      <div onClick={this.props.banana} className="grandchild">
        <h1>I'm the grandchild.</h1>
      </div>
    );
  }
}

export default GrandChild;
