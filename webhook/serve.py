from flask import Flask, request, render_template

import logging

logger = logging.getLogger(__name__)


def create_app():
    app = Flask(__name__, template_folder='../assets/templates')
    app.debug = True
    return app


app = create_app()


@app.route('/', methods=['GET'])
def bp_index():
    return render_template('404.html', meta={}), 404


@app.route('/dropbox', methods=['GET'])
def bp_dropbox_get():
    if 'challenge' in request.values:
        return request.values['challenge']
    return 'ok'


@app.route('/dropbox', methods=['POST'])
def bp_dropbox_post():
    event = request.json
    logger.info(event)
    return 'ok'


if __name__ == '__main__':
    app.run()
