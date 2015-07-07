require 'ezmq'
class Logger

  def initialize options={}
    @port = options[:port]
    @topic = options[:topic]
    @transport = options[:transport]
    @delay = options [:delay]
    @logger = EZMQ::Publisher.new :connect, port: @port, transport: @transport
    sleep 1 if @delay
  end

  def log message
    @logger.send message, topic: @topic
  end

end

# delayed mode will sleep for 1 second after initializing the publisher