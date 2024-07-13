from flask import Flask, jsonify, request
import psycopg2

app = Flask(__name__)

DATABASE = {
    'dbname': 'cometa',
    'user': 'muhsin',
    'password': 'muhsin',
    'host': '192.168.37.50'
}

def get_db_connection():
    conn = psycopg2.connect(
        dbname=DATABASE['dbname'],
        user=DATABASE['user'],
        password=DATABASE['password'],
        host=DATABASE['host']
    )
    return conn

@app.route('/city/<int:id>', methods=['GET'])
def get_city(id):
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute('SELECT city FROM table1 WHERE id = %s;', (id,))
    city = cur.fetchone()
    cur.close()
    conn.close()
    if city:
        return jsonify({'id': id, 'city': city[0]})
    else:
        return jsonify({'error': 'City not found'}), 404

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
