require_relative 'lib/socketlogger'

logger = Logger.new port: 4000, transport: :tcp, topic: 'logging', delay: true

50.times do |i|
	puts logger.log "A#{i}"
end
sleep(3)
50.times do |i|
	puts logger.log "B#{i}"
end
