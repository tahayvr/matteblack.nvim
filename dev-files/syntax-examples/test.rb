#
# Theme Test File for Ruby
# This file showcases various Ruby syntax elements.
#

# --- Comments ---
# This is a standard comment.
# TODO: Refactor the User model to use a service object.
# FIXME: The session handling has a security vulnerability.

# --- Requires and Modules ---
require 'json'
require 'net/http'

module MyCoolApp
  # --- Constants and Globals ---
  VERSION = '1.0.0'.freeze
  $global_setting = true

  # --- Class Definition ---
  class Greeter
    # A symbol used as a key
    attr_accessor :name

    # @variable.builtin: `self`
    def initialize(name = "World")
      @name = name # An instance variable
      @@instance_count ||= 0 # A class variable
      @@instance_count += 1
    end

    def greet
      # A string with interpolation
      puts "Hello, #{@name}!"
    end

    # A class method
    def self.instance_count
      @@instance_count
    end

    private

    def secret_method
      # This method is private
    end
  end
end

# --- Basic Usage ---
greeter = MyCoolApp::Greeter.new("Rubyist")
greeter.greet

# --- Data Structures ---
simple_array = [1, 2, 'three', :four]
simple_hash = { key: "value", "another_key" => 123 }
a_range = (1..10)
a_regex = /^[a-z]+$/

# --- Control Flow ---
# @conditional: if/unless
if $global_setting
  puts "Global setting is on."
end

unless greeter.name == "World"
  puts "You have a custom name!"
end

# @repeat: loops
simple_array.each do |item|
  puts "Item: #{item}"
end

3.times { |i| puts "Loop ##{i}" }

# --- Blocks and Procs ---
a_proc = Proc.new { |x| x * 2 }
puts (1..3).map(&a_proc) # => [2, 4, 6]

# --- Error Handling ---
# @exception: begin/rescue
begin
  result = 10 / 0
rescue ZeroDivisionError => e
  puts "Caught an exception: #{e.class}"
end

# --- Metaprogramming ---
class String
  def say_hi
    "Hi, I'm a String!"
  end
end

# --- Deliberate Syntax Error ---
# Remove the '#' to test LSP diagnostics
# an_error = "hello" world
