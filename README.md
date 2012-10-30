# www_redirect

## Description

Slight change to kjohnston's naked_redirect so all subdomains & naked domains redirect to => www.mydomain.com

A Sinatra app that redirects requests for naked domains and subdomains to their www-equivalents.

For example, a request for `http://some-domain.com` would be redirected to `http://www.some-domain.com`.

And for example, a request for `http://sub.some-domain.com` would be redirected to `http://www.some-domain.com`.

## Behavior

The protocol, host and query string are preserved during redirections.  However, the app only responds to GET requests.

## Deployment

This app is easily deployable to Heroku, but you can run it anywhere you can run a Rack app.

The app will redirect any domain pointed to it, so you'll just need to create an A record pointing to the IP where the app is hosted for each domain you want it to handle redirection for.

## License

* Freely distributable and licensed under the [MIT license](http://kjohnston.mit-license.org/license.html).
* Copyright (c) 2012 Kenny Johnston [![endorse](http://api.coderwall.com/kjohnston/endorsecount.png)](http://coderwall.com/kjohnston)
* Copyright (c) 2012 John Griffiths [![endorse](http://api.coderwall.com/johnantoni/endorsecount.png)](http://coderwall.com/johnantoni)
