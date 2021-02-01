// export const allTodos = (store) => Object.keys(store.todos).map(key => store.todos[key]);

// todos = {
//   'idA': {}
//   'idB': {}
// }
// selector is a function that takes the store object as parameter and returns a value from the store

export const allTodos = ({ todos }) => {
  const todosIds = Object.keys(todos) // ['idA', 'idB']
  return todosIds.map(todosId => todos[todosId]) // [{ id: 'idA', ...}, {id: 'idB', ...}]
};

export const stepsByTodoId = ({ steps }, todo_id) => {
  const stepsByTodoId = [];
  Object.keys(steps).forEach(stepId => {
    const step = steps[stepId];
    if (steps[stepId].todo_id === todo_id) stepsByTodoId.push(step)
  })
  return stepsByTodoId;
};
