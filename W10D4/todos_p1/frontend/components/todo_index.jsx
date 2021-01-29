import React from 'react';

const TodoIndex = (props) => {
    return (
        <div>
            <h1>All Todos</h1>
            <ul>
                {props.todos.map((todo) => {
                    return <li key={todo.id}></li>
                })}
            </ul>
        </div>
    )
} 