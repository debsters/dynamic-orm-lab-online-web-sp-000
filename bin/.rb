#!/usr/bin/env ruby
require 'sqlite3'

require_relative "../lib/interactive_record.rb"
require_relative "../lib/student.rb"
require_relative "../config/environment.rb"

student = Student.new(name: "Loki", grade: 12)
puts "student name: " + student.name
puts "song grade: " + student.grade.to_s
student.save

puts Student.find_by_name("Loki")

# DB[:conn].execute("SELECT * FROM students")
