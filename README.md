# .emacs.d
Requires Emacs >= 24.3

Emacs dotfiles. Work mostly taken from rmmt5 with some modification for adding some cool C++ features like,
auto-complete & yasnippet.
@Plan: To add Irony mode in order to have amazing code completion feature to the editor.
Also further ehancement to add perforce gui. :)


Clone this repository.

    $ cd ~
    $ git clone https://github.com/riteshgajare/.emacs.d.git .e_dotfiles

There is install ruby script which will install emacs dotfiles. This will also sync and update all the git submodules within.

    $ cd ~/.e_dotfiles
    $ ./install.rb

I mostly do development on C/C++/Cuda & some web development. You can fork the repo and do changes accordingly.

In order to update the submodules just run the update command
    $ ./update.rb
