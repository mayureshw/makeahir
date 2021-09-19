# makeahir

Here are a few utilities to work with the AHIR framework, which is available at:

https://github.com/madhavPdesai/ahir

## Syntax highlighters for the Aa and the vC languages for the vim editor

 - For individual login based installation drop the aa.vim and vc.vim files into $HOME/.vim/syntax/. (You may want to clone this repository and just soft link these two files into the said directory. This way they can be kept up to date by just running git pull.)

 - For system wide installation you may drop / soft link them into /usr/share/vim/\<vimversion\>/syntax/ (E.g. in /usr/share/vim/vim81/syntax/) 

 - In your $HOME/.vimrc enable the syntax highlighting for file extensions .aa and .vc by adding these lines

    - au BufNewFile,BufRead *.aa     setf aa
    - au BufNewFile,BufRead *.vc     setf vc

## Makefile for building and simulating Aa / vC code

    1. Define following variables in your Makefile
        - AASRCS = list of .aa source files
        - TOP = name of the top module
        - TBENCHSRCS = list of .c or .cpp files, typically testbench.c

    2. Following variables are optional
        - EXTRACFLAGS = default AHIR include/lib paths are not needed
        - AA2COPTS (-T is not required to be specified)
        - AA2VCOPTS (-C is done by default, not required to be specified)
        - VC2VHDLOPTS (see defaults in %.vhdl pattern rule, those are not required to be specified)

    3. At the end of your makefile include the generic makefile, e.g. as follows (replace MAKEAHIR with suitable path based on where you have checked it out)
        - include $(MAKEAHIR)/Makefile.ahir

    4. Make targets:
        - Type make to see them all or see code under target all
