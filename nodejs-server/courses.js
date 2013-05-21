/**
  * 
  * Courses REST API file
  * 
 */
var util = require('util')
  , app = global.app
  // EasyXML external library
  , easyxml = require('easyxml')
  // utility function
  , log = function (args) { console.log(util.inspect(args, { colors: true })); };

// col3-style routes
app.get('/api/course', function (req, res, next) {
  var randomobj = { key: '9172nsaj2781nansh7', id: 9};
  res.send(easyxml.render(randomobj));
});

app.post('/api/course', function (req, res, next) {
  res.send(200);
});
