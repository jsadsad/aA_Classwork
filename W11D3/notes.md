# React Router

With React, the only backend route that will actually sertve up HTML from now on is the root route: `/`

We will still use other backend routes from Rails in our app for API calls to get data from our database, but not get HTML.

React Router will swap in a new component for every URL. We are able to trick the visitor of the website by connecting each component to a Route.

The power of frontend routing is the Developer gets to decide what component gets rendered via path.

The Illusion: On the frontend, React is able to render different components but the url will always be the root path: `/`

# Basics

- `React Router is the defacto routing library for React`

- Three primary components in React Router:

1. router <HashRouter>
  - notifies of URL change
2. route matchers <Route> and <Switch>
3. navigation <Link>, <NavLink>, <Redirect>

- All are imported from `react-router-dom`

# Route

- Used to determine which components to render at which routes
- A Route component ALWAYS renders to the virtual DOM. But when the path does not match, it will render `null`.
- Should always start with `/`

# Props a <Route> Accepts

- `path`: the path to match against
- `component`: takes a React component
- `render`: takes an inline function. Render and component props cannot be in the same route
- `exact`: ensures the path is an exact match

# <Switch>

- Renders only the first matching route _exclusively_
- Beware of ordering! Ordered from most specific to least specific.
- Good to have a catch-all('/') route as the last nested route.

# <Link>

- `to` property takes in a string representing the path to link to

- generates an anchor tag in your HTML document to a specific route.

# Props a <Route> passes

- `match`
- `location`: immutable JS object that represents url.
- `history`: move back to other pages. Useful when user signs and is pushed to home or index page.

# <Redirect>

- `to` property takes a string or object to redirect route to

# MISC

- React Router _matches a Route's PATH prop to the URL_ to determine which components to render.