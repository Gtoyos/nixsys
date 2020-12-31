#BATTERY DETECTOR FOR I3BLOCKS
def main():
    yellow = '\033[31m'
    red = '\033[33m'
    endansi = '\033[0m'

    with open("/sys/class/power_supply/AC/online", "r") as  f:
        ac = f.read()
    with open("/sys/class/power_supply/BAT0/capacity", "r") as f:
        ca = f.read()
    ac = ac.rstrip("\n")
    ca = ca.rstrip("\n")
    if (int(ac) == 0):
        #if (int(ac) <= 5):
        #    print(red+"🔋"+str(ca)+"%"+endansi)
        #elif (int(ac) <= 10):
        #    print(yellow+"🔋"+str(ca)+"%"+endansi)
        #else:
            print("🔋"+str(ca)+"%")
    else:
        print("🔌"+str(ca)+"%")
    if (int(ca) <= 5):
        print("\n#FA1E44") #red
        return 33
    elif (int(ca) <= 10):
        print("\n#D0D000") #yellow
    return 0 
main()
