import React from 'react';
import RecipeList from './RecipeList';

// function App() {
//   return <h1>Recipe List</h1>;
// }

// function App() {
//   const appTitle = 'Recipe List';
//   return <h1>{appTitle}</h1>;
// }

// function App(props) {
//   return (
//     <h1>{props.appTitle}</h1>
//   )
// }

function App(props) {
  return (
    <div>
      <h1>{props.appTitle}</h1>
      <RecipeList />
    </div>
  );
}

export default App;
