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
        this.updateBody = this.updateBody.bind(this)
        this.updateDone = this.updateDone.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    updateTitle(e) {
        this.setState({title: e.target.value})
    }
    updateBody(e) {
        this.setState({body: e.target.value})
    }
    updateDone(e) {
        this.setState({done: e.target.value})
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props.createTodo(this.state);
        // this.props.receiveTodo(this.state)

    }

    render () {
        return(
            <form onSubmit={this.handleSubmit}>
                <h1>Add Todo</h1>
                <label>Title: 
                    <input onChange={this.updateTitle} type="text" value={this.state.title}/>
                </label>
                <label>Body:
                    <input onChange={this.updateBody} type="text" value={this.state.body} />
                </label>
                <label>Done?
                    <input onChange={this.updateDone} type="text" value={this.state.done} />
                </label>
                <input type="submit" value="Add Todo"></input>
            </form>
        )
    }

}


export default TodoForm