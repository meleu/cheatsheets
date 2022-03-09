---
tags [ vim ]
---

# search

*     search the word in the cursor
\#    search the word in the cursor backwards


# movement

{         top of the current paragraph
}         bottom of the current paragraph
H, M, L   (High, Middle, Low) top, middle, bottom of the viewport
f{char}   find a char forward in the line ('F' goes backward)
t{char}   find a char forward in line and move right before it ('T' backward)
;         repeat last f, F, t or T command
,         repeat last f, F, t or T command, but in opposite direction
m{char}   mark the current line as {char}
\'{char}   go to the line marked as {char}
m{CHAR}   mark the current line in the specific file as {CHAR}


# text objects

tip 1 : prefer using text-objects rather than motions in
        order to increase repeatability (see ':h text-objects').
tip 2 : practice using 'v' (visual).
note  : the combinations below are intended to be used AFTER an
        action key (e.g.: 'diw' delete inner word).

iw, aw    "inner word", "a word" ('a' includes space)
ip, ap    "inner paragraph"...
is, as    "inner sentence "...
i), a)    "inner parenthesis", 'a' includes surrounding ')' (same for { and [)
i", a"    "inner quotes"... (same for single quote)
it, at    "inner tag" (HTML tag)


# File management

:e              reload file
:x              write file and exit


# Insertion
#   To exit from insert mode use Esc or Ctrl-C
#   Enter insertion mode and:

:r {file}       insert from file



# ---[ from the original cheatsheet ]---



# Multiple windows
:e filename      - edit another file
:split filename  - split window and load another file
ctrl-w up arrow  - move cursor up a window
ctrl-w ctrl-w    - move cursor to another window (cycle)
ctrl-w_          - maximize current window
ctrl-w=          - make all equal size
10 ctrl-w+       - increase window size by 10 lines
:vsplit file     - vertical split
:sview file      - same as split, but readonly
:hide            - close current window
:only            - keep only this window open
:ls              - show current buffers
:.! <command>    - shell out

# Buffers
# move to N, next, previous, first last buffers
:bn              - goes to next buffer
:bp              - goes to prev buffer
:bf              - goes to first buffer
:bl              - goes to last buffer
:b 2             - open buffer #2 in this window
:new             - open a new buffer
:vnew            - open a new vertical buffer
:bd 2            - deletes buffer 2
:wall            - writes al buffers
:ball            - open a window for all buffers
:bunload         - removes buffer from window
:taball          - open a tab for all buffers

# Pointers back
ctrl-o

# Pointers forward
ctrl-o

# Super search
ctrl-p
