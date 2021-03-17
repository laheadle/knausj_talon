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
    def emacs_evaluate(name: str):
        "evaluate emacs lisp code"
        actions.key("alt-:")
        actions.insert(name)
        actions.key("enter")
    def try_emacs_command(name: str):
        "execute emacs command"
        actions.key("alt-x")
        actions.insert(name)
    def try_emacs_buffer(name: str):
        "find emacs buffer"
        actions.key("ctrl-b")
        print(name)
        if name != "it":
            actions.insert(name)
    def emacs_end_of_line():
        "go to end of line"
        actions.key("ctrl-e")
