#!/usr/bin/ruby
# Lampiao Sec Team

require 'socket'
require 'timeout'

print "IP Address: "
ip = gets.chomp

doors=[nil]

ports=1..65536
ports.each do |scan|

begin
   Timeout::timeout(10){TCPSocket.new("#{ip}", scan)}
   rescue
      puts "closed:#{scan}"     
   else
      puts "------------------------"
      puts "open door:#{scan}"
      puts "------------------------"
      sleep 1
      doors.push(scan)
   end

end

puts "Finalizado!"
sleep 2
puts "Portas abertas: #{doors}"
sleep 1
puts "LAMPIAOSEC TEAM"
