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
    * return **XML** list of Courses

Example:
```xml
<response>
    <0>
        <titolo>test1</titolo>
        <durata>NaN</durata>
    </0>
    <1>
        <titolo>test1</titolo>
        <durata>NaN</durata>
    </1>
    <2>
        <titolo>test1</titolo>
        <durata>NaN</durata>
    </2>
    <3>
        <titolo>test1</titolo>
        <durata>NaN</durata>
    </3>
</response>
```


### Dependencies

  * [EasyXML github project][easyxml], read the documentation

  [easyxml]: https://github.com/QuickenLoans/node-easyxml