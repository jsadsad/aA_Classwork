import React from 'react';
import TodoForm from './todo_form'

const TodoList = (props) => {
    return (
        <div>
            <h1>All Todos</h1>
            <ul>
                {props.todos.map((todo) => {
                    return <li key={todo.id}>Title: {todo.title}</li>
                })}
            </ul>
            <TodoForm receiveTodo={props.receiveTodo}/> 
        </div>
    )
} 

export default TodoList

// export default () => <h3>Todo List goes here!</h3>