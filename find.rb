#!/usr/bin/env ruby
# Usage: ./find.rb '\.rb$'

path = '.'
pattern = Regexp.new(ARGV[0] || '')

def find(path, regexp)
  Dir.open(path) do |dir|
    dir.each do |name|
      next if ['.', '..'].include?(name)
      if FileTest.directory?(name)
        find(name, regexp)
      elsif regexp =~ name
        puts File.expand_path(name, path)
      end
    end
  end
end

find(path, pattern)
