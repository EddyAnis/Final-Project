window.onload = function () { 
document.getElementById('submit').onclick = validateForm;
};
//Validate data
function validateName(){
let name = document.querySelector('#name');
let pattern = /^[a-zA-Z ]{1,30}$/;
if (name.value == ''){
name.nextElementSibling.innerHTML = '<br>Please enter your name';
//where pattern is incorrect
} else if (!pattern.test(name.value)) {
    name.nextElementSibling.innerHTML = '<br> Enter letters';
}  else {
  name.nextElementSibling.innerHTML = ''; 
} 
}
// function to validate email input
function validateEmail() {
    let email = document.querySelector('#email');
    let pattern = /\S+@\S+\.\S+/
    // if no input for email
    if (email.value == '') {
        // show a reminder to user
        email.nextElementSibling.innerHTML = 'enter your email';
    // if pattern doesn't match
    } else if (!pattern.test(email.value)) {
        // show a reminder to user
        email.nextElementSibling.innerHTML = 'enter a valid email';
    } else {
        email.nextElementSibling.innerHTML = '';
    }
}
// function to validate message
function validateMessage() {
    let message = document.querySelector('#message');
    let pattern = /\S+@\S+\.\S+/
    // if no input for email
    if (message.value == '') {
        // show a reminder to user
        message.nextElementSibling.innerHTML = '<br> Type in your message';
    // if pattern doesn't match
    } else if (!pattern.test(message.value)) {
        // show a reminder to user
        message.nextElementSibling.innerHTML = '<br> Enter your message';
    } else {
        message.nextElementSibling.innerHTML = '';
    }
};
// combine validation function 
function validateForm() {
    validateName();
    validateEmail();
    validateMessage();
};

