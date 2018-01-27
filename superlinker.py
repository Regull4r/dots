import os

def yesno(string):
    msg = " [Y/n]"
    yes = ["yes", "y", ""]
    no = ["no", "n"]
    while(True):
        choice = input(string + msg +  " ").lower()
        if choice in yes:
            return True
        elif choice in no:
            return False
        else:
            print("Please respond with 'yes' or 'no'")
        
home = os.path.expanduser("~")
#pick dirs not starting by .
confiles = [x for x in os.listdir(".") if x[0] != "." and os.path.isdir(x)]
print("Configuration dirs -> " + str(confiles))

lpath = []
path = ""
for x in confiles:
    for dirpath, dirs, files in os.walk(x):
        ruta = dirpath
    for y in files:
        lpath.append(ruta + "/" +  y)
    

symlinks = [os.path.join(home, '/'.join(x.split("/")[1:])) for x in lpath]
syncedfiles = [os.path.join(os.path.abspath("."), '/'.join(x.split("/"))) for x in lpath]

#print(*symlinks, sep ="\n")
#print(*syncedfiles, sep = "\n")
def symlinker(sourceL, lnkL):
    for src, lnk in zip(sourceL, lnkL):
        if os.path.exists(lnk) and not os.path.islink(lnk):
            if yesno("File" + lnk + " exists. Overwrite? \n") is True:
                os.remove(lnk)
            else:
                try:
                    os.makedirs(os.path.dirname(lnk))
                except OSError as err:
                    print(err)
                else:
                    print(lnk + " created. \n")
        else if os.path.islink(lnk):
            if os.readlink(lnk) != src:
                if yesno("Change" + lnk + "source? \n") is True:
                    os.remove(lnk)
        try:
            os.symlink(src, lnk)
        except OSError as err:
            print(lnk + " -> " + src + " already exists \n")
        else:
            print(lnk + " -> " + src + " created. \n")
            

symlinker(syncedfiles, symlinks)
        
