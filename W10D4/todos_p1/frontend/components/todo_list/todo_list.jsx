import React from 'react';

const TodoList = (props) => {
    return (
        <div>
            <h1>All Todos</h1>
            <ul>
                {props.todos.map((todo) => {
                    return <li key={todo.id}>Title: {todo.title}</li>
                })}
            </ul>
        </div>
    )
} 

export default TodoList

// export default () => <h3>Todo List goes here!</h3>