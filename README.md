# .cfg

在新环境上找回你的配置
如果你已经在云端仓库保存了你的配置文件，你可以按照下面的步骤取回来：


把仓库里的内容下载下来：

```
git clone --bare <git-repo-url> $HOME/.cfg
```

设置 alias：

```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

checkout 云端的配置文件到你的 $HOME 目录下：

```
config checkout
```

上面这步可能会报错，就像这样：

```
error: The following untracked working tree files would be overwritten by checkout:    
    .bashrc     
    .gitignore 
Please move or remove them before you can switch branches. Aborting
```

这是因为你的 目录已经有这些文件了，发生了冲突。解决方法很简单：如果你不需要原来的文件，删掉即可；如果需要，就备份一下。这边提供一个冲突文件自动备份到特定文件夹下的方法：

```
mkdir -p .config-backup && \ config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \ xargs -I{} mv {} .config-backup/{}
```

然后重新 checkout

```
config checkout
```

同样把 status.showUntrackedFiles 关闭：

```
config config — local status.showUntrackedFiles no
```

大功告成，现在你可以像之前一样管理配置文件了，就像这样：

```
config status 
config add .vimrc 
config commit -m "Add vimrc" 
config add .bashrc 
config commit -m "Add bashrc" 
config push
```
