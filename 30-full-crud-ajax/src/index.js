// We create allPokemon to save all of our pokemon in an array that is accessible to all functions
let allPokemon = [];

document.addEventListener('DOMContentLoaded', () => {
  // Once the DOM is loaded we fetch our pokemon and set up additional event listeners
  fetchPokemon();
  listenToClicks();
  listenToFormSubmit();
});

function listenToFormSubmit() {
  const newPokeForm = document.getElementById('pokemon-post-form');
  newPokeForm.addEventListener('submit', function(event) {
    event.preventDefault();
    getPokemonInfo(event);
  });
}

function getPokemonInfo(event) {
  const form = event.target;
  // const name = form.querySelector('#name-input').value
  const name = form.name.value;
  const spriteFront = form.spriteFront.value;
  const spriteBack = form.spriteBack.value;

  const pokemon = {
    name: name,
    sprites: {
      front: spriteFront,
      back: spriteBack
    }
  };

  createPokemon(pokemon);
}

function createPokemon(pokemon) {
  fetch('http://localhost:3000/pokemon', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(pokemon)
  })
    .then(resp => resp.json())
    .then(pokemon => {
			const newDiv = document.createElement('div');
			newDiv.innerHTML = renderSinglePokemon(pokemon);
			
			getPokemonContainer().prepend(newDiv)
    });

  // Optimistic render
}

function listenToClicks() {
  getPokemonContainer().addEventListener('click', function(event) {
    if (event.target.tagName === 'BUTTON') {
      handleDeleteButtonClick(event);
    }
  });
}

function handleDeleteButtonClick(event) {
  const pokemonId = event.target.dataset.id;

  deletePokemon(pokemonId);
}

function deletePokemon(pokemonId) {
  fetch(`http://localhost:3000/pokemon/${pokemonId}`, {
    method: 'DELETE'
  })
    .then(resp => resp.json())
    .then(data => {
      // Pessimistic render
      // deletePokemonFromDOM(pokemonId)
    });

  // Optimistic render
  deletePokemonFromDOM(pokemonId);
}

function deletePokemonFromDOM(pokemonId) {
  document.getElementById(pokemonId).remove();
}

function getPokemonContainer() {
  return document.querySelector('#pokemon-container');
}

function fetchPokemon() {
  // Once a user loads the page we fetch all of our pokemon from our json-server backend
  fetch('http://localhost:3000/pokemon')
    .then(response => response.json())
    .then(allPokemonJson => {
      // Set the allPokemon array equal to the response we get from the server
      allPokemon = allPokemonJson;

      // We change the innerHTML of our parent container by mapping over
      // all of our pokemon (that we got from the database)
      // and formatting each one with the renderSinglePokemon function
      getPokemonContainer().innerHTML = allPokemon
        .map(pokemon => renderSinglePokemon(pokemon))
        .join('');
    });
}

function renderSinglePokemon(pokemon) {
  // Create a pokemon card with divs/buttons etc, the id is how we figure out which pokemon has been clicked
  return `
        <div class="pokemon-card" id="${pokemon.id}">
          <div class="pokemon-frame">
            <h1 class="center-text">${pokemon.name}</h1>
            <div class="pokemon-image">
              <img data-id="${pokemon.id}" class="toggle-sprite" src="${pokemon.sprites.front}">
            </div>
            <button data-id="${pokemon.id}" class="pokemon-button">Delete</button>
          </div>
        </div>`;
}
