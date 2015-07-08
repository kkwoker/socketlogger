Socket Logger



```ruby
require 'socketlogger'

metrics = Logger.new port: 4000, topic: 'cheese', transport: :tcp, delay: true

puts metrics.log "Message Message Message"
```


`delay: true` adds a 1 second timeout after the publisher instantiate to allow time for its initial handshaking to complete

