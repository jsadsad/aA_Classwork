# React-Redux

This is the library or package for connecting reacting and redux.

We accomplish this in 2 ways:

1. It allows the threading of Redux state as props to components.
2. Allows threading of functions that can update Redux state to components.

Remember, Redux is one single source of truth. State of Redux is called Global State.

The state of React is a piece of data that the specific component needs.

# State to Components

- `Provider`: takes in store as a prop and provides the store to the component hierarchy.
  - The `<Provider />` makes the Redux store available to any nested components that have been wrapped in the `connect()` function.

- `connect`: connet given component to speicific part of store(specific slices of state/actions to dispatch. Two fuctions.
  - The first function holds the slices of state to component. We extract that component.
  - The second function provides specific action to component.
  - Connect is taking the keys and sending in as props to components.
  - Connect gives the state to mapStateToProps.

We only need to given the speficied component the state change.

# Components

1. _Presentational_
  - solely concerned with rendering `jsx` as product of props/state
2. _Container_
- the role is to provide component relevant slices of state to component via `mapStateToProps`.
- provides functions that `dispatch` actions from a presentation componet via `mapDispatchToProps`

# Process (?)

1. `component` has an input field with submit that is clicked.
2. changed happens in database but need to reflect in state.
3. `component` needs access action that updates state accroding in database.
4. solution is to wrap `component` in `container`.
5. `container` will need have connect function.
6. `connect` will send action through `props`. Remember `connect` subscribes the `component` to slices of the state.
7. `action` is dispatched to `store`.
8. `action` is goes to `reducer`.
9. `reducer` returns new state
10. new state will go back to `container`.
11. `component` will rerender.

# Store

Pass the store as prop to Root component

# Provider Setup

Root is going to wrap our whole application with provider. Our app will hold our component hierarchy.

The role of the Provider is to give app access to the store

1. `import { Provider } from 'react-redux'`
2. wrap `h1` tag with the `Provider`.
3. provider wil be given prop.
4. `<Provider store={props.store}>`

# MISC

1. `actions` are _objects_, `reducers` are _pure functions_.

2. _pure functions_ don't modify arguments it receives and have deterministic output.

3. Redux will _NOT_ recognize that something has changed as long as reducers modify oldState. The only way for Redux to realize is making a copy of old state and modify new state. It compares object ids.

4. When `dispatch` is invoked, any valid action is passed to dispatch.

5. Redux is independent of the React library. They just work well together.
