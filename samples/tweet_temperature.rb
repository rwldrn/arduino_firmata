# -*- coding: utf-8 -*-
#usr/bin/env ruby
require 'rubygems'
$:.unshift File.expand_path '../lib', File.dirname(__FILE__)
require 'arduino_firmata'
require 'tw'

arduino = ArduinoFirmata::Arduino.new

##  LM35DZ -> Analog 1 PIN
puts temp = arduino.analog_read(1)*100*5/1024
client = Tw::Client.new
client.auth
client.tweet "現在の温度 #{temp}度"