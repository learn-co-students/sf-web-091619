// document.addEventListener("DOMContentLoaded", function() {
//   const pokemonLogo = document.getElementById('pokemon-logo')

//   pokemonLogo.addEventListener('click', function(event){
//     // const message = document.querySelector('.pokemon-container')
//     const message = document.querySelector('p')
//     // const message = document.querySelector('center')

//     // const sentence = document.createElement('p')
//     // sentence.textContent = "Nice job clicking on this again!"
//     // message.appendChild(sentence)

//     message.textContent = "Another sentence"

//     // message.innerHTML = `<p>Nice job clicking on this!</p>`
//   })
// })

// text => {console.log(text)}

// function(text) {
// 	console.log(text)
// }

// const array = [1,2,3,4]

// These are all the same
// array.map(element => {return element * 2})
// array.map(element => element * 2)
// array.map(function(element) {return element * 2})
// array.map(klasdhkhsakjfh => klasdhkhsakjfh * 2)

document.addEventListener('DOMContentLoaded', function() {
  fetchPokemon();
});

function fetchPokemon() {
  fetch('http://localhost:3000/pokemon')
    .then(resp => resp.json())
    .then(allPokemonJson => createPokemon(allPokemonJson))
}

function createPokemon(allPokemon) {
  const pokemonContainer = document.querySelector('.pokemon-container');

  // We change the innerHTML of our parent container by mapping over
  // all of our pokemon (that we got from the database)
  // and formatting each one with the renderSinglePokemon function
  pokemonContainer.innerHTML = allPokemon
    .map(pokemon => renderSinglePokemon(pokemon))
    .join('');
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
          </div>
        </div>`;
}
