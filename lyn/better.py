#common team phrases

from talon import Context, Module

mod = Module()
mod.list("ck", desc="content keepers")


ctx = Context()
ctx.lists["user.ck"] = {
    "the trilogy": "Bsx",
    "electronic publication": "ePub",
    "the factory": "ePub factory"
}
