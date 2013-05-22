# How-To

Install and start nodejs server


```bash
$ cd nodejs-server
$ npm install
$ npm start
npm WARN package.json corso-iOS@0.0.1 No repository field.
npm WARN package.json corso-iOS@0.0.1 No readme data.

> corso-iOS@0.0.1 start /Users/sviluppatore2/projects/corso-iOS/nodejs-server
> node app.js

Express server listening on port 3000
```

### Routes
<br>

  * /add/course 
    * param *titolo*
    * param *durata*
    * return *ID*

<br>

  * /list/course
    * return **JSON** list of Courses

Example:
```json
[
  {
    "titolo": "prova",
    "durata": 100
  },
  {
    "titolo": "Matematica Computazionale",
    "durata": 9000
  },
  {
    "titolo": "Objective-C Course",
    "durata": 1800
  }
]
```


### ~~Dependencies~~

  * [EasyXML github project][easyxml], read the documentation

  [easyxml]: https://github.com/QuickenLoans/node-easyxml