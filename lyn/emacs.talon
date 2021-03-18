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
buffer find <user.text>:
     key(ctrl-b)
     user.emacs_might_insert(text)

buffer kill: key(ctrl-x k)
buffer only: key(ctrl-x 1)
find file: key(ctrl-x ctrl-f)
outline knew above: key(ctrl-u ctrl-enter alt-up)
outline knew child: key(ctrl-enter alt-right)
(cow | outline) knew above: key(ctrl-u ctrl-enter alt-up)
(cow | outline) knew child: key(ctrl-enter alt-right)
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
(big jumper) | (cow jump): user.emacs_command("ace-jump-char-mode")
(cow | emacs) run <user.text>: user.try_emacs_command(text)
(cow | emacs) find function <user.text>:
     user.emacs_command("find-function")
     user.emacs_might_insert(text)
((cow find note) | (cow note)) <user.text>:
     key(ctrl-c n b)
     user.emacs_might_insert(text)
((cow search) | (line search)) <user.text> [over]:
     key(ctrl-s)
     user.emacs_might_insert(text)
(cow | emacs) project find <user.text>:
     key(ctrl-x j d)
     user.emacs_might_insert(text)
(cow | emacs) project file find <user.text>:
     key(ctrl-r)
     user.emacs_might_insert(text)
(cow | emacs) project summary:
     key(ctrl-.)
(cow | emacs) project search <user.text>:
     key(ctrl-1 q)
     sleep(100ms)     
     user.emacs_might_insert(text)
cow go <user.unmodified_key>:
    user.emacs_command("ace-jump-word-mode")
    key("{unmodified_key}")
    
cover: key(ctrl-d)
# org-mode
plan go: key(ctrl-\ x)
plan restart:
     key(ctrl-\ x)
     sleep(100ms)
     user.emacs_evaluate("(funcall-interactively 'org-agenda-clock-in '(4))")

line clear: key(ctrl-a ctrl-space ctrl-n ctrl-a ctrl-w)
line kill: key(ctrl-k)
#line down: key(ctrl-a enter)
line start: key(ctrl-a)
line end: key(ctrl-e)
line rest: key(alt-k)
line all: key(ctrl-a ctrl-space ctrl-n ctrl-a alt-w)
(cow | window) split right: key(ctrl-x 3)
(cow | window) split none: key(ctrl-x 1)
(cow | window) split down: key(ctrl-x 2)
cow mark: key(ctrl-space)