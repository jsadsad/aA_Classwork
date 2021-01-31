import { connect } from 'react-redux';
import TodoList from './todo_list';

// container is redux. Component that is higher order component. 
// containers listen to provider. 

// Actions
import { receiveTodos, receiveTodo } from '../../actions/todo_actions';
import { allTodos } from '../../reducers/selectors';

const mapStateToProps = store => {
  debugger
  return {
      todos: allTodos(store),
      store
  }
};

const mapDispatchToProps = dispatch => ({
  receiveTodo: todo => {
    return dispatch(receiveTodo(todo));
  }
});


// connect returns a Higher Order Component of the given component (ie. TodoList)

// TodoListContainer props: { todos, store, receiveTodo }

// Action -> Middleware -> Reducer -> Store -> Container -> Action

// redux-thunk Dan Abramov

const TodoListContainer = connect(
  mapStateToProps, // {todos, store}
  mapDispatchToProps // {receiveTodo}
)(TodoList)

export default TodoListContainer;
