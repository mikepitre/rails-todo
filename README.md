Rails Todo
================

Rails Version 4.2.1

Includes a todos table that can be accessed using the following URLs (all results are rendered as JSON):

* Going to http://localhost:3000/todos should display all the todos

* Going to http://localhost:3000/todos/new should display an empty (new) todo

* Going to http://localhost:3000/todos/1 should display just that single todo

* Going to http://localhost:3000/todos/8989898 should display an error message

* Sending a POST request to http://localhost:3000/todos with the params of { "body": "Finish Homework" } should return your updated todo (Using Postman)

* Sending a DELETE request to http://localhost:3000/todos/1 should delete that todo from the database and return the message “deleted” (Using Postman)

PARAMS:

```
{
id: null,
body: null,
completed: false,
created_at: null,
updated_at: null
}
```
