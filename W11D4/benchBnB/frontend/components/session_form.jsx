import React from 'react'

class SessionForm extends React.Component {
    constructor(props){
        super(props)

        this.state = {
            username: '',
            password: ''
        }
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user);
    }

    handleField(field) {
        return (e) => {
            return this.setState({ [field]: e.target.value });
        }
    }

    render() {
        return (
            <div>
                <form onSubmit={this.handleSubmit}>
                    <h1>Sign Up/Log In</h1>
                    <h2>{this.props.formType}</h2>
                    <label>Username: 
                        <input 
                            type="text"
                            value={this.state.username}
                            onChange={this.handleField('username')}
                        />
                    </label>
                    <br/>
                    <br/>
                    <label>Password: 
                        <input 
                            type="password"
                            value={this.state.password}
                            onChange={this.handleField('password')}
                        />
                    </label>
                    <br/>
                    <button type="submit" value={this.props.formType}>{this.props.formType}</button> 
                </form>
            </div>
        )
    }
}

export default SessionForm