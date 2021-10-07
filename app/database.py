from peewee import *

from local_settings import USERNAME_DB, PASSWORD_DB


db = MySQLDatabase('cripto',
                   user=USERNAME_DB,
                   password=PASSWORD_DB,
                   host='localhost',
                   port=3306)


class UserCripto(Model):
    # username
    # token
    stop_limit = IntegerField(null=True)

    class Meta:
        database = db
        table_name = 'user_criptos'

    def __str__(self):
        return f'Stop limit {self.stop_limit}'
