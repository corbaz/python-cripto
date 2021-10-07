import requests


def get_current_price(symbol, vs_currencies="ars"):

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
    usd = get_current_price(cripto, dolares)
    print("Precio del Bitcoin en Dolares: u$s", usd)

    pesos_argentinos = "ars"
    ars = get_current_price(cripto, pesos_argentinos)
    print("Precio del Bitcoin en Pesos Argentinos: $", ars)

    print("Valor del Dolar: $ ", ars/usd)
    print("Valor del Peso Argentino: $ ", usd/ars)
