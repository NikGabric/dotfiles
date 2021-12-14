# mysterio dotfiles

-   vimrc
-   zshrc
-   mysterio-install.sh:
    -   Checks before installing for Y/n input
    -   If answer is "Y" or "y" or whitespace the script continues with the install:
        -   copies ./vimrc -> ~/.vimrc
        -   copies ./zshrc -> ~/.zshrc
            -   sources ~/.zshrc
        -   exits with status 0
    -   If answer is "N" or "n" -> exits with status 1
    -   If answer is anything else redoes the input check and reruns the install script
