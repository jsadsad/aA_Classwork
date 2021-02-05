import { combineReducers } from 'redux'
import { entitiesReducer } from './entities_reducer'
import { errorsReducer } from './errors_reducer'
import { sessionReducer } from './session_reducers'

const rootReducer = combineReducers({
    errors: errorsReducer,
    session: sessionReducer,
    entities: entitiesReducer //tables like users, bench
})

export default rootReducer;