# Blocmetrics
<Project Description>
This app powers <Project Name> at https://shrouded-beyond-82277.herokuapp.com/
## Getting Started
## Software requirements
- Rails 4.2.3
- Ruby 2.2.2p95
- PostgreSQL 9.3.x or higher

## Information

To enable reporting, add the following snippet into your javascript assets:

	var blocmetrics = {};

	blocmetrics.report = function(eventName) {
	 var event = {event: { name: eventName }};

	 var request = new XMLHttpRequest();

	 request.open("POST", "http://localhost:3000/api/events", true);

	 request.setRequestHeader('Content-Type', 'application/json');

	 request.send(JSON.stringify(event));
	}

Then, call the report function from the view of the page you want to keep track of. 
	E.g. in app/views/welcome/index.html.erb add:
		<script type="text/javascript"> 
		  blocmetrics.report("Welcome Index"); 
		</script>


## Support
Bug reports and feature requests can be filed with the rest for the Ruby on Rails project here:
* {File Bug Reports and Features}[https://github.com/anionrush/blocmetrics/issues]
## License
Blocmetrics is released under the <LICENSE-NAME> license.
## Copyright
copyright:: (c) Copyright 2015 <Project Name>. All Rights Reserved.