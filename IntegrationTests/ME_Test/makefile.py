
fr = open("VMStubs_VMSME_L1PHIE20n1_04.dat","r")
f = open("file","w")
event1 =[]
event2 =[]

debug = True
ne =0
for line in fr:
    if "Event" in line:
        ne += 1
    elif ne == 1:
        event1.append(line)
    elif ne == 2:
        event2.append(line)

countword1 = 0
print event1
previousword = "1"
page = 0
for word in event1:
    if previousword != word[0] and (countword1 !=0 or word[0] != "0"):  #new bin
        page += 1
        if debug==True:
            print word
        for i in range(0,16-countword1):
            f.write("0x0000\n")
        if debug==True:
            print "Wrote ",16-countword1," zeros"
        if word[0]!=str(page):
            for i in range(0,16*(int(word[0])-page)):
                f.write("0x0000\n")
            if debug==True:
                print "Wrote ",16*(int(word[0])-page)," zeros"
            page += int(word[0])
#        f.write(word[4:20].replace("|","")+"\n")
        f.write(word[21:27]+"\n")
        print "page: ", word[0], " ", page
#        print word[4:20].replace("|","")
        countword1 = 1
    else:
        if debug==True:
            print "Just wrote: ", word
        countword1 += 1
        f.write(word[21:27]+"\n")
#        f.write(word[4:20].replace("|","")+"\n")
    previousword = word[0]

countword2 = 0
page = 0
for word in event2:
    if countword2 == 0:
        for i in range(0,16-countword1):
            f.write("0x0000\n")
        if debug==True:
            print "Wrote ", 16-countword1, " zeros"
    if previousword != word[0] and (countword2 !=0 or word[0] != "0"):
        page += 1
        for i in range(0,16-countword2):
            f.write("0x0000\n")
        if debug==True:
            print "Wrote ", 16-countword2, " zeros"
        if word[0]!=str(page):
            for i in range(0,16*(int(word[0])-page)):
                f.write("0x0000\n")
            if debug==True:
                print "Wrote ", 16*(int(word[0])-page), " zeros"
            page += int(word[0])
#        for i in range(0,129-countword2):
 #           f.write("0\n")
#        f.write(word[4:20].replace("|","")+"\n")
        f.write(word[21:27]+"\n")
        print "page: ", word[0]
        print word[21:27]
        countword2 = 1
    else:
        print word[21:27]
        print countword2
        countword2 += 1
#        f.write(word[4:20].replace("|","")+"\n")
        f.write(word[21:27]+"\n")
    previousword = word[0]

for i in range(0,16-countword2):
            f.write("0x0000\n")

f.close()
fr.close()
    
