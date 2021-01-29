import React from 'react'

class TodoForm extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            id: Math.floor(Math.random() * 1000000),
            title: ''
        }
    }

}


export default TodoForm