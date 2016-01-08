# colored-routes-logger
Logs routes in a Sails.js routes object with color formatting

```javascript
coloredRoutesLogger = require('colored-routes-logger')

routes = {
  'GET /posts': 'PostController.index'
  'GET /posts/:id': 'PostController.show'
}

coloredRoutesLogger(routes);
module.exports.routes = routes

```