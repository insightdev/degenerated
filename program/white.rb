#!/bin/ruby

puts "Enter your file:"
infile = gets.chomp
outfile=(infile.split(".")).first+"_edit."+(infile.split(".")).last

File.open(outfile,'w') do |outfile|
	File.open(infile,'r').each do |line|
		if (line.include? "GEN-FIRST")
			outfile.print line.sub(/\/\/GEN-(FIRST|LAST).*$/,'')
		else
			outfile.print line
		end
	end
end