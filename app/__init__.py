from peewee import MySQLDatabase

from .database import db, UserCripto


def create_app():
    db.create_tables([UserCripto])

    return True
