from flask import Flask, request


def create_app():
    app = Flask(__name__)
    app.debug = True
    return app


app = create_app()


@app.route('/', methods=['GET'])
def bp_index():
    return 'hello'


@app.route('/dropbox/webhook', methods=['GET'])
def bp_dropbox_get():
    if 'challenge' in request.values:
        return request.values['challenge']
    return 'ok'


@app.route('/dropbox/webhook', methods=['POST'])
def bp_dropbox_post():
    event = request.json
    print(event)
    return 'ok'


if __name__ == '__main__':
    app.run()