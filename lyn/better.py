#common team phrases

import os, json
from talon import Context, Module

mod = Module()
mod.list("ck", desc="content keepers")
mod.list("my_modifiers", desc="content keepers")

secret_dictionary = {}

try:
    with open(os.path.join(os. getcwd(), "secrets.json")) as json_file:
        secret_dictionary = json.load(json_file)
except FileNotFoundError:
    pass

final_dictionary = {
    "the trilogy": "Bsx",
    "my name": "Lyn",
    "my full name": "Lyn Headley",
    "apostrophized": "'s",
    "electronic publication": "ePub",
    "the factory": "ePub factory",
    "my email": "laheadle@gmail.com",
    "work email": "lyn.headley@mheducation.com"
}
final_dictionary.update(secret_dictionary)

ctx = Context()
ctx.lists["user.ck"] = final_dictionary

@mod.capture(rule="{user.my_modifiers}")
def my_modifiers(m) -> str:
    # for example if the user says backs then m is control
    return m
