1. What are some common HTTP status codes?
300 Multiple Choices - means that the server does not know which file should be sent back because there are multiple files with the same name

400 Bad Request - there is some syntax error preventing the server from understanding the request, syntax should be modified before attempting the request again 

410 Gone - the resource is no longer available 

403 Forbidden - it is forbidden to access the resource 

404 Not Found - resource was not found 

500 Internal Server Error - catchall when none of the other 500 errors fit 

2. What is the difference between a GET request and a POST request? When might each be used?

GET requests are used more often for requesting documents where POST requests are for updating data. GET requests display keys and values in the URL where POST requests do not. This means that GET requests will show up in the browser's history and can be bookmarked. GETS should be used for operations that do not manipulate the data, just ones that retrieve it. POSTS can be used for when something new is created - like posting a message or a comment. "Use GET for safe actions and POST for unsafe actions" -- this is important because you do not want to use GET for secure info since it will be displayed in the URL. 

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies are small files that store info and are used to customize a web page. The page can display info that is particular to the user by using cookies. An "http cookie" is a piece of data that is stored in a person's web browser while they are browsing. 