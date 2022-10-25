# dots
Remote Store for my personal dotfile configurations

## Cloning and Using this repository
This repository sets up an alias that allows us to track only our personal configuration files in the $HOME directory and store changes in Github.
1. `echo .dots >> .gitignore`
2. `git clone git@github.com:tfisher21/dots.git $HOME/.dots`
3. Restart your Session
4. `dots config --local status.showUntrackedFiles no`
5. `dots checkout`

With this setup, you'll use `dots` instead of `git` to manage your working tree for the dots repo. You'll also need to manually add new files when
created because they won't be tracked otherwise.

## To Do
### GitHub
- [x] Set-Up GitHub Access
- [x] Clone dots repo
- [x] Update email depending on personal or professional work

### Initial
- [x] Adjust System Preferences
- [x] Download Xcode via the app store
- [x] Install Xcode Command Line Interface
- [x] Install [Homebrew](https://brew.sh/)
- [x] `brew bundle`

### iTerm
- [x] Install [Dracula Theme](https://draculatheme.com/iterm)
- [x] Import and Set Dracula Theme
- [x] Set Font to Source Code Pro
- [x] macOS Shortcuts
- [x] Install [Oh My Zsh](https://ohmyz.sh/)

### Neovim
- [x] Set-up Neovim
- [ ] Migrate from 'williamboman/nvim-lsp-installer' to 'williamboman/mason.nvim'
- [x] Autotags
- [x] Git
- [ ] Tmux
- [ ] Kitty or Alacritty instead of iTerm2
- [x] File Explorer (currently using Lexplore, not loving it. Might move back to NERDTree)
  - Installed NvimTree
- [ ] Nvim Alternative for projectionist and vim-test?

### Future Tasks
- [ ] Enhance Readme as a how-to
- [ ] Nightly pull/updates similar to real applications (like OhMyZsh)
- [ ] Document System Preferences adjustments

## Maybe
### Software
- [ ] RetroArch - Emulator frontend (OpenGL graphics API version)
- [ ] Notion - App to write, plan, collaborate, and get organized
- [ ] Alfred - Application launcher and productivity software

## Other Areas of Exploration
- [ ] More Go
- [ ] Rust
- [ ] Pub/Sub
- [ ] More TypeScript

## Inspired By
* [jessarcher](https://github.com/jessarcher/dotfiles)
* [hectron](https://github.com/hectron/dotfiles)
* [natw](https://github.com/natw/dotfiles)
* [craftzdog](https://github.com/craftzdog/dotfiles-public)

## Resources
* [macOS Setup Guide](https://sourabhbajaj.com/mac-setup/)
* [Homebrew/homebrew-bundle](https://github.com/Homebrew/homebrew-bundle)
* [Homebrew Formulae](https://formulae.brew.sh/)
* [Connecting to GitHub with SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)
* [The best way to store your dotfiles: A bare Git repository **EXPLAINED**](https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/)
* [NeoVim from Scratch - chris@machine](https://www.youtube.com/playlist?list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ)
* [A Quick and Easy Guide to tmux](https://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/)
