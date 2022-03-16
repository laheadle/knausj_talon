#app.name: vcxsrv.exe
app.name: Emacs
-
(save it | save): key(ctrl-x ctrl-s)
end of line: user.emacs_end_of_line()
give up: key(ctrl-g)
narrow it: key(ctrl-x t n)
block new javascript:
      key(ctrl-c ctrl-, s)
      insert("javascript")
      key(enter)
block new example:
      key(ctrl-c ctrl-, e enter up)
express evaluate: key(ctrl-x ctrl-e)
buffer (eval | evaluate): user.emacs_command("eval-buffer")
buffer end: key(alt-shift->)
buffer start: key(alt-shift-<)
buffer last: key(ctrl-shift-<)
buffer next: key(ctrl-shift->)
buffer other: key(ctrl-x o)
[cow] buffer find <user.text>:
     key(ctrl-b)
     user.emacs_might_insert(text)
buffer kill: key(ctrl-x k)
buffer only: key(ctrl-x 1)
buffer focus: key(ctrl-l)
buffer temp: key(ctrl-b j j enter)
# to do: use some lisp code to copy to the clipboard the name, for saving

(file new | file find) <user.text>:
     key(ctrl-x ctrl-f)
     user.emacs_might_insert(text)

outline knew above: key(ctrl-u ctrl-enter alt-up)
outline knew child: key(ctrl-enter alt-right)
(cow | outline) knew above: key(ctrl-u ctrl-enter alt-up)
(cow | outline) knew child: key(ctrl-enter alt-right)
outline kill: key(ctrl-c ctrl-x ctrl-w)
outline copy: key(ctrl-c ctrl-x alt-w)
outline yank: key(ctrl-c ctrl-x ctrl-y)

clay: key(space)
tax: key(tab)
push:
    user.emacs_end_of_line()
    key(enter)
tickle: key(ctrl-shift-_)
undo: key(ctrl-x u d)
git blame: key(alt-x m a g i t - b l a m e - p o p u p enter b)
git file log:
    user.try_emacs_command("magit-log-buffer-file")
    key(enter)
git file log done:
    key(l = f q q)
big jump:
    key(alt-x)
    insert("ace-jump-char-mode")
    key(enter)
(big jumper) | (cow jump): user.emacs_command("ace-jump-char-mode")
(cow | emacs) run <user.text>: user.try_emacs_command(text)
(cow | emacs) function find <user.text>:
     user.emacs_command("find-function")
     user.emacs_might_insert(text)
(cow | emacs) function help <user.text>:
     user.emacs_command("counsel-describe-function")
     user.emacs_might_insert(text)
((cow note find) | (note find)) <user.text>:
     key(ctrl-c n b)
     user.emacs_might_insert(text)
((cow note file find) | (note file find)) <user.text>:
     key(ctrl-c n f)
     user.emacs_might_insert(text)
((cow search) | (buffer search)) <user.text> [over]:
     key(ctrl-s)
     user.emacs_might_insert(text)
buffer link copy: key(ctrl-c l)
buffer link rename: key(ctrl-c ctrl-l)
buffer link yank: key(ctrl-c ctrl-l)     
project outside file find <user.text>:
        key(ctrl-x j f)
        user.emacs_might_insert(text)
        
(cow | project) find <user.text>:
     key(ctrl-x j d)
     user.emacs_might_insert(text)
(cow | project) file find <user.text>:
     key(ctrl-r)
     user.emacs_might_insert(text)
(cow | project) (summary | status):
     key(ctrl-.)
(cow | project) search <user.text>:
     key(ctrl-1 q)
     sleep(100ms)     
     user.emacs_might_insert(text)
(cow | project) folder search <user.text>:
     key(ctrl-u ctrl-1 q enter enter)
     sleep(100ms)     
     user.emacs_might_insert(text)

cow go <user.unmodified_key>:
    user.emacs_command("ace-jump-word-mode")
    key("{unmodified_key}")
    
cover: key(ctrl-d)
word right: key(alt-f)
# org-mode
word left: key(alt-b)

plan new: key(ctrl-c c)
plan exit: key(O)
plan enter: key(I)
plan clock in: key(alt-c I)
plan clock out: key(alt-c O)
plan go: key(ctrl-\ x)
plan focus: user.emacs_command("org-clock-goto")
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
line all: key(ctrl-a ctrl-space ctrl-n ctrl-a alt-w ctrl-p)
line strip: key(ctrl-a alt-\ ctrl-e alt-\)
(cow | buffer) split right: key(ctrl-x 3)
(cow | buffer) split none: key(ctrl-x 1)
(cow | buffer) split down: key(ctrl-x 2)
cow mark: key(ctrl-space)
cow back: key(ctrl-u ctrl-space)
## https://github.com/mankoff/talon/blob/main/emacs/general.talon

go [line] <number>$:
    key(alt-g g)
    insert(number)
    key(enter)


action(edit.copy):
        key(alt-w)

action(edit.cut):
        key(ctrl-w)

action(edit.paste):
        key(ctrl-y)

action(edit.delete_line):
        key(ctrl-shift-backspace)

action(edit.delete_word):
        key(alt-delete)

action(edit.line_end):
        key(ctrl-e)

action(edit.select_all):
        key(ctrl-x h)

action(edit.undo):
        key(ctrl-/)

action(edit.line_start):
        key(ctrl-a)

action(edit.file_start):
        key(alt-shift-<)

action(edit.file_end):
        key(alt-shift->)


submit:  key(ctrl-c ctrl-c)
discard: key(ctrl-c ctrl-k)

line follow down: key(ctrl-alt-n)
line follow up: key(ctrl-alt-p)

search [forward] [<user.text>]:
    key(ctrl-s)
    insert(text or '')

search (rev | reverse) [<user.text>]:
    key(ctrl-r)
    insert(text or '')

search again: key(ctrl-s ctrl-s)

search symbol at point: key(alt-s .)

buffer replace: key(ctrl-alt-%)

complete: key(alt-/)


(hiss | history) (pre | previous | last): key(alt-p)
(hiss | history) next: key(alt-n)

folder rename: key(R)
folder new: key("+")
stash save: key(z z)
stash index: key(z i)
stash pop: key(z p)
cow boot:
    key(alt-x)
    insert("l-c-o")
    key(enter)
snippet drop <user.text>:
        key(ctrl-c & ctrl-s)
        user.emacs_might_insert(text)

snippet new:
        key(ctrl-x j d)
        insert("snippets")
        key(enter)
        key(ctrl-x ctrl-f)
snippet find: key(ctrl-c & ctrl-v)
region (up | expand): key(ctrl-@)

lispy ace paren:
      user.emacs_command("lispy-ace-paren")