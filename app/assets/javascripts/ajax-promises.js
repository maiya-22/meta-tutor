console.log('ajax-promises.js lindked');
const ajaxPromiseFileLoadedCheck = true;

// Making request functions separately before combinging into one dynamic function:

// CREATE
// POST request
function postRequestPromise(uri, params, method = 'POST') {
  return new Promise((resolve, reject) => {
    const xhr = new XMLHttpRequest();
    xhr.open(method, uri, true);
    xhr.setRequestHeader('Content-Type', 'application/json', 'Accept', 'application/json');
    xhr.onload = function () {
      resolve(xhr.responseText);
    };
    xhr.onerror = function () {
      reject(xhr.statusText);
    };

    xhr.send(JSON.stringify(params));
  });
}

// READ
// GET request
function getRequestPromise(uri, method = 'GET') {
  return new Promise((resolve, reject) => {
    const xhr = new XMLHttpRequest();
    // method = "GET"
    xhr.open(method, uri);
    xhr.setRequestHeader('Content-Type', 'json');
    xhr.send();
    xhr.onload = function () {
      // resolve(JSON.stringify(xhr.responseText));
      resolve(xhr.responseText);
    };
    xhr.onerror = function () {
      reject(xhr.statusText);
    };
  });
}

// UPDATE
// PUT/POST/PATCH request
function updateRequestPromise(uri, params, method = 'PUT') {
  return new Promise((resolve, reject) => {
    const xhr = new XMLHttpRequest();
    xhr.open(method, uri, true);
    xhr.setRequestHeader('Content-Type', 'application/json', 'Accept', 'application/json');
    xhr.onload = function () {
      resolve(xhr.responseText);
    };
    xhr.onerror = function () {
      reject(xhr.statusText);
    };

    xhr.send(JSON.stringify(params));
  });
}

// DELETE
// DELETE request
function deleteRequestPromise(uri, method = 'DELETE') {
  return new Promise((resolve, reject) => {
    const xhr = new XMLHttpRequest();
    // method = "DELETE"
    xhr.open(method, uri);
    xhr.setRequestHeader('Content-Type', 'json');
    xhr.send();
    xhr.onload = function () {
      // resolve(JSON.stringify(xhr.responseText));
      resolve(xhr.responseText);
    };
    xhr.onerror = function () {
      reject(xhr.statusText);
    };
  });
}
