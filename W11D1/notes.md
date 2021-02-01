# Connecting

"Remember the motivation for what we build."

Redux Thunk middleware allows you to write action creators that return a function instead of an action. The `thunk` can be used to delay the dispatch of an action, or to dispatch only if a certain condition is met. The inner function receives the store methods dispatch and getState as parameters.

_Middleware_ will check if action is asynch or sync. Our rails app is a json API.

# new Setups

1. `rails _5.2.3_ new TeaTime -G --database=postgresql --skip-turbolinks`
2. `namespace :api, defaults: {format: json} do resources :teas, only: [:index, :create] end`
3. `react g controller StaticPages`
4. `root to:"static_pages#root"`
5. Move 3: `frontend`, `webpack`, `package json`

# Connecting backand end frontend

- APIUtils & Ajax

# Thunk Middleware

- A thunk action creator returns a function `dispatch, getState` that returns a APIUtil.

- It facilitates the waiting on an API call and dispatches it to the store.

- Allows you to write _thunk_ action creators that return a function instead of a POJO.

- Have actions that are POJOs or functions.

- Benefits such delay the dispatch of an action and conditionally dispatch actions.

- The point is to update the frontend store. We're pulling just the specific information from the backend. After the promise, we dispatch into the store to update.

- Will check if the action is a function.

- Thunk middleware will return another function passing in `dispatch` and `getState`

- Will only accept actions as POJOs.

- `applyMiddleware()`

# Logger

Will show the previous state and what the `next state` is going to be.

Should be the last middleware and applied after thunk.

# MISC

- A Thunk action is a function, regular action is a POJO

- A `thunk` middleware invokes with the store dispatch and getState functions.

- A piece of Redux middleware receives its inputs in the following order: `store, next, action`.
