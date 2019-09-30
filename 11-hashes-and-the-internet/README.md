# APIs, or "Hashes + the Internet"

## SWBATs

### How the Internet Works

- [ ] Recognize the parts of the request-response lifecycle
    - Request from client to server
    - Response from server to client
- [ ] Define client and describe setting up the request
    - HTTP Verbs
    - Request Header
- [ ] Define server and describe how the response is formatted
    - Headers
    - Body
- [ ] Identify HTML as a response type
- [ ] Identify JSON as a response type

### Ruby Fundamentals

- [ ] Understand what a "gem" is, and how to use them
    - `ENV`
    - 'A library by any other name...'
- [ ] Explain how missing keys lead to `undefined method ... for nil:NilClass`

### APIs

- [ ] Define Application Programming Interface (API)
    - A general connectivity interface to an application (e.g. a butler)
    - A standardized means of interaction 
- [ ] Explain the uses of an API on the Internet
    - Easy, up-to-date access to information
    - Connecting LEGOs
- [ ] Explain the difference between using an API and scraping
    - API: information is organized and packaged for sharing
    - Scraping: ore vs. ingots
- [ ] Practice making requests to an API and parsing and examining the result
- [ ] Practice writing a command line application (CLI)

## Deliverables

- [ ] Use the `rest-client` gem to make a request to the [Google Books API])(https://developers.google.com/books/docs/v1/using) with a given query
    - `RestClient.get`
    - `JSON.parse`
- [ ] Parse the response to find the title, author, and description of each book
    - Identify valuable key
    - Map array
- [ ] Convert the hard-coded query into an interactive CLI query
    - `gets#chomp`
    - Plug into query

## Resources

1. [Postman](https://www.getpostman.com/)
2. [`rest-client` gem](https://github.com/rest-client/rest-client#usage-raw-url)
3. [Google Books API docs](https://developers.google.com/books/docs/v1/using#WorkingVolumes)
4. [`json` gem](https://ruby-doc.org/stdlib-2.0.0/libdoc/json/rdoc/JSON.html#method-i-parse)
