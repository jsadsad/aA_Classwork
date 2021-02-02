import { connect } from 'react-redux';
import TodoList from './todo_list'
import {receiveTodo, fetchTodos, createTodo} from '../../actions/todo_actions'


const mapStateToProps = state => ({
    todos: Object.values(state.todos) // {todos, store}
});

const mapDispatchToProps = dispatch => ({
    // receiveTodo: todo => dispatch(receiveTodo(todo)), //{receiveTodo}
    fetchTodos: todos => dispatch(fetchTodos(todos)),
    createTodo: todo => dispatch(createTodo(todo)),


});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(TodoList);