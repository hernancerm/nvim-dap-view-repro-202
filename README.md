## Requirements

- nvim
- tmux
- debugpy (`python3 -m pip install debugpy`)
- bash
- git

## Steps

```
bash setup.bash
```

```
bash repro.bash
```

```
grep '^Hello, World!' evidence.txt
```

If `grep` shows one match, the bug happened. `evidence.txt` showing the bug:

```
===== After step 6 (first run) =====
print("Hello, World!")
~
~
~
~
~
~
~
~
~
~
~
~
~
~
scratch.py                                                  1,1            All
 Console [C]
Hello, World!

[Process exited 0]


[dap-terminal] file [-]                                     5,0-1          All


===== After step 9 (second run) =====
print("Hello, World!")
~
~
~
~
~
~
~
~
~
~
~
~
~
~
scratch.py                                                  1,1            All
 Console [C]





[dap-terminal] file [-]                                     12,0-1         Bot


```
