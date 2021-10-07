import time
import requests

from app import UserCripto
from app import create_app

STOP_LIMIT = 50000
app = create_app()


def send_notification():
    print('Notificacion via mail')
    print('El correo se envío')


def get_current_price(symbol, vs_currencies="usd"):

    # end-point api de https://www.coingecko.com/es/api/documentation

    # se usan f para podes usar placeholder {symbol} y {vs_currencies}
    response = requests.get(
        f'https://api.coingecko.com/api/v3/simple/price?ids={symbol}&vs_currencies={vs_currencies}')

    if response.status_code == 200:
        payload = response.json()

        # print("precio:", payload)

        return payload[symbol][vs_currencies]


if __name__ == '__main__':

    cripto = 'bitcoin'
    dolares = "usd"
    pesos_argentinos = "ars"

    while True:
        usd = get_current_price(cripto, dolares)
        print("Precio del Bitcoin en Dolares: u$s", usd)

        ars = get_current_price(cripto, pesos_argentinos)
        print("Precio del Bitcoin en Pesos Argentinos: $", ars)

        print("Valor del Dolar: $ ", ars/usd)
        print("Valor del Peso Argentino: $ ", usd/ars)

        for limit in UserCripto.select().where(UserCripto.stop_limit < usd):
            send_notification()

            UserCripto.update(stop_limit=None).where(
                UserCripto.id == limit.id).execute()

        time.sleep(15)
