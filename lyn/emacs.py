from talon import Context, Module, actions

mod = Module()


ctx = Context()

@mod.action_class
class emacs_actions:
    def emacs_command(name: str):
        "execute emacs command"
        actions.key("alt-x")
        actions.insert(name)
        actions.key("enter")
    def emacs_might_insert(name: str):
        "maybe insert something"
        if name != "it":
            actions.insert(name)
    def emacs_evaluate(code: str):
        "evaluate emacs lisp code"
        actions.key("alt-:")
        actions.insert(code)
        actions.key("enter")
    def try_emacs_command(name: str):
        "execute emacs command"
        actions.key("alt-x")
        if name != "it":
            actions.insert(name)
    def emacs_end_of_line():
        "go to end of line"
        actions.key("ctrl-e")
