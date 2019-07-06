from selenium import webdriver
from getpass import getpass
from bs4 import BeautifulSoup
from os import path
from datetime import date
import time, json, os, mysql.connector as mysql
today = date.today()

mydb = mysql.connect(
    host = "localhost",
    user = "root",
    password = "undefined",
    database = "cliqdb"
)

cursor = mydb.cursor()
cursor.execute('create database if not exists cliqdb')
cursor.execute('create table if not exists thoughts (id integer primary key auto_increment, date text, thought text)')


print('Please enter your username and password for cliq\n')
username = input('Enter your username: ')
password = getpass("Enter your password: ")
driver = webdriver.Chrome()

driver.get('https://accounts.zoho.com/signin?servicename=ZohoChat&signupurl=https://www.zoho.com/cliq/signup.html')
driver.find_element_by_id('lid').send_keys(username)
driver.find_element_by_id('pwd').send_keys(password)
driver.find_element_by_id('signin_submit').click()

time.sleep(25) # waiting for 25 seconds so that we can load the login page whose data we want
mydata = driver.execute_script('return document.documentElement.outerHTML')

print (driver.title)

bs = BeautifulSoup(mydata, 'html.parser')
# print (bs)
div1 = bs.find('div', attrs= {'class': 'sm_preloader', 'id': 'officechat'})
# print (div1)
div3 = div1.find('div', attrs = {'class': 'zccontent', 'id': 'outercontainer'})
# print (div3)
div4 = div3.find('div', attrs = {'class': 'zcdashnotify', 'id': 'zcdashnotify'})
# print (div4)
div5 = div4.find('div', attrs = {'class': 'zcdqut msi-qut zcqut_anim', 'id': 'quotecontainer'})
# print (div5)
time.sleep(3)
finaldiv = div5.find('div', attrs={'class': 'zcquttxt', 'id': None})
text = finaldiv.text
for i in range(len(text)-1, -1, -1):
    if (text[i] == '.'):
        index = i
        output = text[0: i+1]
        break
# print(output)
# output = "Buy the cake for me."
date = today.strftime("%B %d, %Y")
cursor.execute('select * from thoughts where thought = "'+output+'";')
data = cursor.fetchall()
if len(data) == 0:
    cursor.execute('insert into thoughts (date, thought) values (%s, %s)', (date, output))
    mydb.commit()

thoughtsdic = {}
exists = path.exists(os.getcwd()+'/thoughts.json')
if not exists:
    with open(os.getcwd()+'/thoughts.json', 'w') as file:
        if (os.path.getsize('/home/yogi/Downloads/thoughts.json') == 0):
            file.write(json.dumps([]))
            file.close()

with open(os.getcwd()+'/thoughts.json', 'r+') as file:
        data = json.loads(file.read())
        thoughtsdic['date'] = date
        thoughtsdic['id'] = len(data)+1
        thoughtsdic['thought'] = output
        # print (thoughtsdic)

        for i in data:
            if i['thought'] == output:
                break
        else:
            data.append(thoughtsdic)

with open(os.getcwd()+'/thoughts.json', 'w') as files:
        jsondata = json.dumps(data, indent=4, sort_keys=True)
        files.write(jsondata)
        files.close()
