from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hola, Mundo :D'

if __name__ == '__main__':
    # Usa el puerto desde la variable de entorno PORT, o 5000 si no está definida
    port = int(os.environ.get("PORT", 5000))  # Railway pasa la variable PORT
    app.run(host='0.0.0.0', port=port)
