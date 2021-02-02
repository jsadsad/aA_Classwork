import React from 'react';
import TodoForm from './todo_form'

class TodoList extends React.Component{

    componentDidMount() {
        this.props.fetchTodos()
    }
    render() {
        return (
            <div>
                <h1>All Todos</h1>
                <ul>
                    {this.props.todos.map((todo) => {
                        return <li key={todo.id}>Title: {todo.title}</li>
                    })}
                </ul>
                <TodoForm 
                    // receiveTodo={this.props.receiveTodo}
                    createTodo={this.props.createTodo}
                /> 
            </div>
        )
    }
} 

export default TodoList

// export default () => <h3>Todo List goes here!</h3>