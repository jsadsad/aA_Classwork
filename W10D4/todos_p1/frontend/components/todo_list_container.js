import { connect } from 'react-redux';
import TodoList from './todo_list'


const mapStateToProps = state => ({
    todos: Object.values(state.todos)
});

const mapDispatchToProps = dispatch => ({
    receiveTodo: todo => dispatch(receiveTodo(todo))
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(TodoList);