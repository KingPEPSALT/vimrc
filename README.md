# vimrc
just my neovim/vim config!

---
## vim
Rename to `.vimrc` if using Linux and vim and put it in your home directory (or config directory like `.config` if you use one).
If in windows, put it in `C:/Users/<You>` (`$HOME`) with the same filename and it should work.
## neovim
Rename to `init.vim` and move to either: `~/.config/nvim/init.vim` or if `$XDG_CONFIG_HOME` is defined, `$XDG_CONFIG_HOME/nvim/init.vim`. (Linux)
On Windows it can usually be found here: `~/AppData/Local/nvim/init.vim` (`$env::LOCALAPPDATA/nvim/init.vim`)            

---
Ensure [vim-plug](https://github.com/junegunn/vim-plug) is installed.
Open the configuration file in vim and type `:so %` in command mode, then `:PluginInstall`. Close and open vim and voila!

# Screenshot
![image](https://user-images.githubusercontent.com/68469008/162035319-c8e75499-51a9-4584-9c1e-e5386e39dfc4.png)
![image](https://user-images.githubusercontent.com/68469008/162035427-5c61c94a-5465-4ad6-88ab-6a4af9c4cb16.png)
Using [windows terminal](https://github.com/Microsoft/Terminal).
