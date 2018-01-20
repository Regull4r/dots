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
syncedfiles = [os.path.join(os.path.abspath("."), '/'.join(x.split("/")[1:])) for x in lpath]

#print(*symlinks, sep ="\n")
#print(*syncedfiles, sep = "\n")
def symlinker(sourceL, lnk):
    for src, lnk in zip(sourceL, linkL):
        if os.path.exists(lnk) and not os.path.islink(lnk):
            if yesno("File exists. Overwrite?") is False:
                break
            else:
                try:
                    os.makedirs(os.path.dirname(lnk))
                except OSError as err:
                    print(err)
                else:
                    print(lnk + " created.")
        #symlink
        try:
            os.selfymlink(src, lnk)
        except OSError as err:
            print(err)
        else:
            print(lnk + " -> " + src + " created.")
            
            
        
