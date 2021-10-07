import requests

def get_current_price(symbol, vs_currencies="ars"):

    # end-point api de https://www.coingecko.com/es/api/documentation

    # se usan f para podes usar placeholder {symbol} y {vs_currencies}
    response = requests.get(f'https://api.coingecko.com/api/v3/simple/price?ids={symbol}&vs_currencies={vs_currencies}')

    if response.status_code == 200:
        payload= response.json()

        print(payload)

        return payload[symbol][vs_currencies]

if __name__ == '__main__':
    print(
        get_current_price('bitcoin')
    )
