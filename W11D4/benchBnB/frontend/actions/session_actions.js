import {deleteSession, postSession, postUser} from '../util/session_api_util' 

export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER"
export const LOGOUT_CURRENT_USER = "LOGOUT_CURRENT_USER"
export const RECEIVE_ERROR = "RECEIVE_ERROR"

const receiveCurrentUser = (currentUser) => ({
    type: RECEIVE_CURRENT_USER,
    currentUser
})

const logoutCurrentUser = () => ({
    type: LOGOUT_CURRENT_USER,
})

const receiveErrors = (errors) => ({
    type: RECEIVE_ERROR,
    errors
})

export const login = (user) => dispatch => postSession(user).then(
    user => dispatch(receiveCurrentUser(user))
)

export const createNewUser = (user) => dispatch => postUser(user).then(
    user => dispatch(receiveCurrentUser(user))
)

export const logout = () => dispatch => deleteSession().then(() => dispatch(logoutCurrentUser))
