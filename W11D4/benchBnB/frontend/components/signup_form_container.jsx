import React from 'react';
import { connect } from 'react-redux'
import { createNewUser } from '../actions/session_actions';
import SessionForm from './session_form'

const mapStateToProps = ({ errors }) => {
    return {
        errors: errors.session,
        formType: 'signup'
    }
}

const mapDispatchToProps = dispatch => {
    return {
        processForm: (user) => dispatch(createNewUser(user))
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);