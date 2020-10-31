YCM_PATH=~/.vim_runtime/my_plugins/YouCompleteMe

sudo apt install cmake python3-dev
rm -rf $YCM_PATH
git clone https://github.com/Valloric/YouCompleteMe $YCM_PATH
cd $YCM_PATH
git submodule update --init --recursive
/usr/bin/python3.8 install.py --clang-completer --system-libclang
rm -f $YCM_PATH/.ycm_extra_conf.py
curl -fLo "$YCM_PATH/.ycm_extra_conf.py" "https://raw.githubusercontent.com/ramkalath/config_files/master/nvim/.ycm_extra_conf.py"
