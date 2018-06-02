/* eslint no-restricted-syntax: 0 */

const newTutorialForm = document.getElementById('new-tutorial-form');

// assign a function to the click event on the form:
if (newTutorialForm) {
  newTutorialForm.addEventListener('click', (e) => {
    if (e.target.id != 'submit') {
      e.preventDefault();
    }
    const formElements = document.getElementsByClassName('tutorial-form-element');
    const { id } = e.target;
    console.log('target id', id);
    // console.log(e);
    //   if the event target's id is one of the things you are looking for:
    const typeSelectors = document.getElementsByClassName('tutorial-type-selector');
    for (let i = 0; i < typeSelectors.length; i += 1) {
      const selector = typeSelectors[i];
      console.log('selector: ', selector);
      selector.classList.remove('active-tutorial-type');
      if (selector.id === id) {
        selector.classList.add('active-tutorial-type');
      }
    }
    const commonInputs = ['title', 'author', 'url'];
    switch (id) {
      case 'video':
        //   use the helper function (below) to set or un-set the "hidden" attribute  (enter the ids of the field so show:)
        showInputFields([...commonInputs, 'channel', 'time', 'playlist', 'duration'], formElements);
        break;
      case 'chapter':
        showInputFields(
          [...commonInputs, 'edition', 'book-title', 'start_page', 'end_page'],
          formElements,
        );
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
    // add all of the common formElements here:
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
}
