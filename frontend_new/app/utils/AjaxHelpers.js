import axios from 'axios';

const AjaxHelpers = {
  getAllToDos: function() {
    return axios.get('http://localhost:3000/todos.json');
  },
  quickToDoAdd: function(data) {
    console.log("data", data);
    let object = {
      content: data,
      dateCreated: new Date(),
    };
    var newDate = new Date();
    return axios.post('http://localhost:3000/todos.json?content=' + data + '&dateCreated=' + newDate);
  },
  completeToDoAdd: function(data) {
    console.log('data', data);
    var newDate = new Date();
    return axios.post('http://localhost:3000/todos.json?content=' + data.content + '&dateCreated=' + newDate);
  },
  editToDo: function(newTodo, oldTodo) {
    console.log("newTodo", newTodo);
    console.log("oldTodo", oldTodo)
    // let oldTodo = data.oldName;
    // let newTodo = {
    //   content: data.newName
    // };
    var newDate = new Date();
    return axios.put('http://localhost:3000/todos/'+ oldTodo + '.json?content=' + newTodo.content + '&dateCreated=' + newDate);
  },
  deleteToDo: function(data) {
    console.log("data", data);
    return axios.delete('http://localhost:3000/todos/' + data);
  }

}

export default AjaxHelpers;
