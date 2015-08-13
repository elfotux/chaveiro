#!/usr/bin/ruby
#encoding: UTF-8

puts""      
puts"          __________  "
puts"        /   jmMK!!   \ jdC PmD Dnm 0ZMP. oMeKyMdWmh  "
puts"       /              \=======================================================  "                          
puts"      |     _______ _     _ _______ _    _ _______ _____  ______  _____        \ "
puts"     |     |       |_____| |_____|  \\  /  |______   |   |_____/ |     |      / "
puts"     |     |_____  |     | |     |   \\/   |______ __|__ |    \\_ |_____|    / "
puts"      |                 ___________________________________________________/ "
puts"       \               / "
puts"         \____________/ HZ0d, tMvhCqd, 5cCLydY, kmUd, XvmY_u "
puts""
puts""
puts"     #LampiãoSec - Security Research Group"
puts""
puts""

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
