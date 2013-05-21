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
  , log = function (args) { console.log(util.inspect(args, { colors: true })); }
  , randomobj = [];

// col3-style routes
app.get('/list/course', function (req, res, next) {
  res.send(easyxml.render(randomobj));
});

app.get('/add/course', function (req, res, next) {
	log(req);
	randomobj.push({idCordso: 0, titolo: "dfff", durata: "aaaa"});

});
