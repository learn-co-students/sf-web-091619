import React from 'react';
import ReactDOM from 'react-dom';
import App from './components/App';

// const siteTitle = React.createElement('h1', {}, 'Recipe List');
// ReactDOM.render(siteTitle, document.getElementById('root'));

ReactDOM.render(<App appTitle="Recipe List" />, document.getElementById('root'));
