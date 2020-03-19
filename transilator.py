#!/usr/bin/python

from googletrans import Translator
import csv
import codecs
translator = Translator()

file_r = open("input.csv","r")

#file_w = codecs.open("output.csv",mode="a",encoding='ascii')
file_w = open("output.csv",'a')
inputs = []
out = []
#output = {}

read = csv.reader(file_r)

'''for i in file_r.readrows():
    inputs.append(i.replace("\n",""))'''

for i in read:
	inputs.append(i[0])

print(inputs)
for i in range((len(inputs)-1)):
    translate = translator.translate(str(inputs[i]),src="en",dest="es")
    #key, value = str(translate.origin),str(translate.text)
    value = translate.text.encode('UTF-8')
    out.append(value)
output = zip(inputs,out)
#output = out
print(output)
writer = csv.writer(file_w)

for i in output:
    writer.writerow(i)
    #file_w.write(string)


#writer.close()
file_r.close()
file_w.close()

