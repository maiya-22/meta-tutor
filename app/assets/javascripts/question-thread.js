// hide the question content, and show the form content


// get the button that will toggle the form and the display elements' hidden states
let editQuestionButton = document.getElementById('edit-question-button');
let editQuestionForm = document.getElementById('edit-question-form');
let cancelEditQuestion = document.getElementById('cancel-edit-question-button');
if(editQuestionButton) {
    editQuestionButton.addEventListener('click', function(e) {
        console.log('click')
       editQuestionForm.removeAttribute('hidden', null); 
       cancelEditQuestion.removeAttribute('hidden', null); 
       editQuestionButton.setAttribute('hidden', null); 
    });
}



// const editQuestionButton = document.getElementById('edit-question-button');
// const editQuestionForm = document.getElementById('edit-question-form'); 
// if(editQuestionButton) {
//     editQuestionButton.addEventListener('click') {
//         // toggle visilbility on three things:
//         1) the edit question form
//         2) question title
//         3question content
//     }
// }

// <div id="question-title" hidden><<%= @question.title %></div>
//             <div id="actual-question-content" hidden>