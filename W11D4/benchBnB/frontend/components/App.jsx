import React from "react";
import GreetingContainer from './greeting_container'

// It will accept the store as a prop, and render routes wrapped by the Provider.

const App = () => (
    <div>
        <header>
            <h1>Bench BnB</h1>
            <GreetingContainer />
        </header>
    </div>
);

export default App;