// this checks if it's a function or a POJO. If just an pojo, it gets returned.

const thunk = ({ dispatch, getState }) => next => action => {
  if (typeof action === 'function') {
    return action(dispatch, getState);
  }
  return next(action);
};
  
export default thunk;