#!/usr/bin/env ruby

# This script listens to the specified audio stream and lets you know through
# Terminal and OS X's Notification Center when the song changes.

require "shoutout"

unless ARGV[0]
  STDERR.puts "Usage: now_playing.rb [STREAM URL]"
  exit 1
end

stream = Shoutout::Stream.new(ARGV[0])

stream.connect

puts "Listening to #{stream.name}"

stream.metadata_change do |metadata|
  now_playing = [metadata.artist, metadata.song].join(" - ")

  puts "Now playing: #{now_playing}"

end

trap("INT") { stream.disconnect }
stream.listen