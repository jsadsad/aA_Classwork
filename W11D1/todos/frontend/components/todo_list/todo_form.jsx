import React from 'react'
import {uniqueId} from '../../utils/id_util'


class TodoForm extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            id: uniqueId(),
            title: ''
        }
        this.updateTitle = this.updateTitle.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    updateTitle(e) {
        this.setState({title: e.target.value})
    }

    handleSubmit(e) {
        e.preventDefault();

        this.props.receiveTodo(this.state);
        this.setState({ id: Math.floor(Math.random() * 100000000), title: ''})

    }

    render () {
        return(
            <form onSubmit={this.handleSubmit}>
                <h1>Add Todo</h1>
                <label>Title: 
                    <input onChange={this.updateTitle} type="text" value={this.state.title}/>
                </label>
                <input type="submit" value="Add Todo"></input>
            </form>
        )
    }

}


export default TodoForm