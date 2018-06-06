// If you want a button to hide some other elements, put class='click-to-show' and data=`${variableName}`
// On all the elements who's visiblity you want to be toggled with this button, put data=`${variableName}`
// On all of the elements who's visibilty, you want to start as hidden, type hidden in the tag

// select all of the buttons that are used to toggle the forms/content view:
const showEditFormsButtons = document.getElementsByClassName('click-to-show');
if(showEditFormsButtons) {
    for(let i = 0 ; i < showEditFormsButtons.length; i++) {
        let button = showEditFormsButtons[i];
        button.addEventListener('click', function(e) {
            let dataToShowValue = this.getAttribute("data-show");
            let itemsToToggleVisiblity = document.querySelectorAll(`[data-show=${dataToShowValue}]`);
            if(itemsToToggleVisiblity) {
                console.log(itemsToToggleVisiblity)
                for(let i = 0 ; i < itemsToToggleVisiblity.length ; i++) {
                    if(itemsToToggleVisiblity[i].hidden) {
                        itemsToToggleVisiblity[i].removeAttribute('hidden', null);
                    } else {
                         itemsToToggleVisiblity[i].setAttribute('hidden', null);
                    }
                }
            }  
            console.log(dataToShowValue)
        });
    }
}

// data-show="question" class="click-to-show"