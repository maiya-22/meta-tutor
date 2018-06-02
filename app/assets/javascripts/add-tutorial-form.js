/* eslint no-restricted-syntax: 0 */

const newTutorialForm = document.getElementById('new-tutorial-form');

// assign a function to the click event on the form:
newTutorialForm.addEventListener('click', (e) => {
  const formElements = document.getElementsByClassName('tutorial-form-element');
  const { id } = e.target;
  //   if the event target's id is one of the things you are looking for:
  switch (id) {
    case 'video':
      //   use the helper function (below) to set or un-set the "hidden" attribute
      showInputFields(['title', 'channel', 'author', 'url', 'time'], formElements);
      break;
    case 'book':
      showInputFields(['title', 'author', 'edition'], formElements);
      break;
    // add a new case for the media type here
    // whatever put in the arguments array will be displayed on the page (if it exists)
    default:
      console.log('did not hit any of the case statements in media-form function');
      break;
  }
});
// loop through a collection of inputs
function showInputFields(formsArr, formElements) {
  // loop throught the form inputs with for-of loop, instead of for-in loop, so don't have to do .hasOwnProperty check
  //  change to for-in loop (with hasOwnProperty validator) if not working
  for (const element of formElements) {
    if (!formsArr.includes(element.id)) {
      element.setAttribute('hidden', null);
    } else {
      element.removeAttribute('hidden', null);
    }
  }
}
