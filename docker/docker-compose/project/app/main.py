from flask import Flask, render_template
import mysql.connector

app = Flask(__name__)

@app.route('/')
def index():
    try:
        mydb = mysql.connector.connect(
            host="db",
            user="root",
            password="root",
            database="mydb"
        )
        cursor = mydb.cursor()
        cursor.execute("SELECT 'Conexión exitosa a MySQL!'")
        result = cursor.fetchone()[0]
        cursor.close()
        mydb.close()
        return render_template('index.html', message=result)
    except Exception as e:
        return f"Error al conectar a MySQL: {e}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)