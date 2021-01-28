import React from 'react';
import GrandChild from './grandchild_component'

class ChildOne extends React.Component{
  constructor(props){
    super(props);
    // debugger
    // this.state = this.props.parent; NO NO NO
    this.state = {
      words: "hello"
    }
    this.updateState = this.updateState.bind(this)
  }

  updateState(e){
    e.stopPropagation()
    this.setState({words: 'blah'})
  }

  render(){
    console.log("child rendered")
    return (
      <div onClick={this.updateState} className="child">
        <h1>I'm a child.</h1>
        <div>{this.props.parent}</div>
        <GrandChild banana={this.props.handleClick}/>
      </div>
    );
  }
}

export default ChildOne;