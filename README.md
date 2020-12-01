# Vim Setting #

## Usage

```sh
# use nvim (when develop)
nvim

# use vim (when write japanese, markdown ...etc)
vim

# use minimal vim (no plugins)
vimm

```

## Key maps ##

### Normal Mode ###

#### General ####

| key maps              | description    |
|-----------------------|----------------|
| \<leader\>w           | save file      |
| \<leader\>ww          | vimiwiki index |
| \<leader\>e           | reload vimrc   |
| \<leader\>x           | edit README.md |
| \<leader\>z           | zen mode       |
| \<leader\>cc          | comment        |
| \<leader\>cu          | uncomment      |
| \<leader\>c\<leader\> | comment toggle |


#### Moving ####

##### general #####
| key maps    | description                                                                  |
|-------------|------------------------------------------------------------------------------|
| z\<cr\>     | focus on current line                                                        |
| \<C-o\>     | back to previous position                                                    |
| \<C-i\>     | move to next position                                                        |
| \<leader\>f | Quickly find and open a file in the recently open file and current directory |

##### tab #####
| key maps              | description               |
|-----------------------|---------------------------|
| \<leader\><TAB>       | go to next tab            |
| \<leader\><TAB><TAB>  | go to previous tab        |
| \<leader\>tt          | go to first tab           |
| \<leader\>te          | tab edit                  |
| \<leader\>tc          | tab close                 |


##### buffer #####

| key maps              | description               |
|-----------------------|---------------------------|
| \<leader\>o           | buffer explorer           |
| \<leader\>l           | go to next buffer         |
| \<leader\>h           | go to previous buffer     |

#### Useful Comb ####

| key maps | description          |
|----------|----------------------|
| ci{op}   | change innner op     |
| di{op}   | change innner op     |
| ct{op}   | change to op         |
| dt{op}   | delete to op         |
| ysiw{op} | (Hello)              |
| yss{op}  | (Hello world)        |
| dap      | delete all paragraph |

#### Search & fix ####

| key maps     | description                                                     |
|--------------|-----------------------------------------------------------------|
| \<leader\>g  | Ack                                                             |
| \<leader\>cc | When you search with Ack, display your results in cope by doing |
| \<leader\>n  | To go to the next search result do                              |
| \<leader\>p  | To go to the previous search result do                          |

### Insert Mode ###

| key maps | description |
|----------|-------------|
| \<TAB\>  | Complement  |
| \<C-j\>  | Complement  |
| \<C-n\>  | Complement  |
| \<C-p\>  | Complement  |

### Visual Mode ###

| key maps     | description                 |
|--------------|-----------------------------|
| *            | highlight current selection |
| #            | highlight current selection |
| \<leader\>gv | Ack current selection       |

## Commands ##

### Normal Mode ###

| key maps                      | description           |
|-------------------------------|-----------------------|
| Tabularize /{target operator} | format with tabular   |
| :term                         | open terminal mode    |
| :TableFormat                  | format markdown table |
| :PlugInstall                  | Install plugins       |
| :PlugClean                    | Clean up plugins      |

## Tips
### Macro

```
# recording
q{register}{your macro}q

# call macro 
@{register}

# repeat macro
@@
```



