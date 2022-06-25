# .cfg


## 在新环境上找回你的配置
如果你已经在云端仓库保存了你的配置文件，你可以按照下面的步骤取回来：

```
sudo pacman -S --needed git lazygit zsh clang cmake llvm unzip neovim ranger ripgrep fzf neofetch python xsel npm wget
```
```
sudo pacman -S --needed alacritty kitty
```
```
curl -o- wget https://bootstrap.pypa.io/get-pip.py | python
```
```
python -m pip install --upgrade pip
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
```
安装python virtualenv
```
pip install virtualenv virtualenvwrapper -i https://pypi.tuna.tsinghua.edu.cn/simple
```
把仓库里的内容下载下来：

```
git clone --bare git@github.com:fablol/.cfg.git $HOME/.cfg
```

安装oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```
```
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```
```
git clone https://github.com/zsh-users/zsh-completions $ZSH_CUSTOM/plugins/zsh-completions
```
```
git clone https://github.com/sukkaw/zsh-proxy.git ~/.oh-my-zsh/custom/plugins/zsh-proxy
```
安装 powerlevel10k
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```


设置 alias：

```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

checkout 云端的配置文件到你的 $HOME 目录下：

```
config checkout
```
把 status.showUntrackedFiles 关闭：
```
config config --local status.showUntrackedFiles no
```
```
source ~/.zshrc
```




安装yay
```
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```

python支持
```
pip install pynvim black
```
npm
```
sudo npm i -g neovim
```
```
sudo npm i -g prettier
```
rust
```
cargo install stylua
```
