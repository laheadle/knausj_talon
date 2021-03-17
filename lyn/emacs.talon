app.name: Emacs
-
(save it | save): key(ctrl-x ctrl-s)
end of line: user.emacs_end_of_line()
give up: key(ctrl-g)
buffer end: key(alt-shift->)
buffer start: key(alt-shift-<)
buffer last: key(ctrl-shift-<)
buffer next: key(ctrl-shift->)
buffer other: key(ctrl-x o)
buffer find <user.text>: user.try_emacs_buffer(text)
find file: key(ctrl-x ctrl-f)
outline knew above: key(ctrl-u ctrl-enter alt-up)
outline knew child: key(ctrl-enter alt-right)
clay: key(space)
tax: key(tab)
push:
    user.emacs_end_of_line()
    key(enter)
(trake | undo): key(ctrl-shift-_)
big jump:
    key(alt-x)
    insert("ace-jump-char-mode")
    key(enter)
big jumper: user.emacs_command("ace-jump-char-mode")
command emacs <user.text>: user.try_emacs_command(text)
# org-mode
plan go: key(ctrl-\ x)
plan restart:
     key(ctrl-\ x)
     sleep(100ms)
     user.emacs_evaluate("(funcall-interactively 'org-agenda-clock-in '(4))")

line clear: key(ctrl-a ctrl-k)
line down: key(ctrl-a enter)
line rest: key(alt-k)
line all: key(ctrl-a alt-k)