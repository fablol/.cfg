# .cfg


## 在新环境上找回你的配置
如果你已经在云端仓库保存了你的配置文件，你可以按照下面的步骤取回来：

```
sudo pacman -S --needed git zsh neovim ranger ripgrep fzf neofetch python python-pip
sudo pacman -S --needed alacritty kitty
```

安装python virtualenv
```
pip install virtualenv virtualenvwrapper -i https://pypi.tuna.tsinghua.edu.cn/simple
```
把仓库里的内容下载下来：

```
git clone --bare https://github.com/fablol/.cfg.git $HOME/.cfg
```

设置 alias：

```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

checkout 云端的配置文件到你的 $HOME 目录下：

```
config checkout
```

```
source ~/.zshrc
```
安装oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions $ZSH_CUSTOM/plugins/zsh-completions
```
安装 powerlevel10k
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

