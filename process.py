log_file = open("um-server-01.txt") #This opens the um-server file


def sales_reports(log_file): #creates function that uses file
    for line in log_file: #for every line of info
        line = line.rstrip() #removes whitespace
        day = line[0:3] #grabs the first 3 characters which will be the day of info: used for filtering
        if day == "Mon": #sets which day of info will be printed out
            print(line) #prints it out


sales_reports(log_file) #calls the function
log_file.close

log_file = open("um-server-01.txt") 

def getOver(log_file):
    for line in log_file:
        line = line.split(" ")
        melonNum = int(line[2])
        if(melonNum > 10):
            print(line)


getOver(log_file)

log_file.close
