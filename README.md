# Blocmetrics

Blocmetrics keeps track of events on a web application. Create an account, add the domain for web applications you would like to track events for, then add the Blocmetrics API into your web application's code. 

This app powers Blocmetrics at https://shrouded-beyond-82277.herokuapp.com/
## Getting Started

## Software requirements
- Rails 4.2.3
- Ruby 2.2.2p95
- PostgreSQL 9.3.x or higher


## API

Add the following code into your application's javascript assests:
var blocmetrics = {};

blocmetrics.report = function(eventName) {
 var event = {event: { name: eventName }};

 var request = new XMLHttpRequest();

 request.open("POST", "http://localhost:3000/api/events", true);

 request.setRequestHeader('Content-Type', 'application/json');

 request.send(JSON.stringify(event));
}

From there you can call the blocmetrics.report() function on the page you would like to keep track of. For example add:
 <script type="text/javascript"> 
  blocmetrics.report("Index"); 
</script>

Into the index.html page if you would like to keep track of the number of times that page is visited. 


## Support
Bug reports and feature requests can be filed with the rest for the Ruby on Rails project here:
* {File Bug Reports and Features}[https://github.com/anionrush/blocmetrics/issues]
## License
Blocmetrics is released under the <LICENSE-NAME> license.
## Copyright
copyright:: (c) Copyright 2015 <Project Name>. All Rights Reserved.