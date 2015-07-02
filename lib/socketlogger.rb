require 'ezmq'

module Logger

  @logger = EZMQ::Publisher.new :connect

  def self.log message
    @logger.send message, topic: 'logging'
  end

end