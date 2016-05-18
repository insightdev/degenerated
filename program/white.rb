#!/bin/ruby
infile=gets.chomp
infileForOut = infile.split(".")
outfile=infileForOut.first+"_edit."+infileForOut.last

File.open(outfile,"w") do |out|
	out << File.open(infile).read.gsub(/\/\/GEN-.*$/,'')
end