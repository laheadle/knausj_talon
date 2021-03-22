#common team phrases

from talon import Context, Module

mod = Module()
mod.list("ck", desc="content keepers")
mod.list("my_modifiers", desc="content keepers")

ctx = Context()
ctx.lists["user.ck"] = {
    "the trilogy": "Bsx",
    "my name": "Lyn",
    "my full name": "Lyn Headley",
    "apostrophized": "'s",
    "healthy": "1990Theyearsme!",
    "electronic publication": "ePub",
    "the factory": "ePub factory",
    "my email": "laheadle@gmail.com"
}
ctx.lists["user.my_modifiers"] = {
    "track": "alt",
    "truck": "ctrl"
}
@mod.capture(rule="{user.my_modifiers}")
def my_modifiers(m) -> str:
    # for example if the user says backs then m is control
    return m
