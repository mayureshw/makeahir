# makeahir

Here are a few utilities to work with the AHIR framework, which is available at:

https://github.com/madhavPdesai/ahir

## Syntax highlighters for the Aa and the vC languages for the vim editor

    - For individual login based installation drop the aa.vim and vc.vim files into $HOME/.vim/syntax/. (You may want to clone this repository and just soft link these two files into the said directory. This way they can be kept up to date by just running git pull.)

    - For system wide installation you may drop / soft link them into /usr/share/vim/<vimversion>/syntax/ (E.g. in /usr/share/vim/vim81/syntax/) 

    - In your $HOME/.vimrc enable the syntax highlighting for file extensions .aa and .vc by adding these lines

    - au BufNewFile,BufRead *.aa     setf aa
    - au BufNewFile,BufRead *.vc     setf vc

## Makefile for building and simulating Aa / vC code

    - To be added soon
