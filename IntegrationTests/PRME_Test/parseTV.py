import os
#Simple python script to parse emData into right format for loading rams in testbench
#loadfile(dir,slicename,datatype,binned,nevent)

debug = False

def writeFileBinned(events, fout):
    f=open(fout,"w")
    countword=0
    for ev in events:
        countword=0
        page = 0
        previousword = "0"
        for word in ev:
            hexword=word.split(" ")[-1]
            if previousword != word[0] and (countword !=0 or word[0] != "0"):  #new bin
                page += 1
                for i in range(0,16-countword): #each bin has 16 slots
                    f.write("0\n")
                if word[0]!=str(page):
                    if debug:
                        print word
                        print page
                    for i in range(0,16*(int(word[0])-page)):
                        f.write("0\n")
                    page=int(word[0])
                if debug:
                    print hexword
                f.write(hexword)
                if debug:
                    print "page: ", word[0], " ", page
                countword = 1
            else:
                countword += 1
                if debug:
                    print hexword
                f.write(hexword)
            previousword = word[0]
        for i in range(0,16-countword):
            if debug:
                print "last page: ", page, " countword: ",countword
            f.write("0\n")
        if page != 7:
            for i in range(0,16*(7-page)):
                f.write("0\n")

    f.close()


def writeFile(events, fout):
    f=open(fout,"w")
    countword=0
    for ev in events:
        countword=0
        for word in ev:
            hexword=word.split(" ")[-1]
            if debug:
                print hexword
            f.write(hexword)
            countword += 1
        for i in range(0,128-countword):
            f.write("0\n")
    f.close()


def makefile(fin, fout, binned, nevent):
    events = []
    fread = open(fin,"r")
    ne = 0
    event = []
    for line in fread:
        if "Event" in line:
            if (ne != 0) and (ne <= nevent):
                events.append(event)
            ne += 1
            event=[]
        elif ne <= nevent:
            event.append(line)

    if binned:
        writeFileBinned(events, fout)
    else:
        writeFile(events, fout)


def loadfile(dir, slice, type,binned,nevent):
    if debug:
        print dir, type, slice
    for path, subdirs, files in os.walk(dir):
        for filename in files:
            if (type in filename) and (slice in filename) and ("MOD" not in filename):
                if debug:
                    print filename
                f = os.path.join(path, filename)
                fout = f.replace(".dat","MOD.dat")
                makefile(f,fout,binned,nevent)


#loadfile("emData/","L3PHIC", "VMProjections_VMPROJ_", False, 2)
loadfile("emData/","L3PHIC", "VMStubs_VMSME_", True, 2)
#loadfile("emData/","L3PHIC", "TrackletProjections_TPROJ_", False, 2)       
