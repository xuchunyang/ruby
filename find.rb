#!/usr/bin/env ruby
# Usage: ./find.rb '\.rb$'

path = '.'
pattern = Regexp.new(ARGV[0] || '')

def find(path, regexp)
  Dir.open(path) do |dir|
    dir.each do |name|
      next if ['.', '..'].include?(name)
      name = File.expand_path(name, path)
      if FileTest.directory?(name)
        find(name, regexp)
      elsif regexp =~ name
        puts name
      end
    end
  end
end

find(path, pattern)
