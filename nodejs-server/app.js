
/**
 * Module dependencies.
 */

var express = require('express')
  , http = require('http')
  , path = require('path');

var app = express();

// Pollute global with app :)
global.app = app;

// all environments
app.set('port', process.env.PORT || 3000);
/** Commented out useless parts
  * app.set('views', __dirname + '/views');
  * app.set('view engine', 'jade');
  * app.use(express.favicon());
  * app.use(express.static(path.join(__dirname, 'public')));
 */
app.use(express.logger('dev'));
app.use(express.bodyParser());
app.use(express.methodOverride());
app.use(app.router);


// development only
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

// Include all the routes in one command.
require('./courses');

http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});
