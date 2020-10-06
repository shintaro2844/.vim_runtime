# Vim Setting #

## Key maps ##

### Normal Mode ###

#### General ####

| key maps              | description           |
|-----------------------|-----------------------|
| \<leader\>w           | save file             |
| \<leader\>e           | reload vimrc          |
| \<leader\>\<leader\>w | easy motion           |
| \<leader\>l           | go to next buffer     |
| \<leader\>h           | go to previous buffer |
| \<leader\>.           | go to next tab        |

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

~~``````~~

### Insert Mode ###

| key maps | description |
|----------|-------------|
| <TAB>    | Complement  |
| <C-j>    | Complement  |

### Visual Mode ###

| key maps | description               |
|----------|---------------------------|
| *        | highlight current section |
| #        | highlight current section |
| gv       | Ack current selection     |

## Commands ##

### Normal Mode ###

| key maps               | description         |
|------------------------|---------------------|
| Tab /{target operator} | format with tabular |
| :TableFormat       | format markdown table         |
| :PlugInstall       | Install plugins         |
| :PlugClean       | Clean up plugins         |
