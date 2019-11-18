// Vanilla JS
const siteTitle = document.createElement('h1');
siteTitle.textContent = 'Recipe List';

const rootDiv = document.getElementById('root');
rootDiv.appendChild(siteTitle);

// The React Way
// const siteTitle = React.createElement('h1', {}, 'Recipe List');

// const rootDiv = document.getElementById('root');
// ReactDOM.render(siteTitle, rootDiv);

// console.log(siteTitle);
