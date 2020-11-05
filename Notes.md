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

## Bug: links are not created to HTML files, but to  .md files

After running make in mdsrc/, the created HTML files are pointing the
neighbor files from the .md files. Need to get changed in the  eventual .html
files.


## TODO: Fix book ends

The Makefile in mdsrc works to create HTML files, but the outer ends: first and
last .md files will not get the correct neighbor .n files. Needs more smarts.
