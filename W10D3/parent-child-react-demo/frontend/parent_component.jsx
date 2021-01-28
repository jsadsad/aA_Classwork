import React from 'react';
import ChildOne from './child_one_component'

class Parent extends React.Component{
  constructor(){
    super();
    this.state = {
      banana: "banana"
    }
    this.handleClick = this.handleClick.bind(this);
    console.log("component constructed")
  }

  componentDidMount(){
    console.log("component mounted")
  }

  handleClick(e){
    // e.stopPropagation()
    this.setState({banana: "cat"})
  }

  // componentDidUpdate(){
  //   // debugger
  // }

  render(){
    // debugger
    const parent = "im your parent"
    console.log("parent component rendered")
    return(
      <div onClick={this.handleClick} className="parent">
        <h1>I'm the parent.</h1>
        <ChildOne parent={parent} handleClick={this.handleClick}/>
      </div>
    )
  }
}

export default Parent;