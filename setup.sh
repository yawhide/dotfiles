# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# install spaceship zsh prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 

# symlink up dotfiles
~/dotfiles/bin/dfm install

# vim-specific things
# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# install vim plugins
git clone https://github.com/dense-analysis/ale.git ~/.vim/bundle/ale
git clone https://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
git clone https://github.com/kien/rainbow_parentheses.vim.git ~/.vim/bundle/rainbow_parentheses.vim
git clone https://github.com/arcticicestudio/nord-vim.git ~/.vim/bundle/nord-vim
git clone https://github.com/junegunn/vim-easy-align.git ~/.vim/bundle/vim-easy-align
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone https://github.com/ruanyl/vim-gh-line.git ~/.vim/bundle/vim-gh-line
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
git clone https://github.com/plasticboy/vim-markdown.git ~/.vim/bundle/vim-markdown

# spin-specific things
if [ $SPIN ]; then
  sudo apt-get install -y ripgrep fzf exuberant-ctags
# configure debian fzf location to vim, add this to .vimrc
  echo "source /usr/share/doc/fzf/examples/fzf.vim" >> ~/.vimrc
  git config --global user.email "josh.beckman@shopify.com"
fi

# ruby-specific things
# generate ctags for gems
gem install gem-ctags solargraph rubocop
gem ctags
