import React from 'react';
import Recipe from './Recipe';

function RecipeList() {
  const recipes = ['Salami Pizza', 'Cesar Salad', 'Pasta Carbonara'];

  return (
    <ul>
      {recipes.map(recipe => {
        return <Recipe recipeName={recipe} />;
      })}
    </ul>
  );
}

export default RecipeList;
