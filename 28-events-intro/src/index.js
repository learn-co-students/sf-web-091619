document.addEventListener('DOMContentLoaded', function(event) {
  addComments();
  buttonClicks();
});

function buttonClicks() {
  const parent = document.getElementById('helicopter-parent');

  parent.addEventListener('click', function(event) {
    console.log(event.target.dataset.name);
  });
}

function addComments() {
  const commentForm = document.getElementById('comment-form');

  commentForm.addEventListener('submit', function(event) {
    event.preventDefault();
    // const submittedForm = event.target
    // const inputField = submittedForm.getElementById('new-comment')

    const userInputField = event.target.querySelector('#new-comment');

    const commentsContainer = document.querySelector('#comments-container');
    const newComment = document.createElement('p');
    newComment.textContent = userInputField.value;
    commentsContainer.appendChild(newComment);

    userInputField.value = '';
    userInputField.focus();

    // window.location.href = 'about.html';

    // commentsContainer.innerHTML += `<p>${userInputField.value}</p>`
  });
}
