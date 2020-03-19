#!/usr/bin/ruby
require "easy_translate"

input_file = ARGV[0]
output_file = ARGV[1]

#a = ["hello","world","Our service allows you to purchase a new car at an attractive price, while saving you all the trouble of handling your old car"]

hash_transilated = {}

list_read = nil

File.open(input_file,"r") do |file_read|

	list_read = file_read.readlines
end

for i in (0...list_read.size) do

	list_read[i] = list_read[i].chomp
end

for i in list_read do

	key_var = i.to_sym

	value_var = EasyTranslate.translate(i,:from => :english,"en")
	
	hash_transilated[key_var] = value_var
	
end

file_write = File.open(output_file,"a")

for i in hash_transilated do

	str = (i[0].to_s)+":"+(i[1].to_s)+"\n"
	file_write.write(str)
end

file_write.close


end_credits =<<BEGIN
The output file format is
"Text in english":"Text in domanic republic spanish" 
without the "" (double quotes)
with a \"\\n\" charater
BEGIN


puts end_credits
