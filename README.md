# MyLinuxSetup  
forked from wasabi-neko/MyLinuxSetup
## installation & usage

```sh
git clone https://github.com/sShaAanGg/MyLinuxSetup.git
```

- The default installation
  - install rsync & vim w/ config-files/.vimrc
  - `./util/installUtil.sh`

- install zsh with zim and powerlevel10k:
  - `sudo apt update && sudo apt install zsh`, if zsh is not yet installed
  - `cd ./zsh && zsh ./install-p10k.zsh`

- (archived) install zsh with oh-my-zsh and some useful packages
  - `cd ./archive && ./autoSetUp.sh`

## TODOS

- [ ] add more packages categorized with different usage
  - may include tom-code for Claude code
  - some scripting utilies
- [ ] Reorganize project structure based on my preference
  - half done
