What are some common HTTP status codes?
100 level - just informational messages and not seen often.

200 level - means that the request was OK

300 level - means that there was a redirection. This is
usually done without posting a page on the browser.

400 level - means that there was an error on the client/
browser side.
  401 error shows that the user could not be authenticated.
  403 error shows that the resource cannot be accessed

  access to it is forbidden either because it is not on the
  machine whitelist, the file has different permissions, or
  the client certificate is missing or outdated.

  404 error shows that the resource could not be found. This
  could be because the URL entered was wrong or the page is
  no longer available.

500 level - means that there was an error on the server
side.
  500 Internal Server Problem - this occurs when there isn't
  any other 500 level code that fits the description or when
  the server coder didn't want to specify the error.

  503 Service Unavailable - this occurs when the web server
  isn't available either due to maintenance, abundance of
  requests to it or restarting of the server.

  504 Gateway timeout - in this error, connection to the
  secondary server, which can be the Domain Name Server or
  a secondary server hasn't responded in the expected time
  frame.

What is the difference between a GET request and a POST request? When might each be used?
A GET request is an HTTP request to obtain a resource from
a server.

A POST request is an HTTP request to update a resource in
a server.

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A cookie is a file that is stored on the user's computer,
after accessing a website, that will be used the next by
that website will be visted again so as to tailor the
user's experience based on the first and subsequent visits.
Essentially, cookies help with remembering information
about the user. This includes:
1. authentication and allowing the server to know when it can
send sensitive material only when the user is logged in.
2. remembering what the user has selected, in say, his
shopping cart, or entered, like name, address and credit
card information.
3.remembering the track record of the user's activities
to determine habit trends

After a browser sends an HTTP request to a server, the server
may send a response with a cookie. The browser then saves the
cookie and then next time it sends a request to the server,
it sends the request with the cookie.