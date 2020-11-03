# Notes:

## Using the mk.Makefile alias to create Makefile from Makefile.in

Since the Viper editor: (vn) cannot create explicit Tab chars, use the mk.Makefile
alias to sed it:

```bash
$ cd mdsrc
$ source .alias
$ vn Makefile.in
$ mk.Makefile
# then test or run make
$ make foo1.n
```
