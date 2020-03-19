#!/usr/bin/python

from googletrans import Translator
import csv
import codecs
translator = Translator()

file_r = open("input.txt","r")

#file_w = codecs.open("output.csv",mode="a",encoding='ascii')
file_w = open("output.csv",'a')
inputs = []
out = []
#output = {}

for i in file_r.readlines():
    inputs.append(i.replace("\n",""))

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
