/**
  * 
  * Courses REST API file
  * 
 */
var util = require('util')
  , app = global.app
  // utility function
  , log = function (args) { console.log(util.inspect(args, { colors: true })); };

var coursesArray = [];

// col3-style routes
app.get('/list/course', function (req, res, next) {
  res.send(coursesArray);
});

app.get('/add/course', function (req, res, next) {
	log(req.query);
  if (!req.query.titolo || !req.query.durata)
    return res.send(403); //to be changed

	coursesArray.push({ titolo: req.query.titolo, durata: parseInt(req.query.durata, 10) });
  res.send(200, { id: (coursesArray.length-1) });
});
