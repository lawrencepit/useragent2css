# User-Agent to CSS [![Build Status](https://secure.travis-ci.org/lawrencepit/useragent2css.png)](http://travis-ci.org/lawrencepit/useragent2css?branch=master) [![Dependency Status](https://gemnasium.com/lawrencepit/useragent2css.png)](https://gemnasium.com/lawrencepit/useragent2css)

Parse an HTTP User-Agent header string and get a bunch of CSS classes back identifying the browser and OS of the client. That's it. Nothing more.

_Why determine this on the server instead of on the client using javascript?_

Because the javascript code will run after the browser has already started rendering the HTML code. By having the appropriate CSS classes injected in the HTML source as early as possible, the browser will render faster and slow browsers will not 'flicker'.


Installation and Usage
----------------------

If you use Rails, add this to your Gemfile:

    gem 'useragent2css'

In your view code, e.g.:

    <body class="<%= useragent2css %>">

Example result:

    <body class="webkit chrome chrome16 mac">

Or:

    gem install useragent2css

And in your view code, e.g.:

    <body class="<%= UserAgent.css(request["HTTP_USER_AGENT"]) %>">


Thanks
------------

[Rafael Lima](https://github.com/rafaelp/css_browser_selector) - for the original javascript implementation.

[LATimes](https://github.com/latimes/css_browser_selector) - for the original ruby implementation.


Author
----------

Lawrence Pit, lawrence.pit@gmail.com, [lawrencepit.com](http://lawrencepit.com), [@lawrencepit](http://twitter.com/lawrencepit)


Copyright
-----------

Copyright (c) 2012 Lawrence Pit. See MIT-LICENSE for details.
