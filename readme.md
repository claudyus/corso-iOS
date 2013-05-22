# Corso iOS

Proj uploaded by [@claudyus], and thankfully [leeched] by [@mrgamer]  

###### [Introduction to Objective-C][objlolc]
Picture describing the language:  
![Picture worth 1000 words](http://qualitycoding.org/jrwp/wp-content/uploads/2012/06/dr-horrible.jpg)

<br>

#### Things done

  * [Objective-C basics][objectivec] (Apple Developers)
  * iOS Applications Basics:
    * NSObjects & friends
    * View editing -> .xib(s)
    * [Binding Items in view to Outlets Automatically!][automaticoutlets]
    * [Xcode How-To][xcodehowto]
    * [Table View app][tableviewapp]
    * [Storyboarding][storyboard], semplifica transizioni tra navController
  * iOS Applications Advanced Features:
    * [Multiple views and Navigation Stack][navigation] (Apple Developers)
    * [Customized Table View Cells for UITableView][customizedcells]
    * Data Interaction with REST API
      * [AFNetworking][afnetworking], libreria più comprensiva (XML/JSON)
      * [asi-http-request][asihttp], libreria semplice ma outdated
      * [JSON decoder framework][json-framework]
    * ~~Split Views for iPad ?~~

#### Tools

  * [Cocoapods][cocoapods], library & dependencies manager

## How-to install Libraries

Su xCode andare su Preferenze -> Downloads
![Screenshot](http://i.imgur.com/PvIj5cyl.png)

Installare console tools:
![console tools](http://i.imgur.com/OU05AOEl.png)

**Opzionale** Fixare Git su Mac OSX  
Si puo installare l'ultima versione di git tramite [questo link][git], ma se si installa il command line va inserito anche ([Reference](http://stackoverflow.com/a/12608076))
```bash
$ echo 'alias git="/usr/local/git/bin/git"' >> ~/.bashrc
```
al riavvio del terminale ```git --version``` darà la versione installata da voi.

Aprire un terminale:  
![Terminal screenshot](http://i.imgur.com/pQF1FZ8l.png)
```bash
$ sudo gem install cocoapods -V
Password:
GET http://rubygems.org/latest_specs.4.8.gz
302 Moved Temporarily
GET http://production.s3.rubygems.org/latest_specs.4.8.gz
200 OK
```

Dopodichè installa le librerie:
```bash
$ git clone https://github.com/claudyus/corso-iOS.git
$ cd corso-iOS/day3
$ pod install
```

### How-To setup REST server

[Read Here](nodejs-server/)

### Requirements

  * [Git for OSX][git], seleziona la versione appropriata (la prima di solito!)
  * [NodeJS for OSX][nodejs]

#### Links
  * https://testflightapp.com/ - service for app test
  * [Use "End" key on a Mac](http://lifehacker.com/225873/mac-switchers-tip--remap-the-home-and-end-keys)

  [leeched]: https://en.wikipedia.org/wiki/Leech_(computing)
  [@claudyus]: https://github.com/claudyus
  [@mrgamer]: https://github.com/mrgamer
  [objectivec]: http://developer.apple.com/library/ios/#referencelibrary/GettingStarted/Learning_Objective-C_A_Primer/
  [navigation]: http://developer.apple.com/library/ios/#documentation/WindowsViews/Conceptual/ViewControllerCatalog/Chapters/NavigationControllers.html
  [git]: https://code.google.com/p/git-osx-installer/downloads/list
  [nodejs]: http://nodejs.org/
  [objlolc]: http://qualitycoding.org/dot-notation/
  [asihttp]: https://github.com/pokeb/asi-http-request
  [afnetworking]: https://github.com/AFNetworking/AFNetworking
  [customizedcells]: http://www.appcoda.com/customize-table-view-cells-for-uitableview/
  [tableviewapp]: http://www.appcoda.com/ios-programming-tutorial-create-a-simple-table-view-app/
  [xcodehowto]: http://www.appcoda.com/hello-world-build-your-first-iphone-app/
  [storyboard]: http://docs.xamarin.com/guides/ios/user_interface/tables/part_5_-_using_xcode,_interface_builder,_and_storyboards
  [automaticoutlets]: https://developer.apple.com/technologies/tools/whats-new.html#interface-builder
  [json-framework]: https://github.com/stig/json-framework
  [cocoapods]: http://cocoapods.org/