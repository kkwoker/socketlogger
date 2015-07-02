require 'kintama'
require 'pry'

context "Logger module" do
  setup do
    require_relative '../lib/socketlogger'
  end

  it "should publish to a socket and return a number equal to length of message + length of topic + 1" do
    message = 'sike!'
    topic = 'logging'
    sent = Logger::log message
    characters_sent = message.length + topic.length + 1
    assert_equal characters_sent, sent
  end

end
