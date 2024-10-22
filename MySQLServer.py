import mysql.connector
from mysql.connector import Error
except mysql.connector.Error as e:
print(f"Error while connecting to MySQL:{e}")

def create_database():
    try:
        # Connect to MySQL server
        connection = mysql.connector.connect(
            host='localhost',  # Change if your server is different
            user='your_username',  # Replace with your MySQL username
            password='your_password'  # Replace with your MySQL password
        )
        
        if connection.is_connected():
            cursor = connection.cursor()
            # Create database
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
            
mycursor.execute("select * from student")

result = mycursor.fetchall()

for i in result:
print(i)
            
    
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()

if __name__ == "__main__":
    create_database()