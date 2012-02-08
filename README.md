# For The Web

net/http is pretty much not good.

I want:

* A HTTP client that acts as a full user agent, not just a single connection.
* HTTP and SPDY support.
* WebSockets support.
* SSL/TLS support.
* An API that lets me do what I need.
* Server and Client modes.
* Support for both normal operation and EventMachine would be nice.

## DONE

* TCP connection 
* DNS resolution (wraps Socket.gethostname)
* HTTP client partially done

## TODO

* Tests, yo.
* Logging, yo. With cabin, obviously.
* [DNS in Ruby stdlib is broken](https://github.com/jordansissel/experiments/tree/master/ruby/dns-resolving-bug), I need to write my own

## API Scratch

### Common case

    agent = FTW::Agent.new
    request = agent.get("http://www.google.com/")
    response = request.execute

### SPDY

    # SPDY should automatically be attempted. The caller should be unaware.

### WebSockets

    # 'http(s)' or 'ws(s)' urls are valid here. They will mean the same thing.
    request = agent.websocket("http://somehost/endpoint")
    # Set auth header
    request["Authorization"] = ...
    request["Cookie"] = ...

    websocket, error = request.execute
    # Now websocket.read receives a message, websocket.write sends a message.

