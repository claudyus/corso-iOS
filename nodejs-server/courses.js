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

var coursesArray = [];

// col3-style routes
app.get('/list/course', function (req, res, next) {
  res.send(easyxml.render(coursesArray));
});

app.get('/add/course', function (req, res, next) {
	log(req.query);
  if (!req.query.titolo || !req.query.durata)
    return res.send(403); //to be changed

	coursesArray.push({ titolo: req.query.titolo, durata: parseInt(req.query.durata, 10) });
  res.send(200, (coursesArray.length-1).toString());
});
