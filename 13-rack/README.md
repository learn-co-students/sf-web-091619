# Rack & The Internet

## The Internet
* Network Packets
    * "A formatted unit of data" i.e. an atom of Internet information 
    * All information transfered on Internet composed of packets
* *What happens when you type something into the address bar and press enter?*
    * Make request of server corresponding to domain
    * Request-Response Lifecycle
* [ARPANET](https://en.wikipedia.org/wiki/ARPANET)
    * The first Internet
    * Much, much, much fewer nodes
* [`lo`](https://www.cs.ucla.edu/the-day-the-infant-internet-uttered-its-first-words/)
    * The first message on the Internet
    * UCLA 1969
* [The World Wide Web project](http://info.cern.ch/hypertext/WWW/TheProject.html)
    * The world's first website
    * Everything on the Web is just text
* See [What is the Internet?](https://www.youtube.com/watch?v=Dxcc6ycZ73M)

## Servers & Clients
* *What is a server? What is a client?*
* Servers
    * Computers that serve web pages (RRL)
    * Domain names, IP addresses
    * Process requests, make responses
* Clients
    * Make requests, process responses
    * Us, or, more accurately, our browers

## URLs, Domain Names, IP Addresses, Resources
* Uniform Resource Locator/Identifier
    * Protocol (`http`)
    * Domain (`wikipedia.org`)
    * Resource (`/wiki/ARPANET`)
* Domain names
    * Represent IP addressses
    * `traceroute google.com`
        * Shows route(rs) tp server 
    * `dig`
* IP addresses
    * Everything has an IP address
    * [Domain Name System servers](https://root-servers.org/) map URLs to IP addresses
* What do routers do?
* See requests being made by browser in devtools
* See [IP Addresses & DNS](https://www.youtube.com/watch?v=5o8CwafCxnU)

## What does a browser do?
Tools:
* ping
* nslookup
* traceroute
* curl

## Request/Response Cycle
* HTTP request methods and Resource
    * See: [Mozilla Developer's Network](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods)
        * `GET`: gimme some info
            * `curl http://www.google.com`
            * Postman
            * "View page source"
        * `POST`: here's some info, process it and respond
        * Only `GET` and `POST` are supported everywhere 
    * "Stateless"
        * No interaction between different requests
        * Response only to individual request
    * Resource
        * After the `/` 
* CRUD
* Status codes
    * Tell us what happened!
    * [HTTP Cats](https://http.cat/)
    * *What HTTP request would trigger a ###?*
    * 100: Info
    * 200: Okay!
    * 300: Redirect
    * 400: Client errors (your bad)
    * 500: Server errors (their bad)
    * See: Network tab of devtools

## [Rack](https://rack.github.io/)
* Request-response server gem
* We don't really know how it works, and that's okay!
* `shotgun`

## Static vs. Dynamic Sites

## Granularity of Concern
* Convention > Configuration
* Trade freedom for efficiency (e.g. literally write the HTML as a string)
* BONUS: [Packets, Routing, & Reliability](https://www.youtube.com/watch?v=AYdF7b3nMto)