import mysql.connector

mydb = mysql.connector.connect(host="Lytals-MacBook-Pro.local", user="IsaacMawuli", password="MAWULISCAR1$")

mycursor = mydb.cursor()

mycursor.execute("select * from student")

result = mycursor.fetchall()

for i in result:
print(i)
