#!/usr/bin/env ruby

#
# Implement some functions from nl(1).
#

def nl
  filenames = if ARGV.empty?
                ['-']
              else
                ARGV.uniq
              end

  lineno = 0
  filenames.each do |filename|
    file = if filename == '-'
             $stdin
           else
             File.open(filename)
           end
    begin
      file.each_line do |line|
        if line.chomp.empty?
          print line
        else
          lineno += 1
          print format('%6d', lineno), "\t", line
        end
      end
    ensure
      file.close if file == $stdin
    end
  end
end

nl
