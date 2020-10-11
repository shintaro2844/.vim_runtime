# Vim Setting #

## Key maps ##

### Normal Mode ###

#### General ####

| key maps              | description           |
|-----------------------|-----------------------|
| \<leader\>w           | save file             |
| \<leader\>e           | reload vimrc          |
| \<leader\>z           | zen mode              |
| \<leader\>l           | go to next buffer     |
| \<leader\>h           | go to previous buffer |
| \<leader\>.           | go to next tab        |
| \<leader\>cc          | comment               |
| \<leader\>cu          | uncomment             |
| \<leader\>c\<leader\> | comment toggle        |


#### Moving in editor ####

| key maps              | description               |
|-----------------------|---------------------------|
| z\<cr\>               | focus on current line     |
| \<C-o\>               | back to previous position |
| \<C-i\>               | move to next position     |
| \<leader\>\<leader\>w | easy motion               |

#### Useful Comb ####

| key maps | description          |
|----------|----------------------|
| ci{op}   | change innner op     |
| di{op}   | change innner op     |
| dap      | delete all paragraph |
| ct{op}   | change to op         |
| dt{op}   | delete to  op        |
| ysiw{op} | (Hello)              |
| yss{op}  | (Hello world)        |

#### File management ####

| key maps     | description                                                   |
|--------------|---------------------------------------------------------------|
| \<leader\>j  | Quickly find and open a file in the current working directory |
| \<leader\>f  | Quickly find and open a file in the recently open file        |
| \<leader\>b  | Quickly find and open a file in the buffer                    |
| \<leader\>o  | Quickly find and open a file in the buffer                    |
| \<leader\>nn | Nerdtree toggle                                               |
| \<leader\>nb | Nerdtree bookmark                                             |

#### Search & fix ####

| key maps     | description                                                     |
|--------------|-----------------------------------------------------------------|
| \<leader\>g  | Ack                                                             |
| \<leader\>cc | When you search with Ack, display your results in cope by doing |
| \<leader\>n  | To go to the next search result do                              |
| \<leader\>p  | To go to the previous search result do                          |

#### Multi Cursol ####

| key maps              | description                  |
|-----------------------|------------------------------|
| \<C-n\>               | set cursol current selection |
| \<C-\<down\ or up\>\> | set cursol                   |
| n, N                  | move toggle                  |
| q, Q                  | skip toggle                  |


### Insert Mode ###

| key maps | description |
|----------|-------------|
| \<TAB\>  | Complement  |
| \<C-j\>  | Complement  |

### Visual Mode ###

| key maps | description                 |
|----------|-----------------------------|
| *        | highlight current selection |
| #        | highlight current selection |
| +        | expand selection            |
| -        | shrink selection            |
| gv       | Ack current selection       |

## Commands ##

### Normal Mode ###

| key maps               | description           |
|------------------------|-----------------------|
| Tab /{target operator} | format with tabular   |
| :TableFormat           | format markdown table |
| :PlugInstall           | Install plugins       |
| :PlugClean             | Clean up plugins      |
