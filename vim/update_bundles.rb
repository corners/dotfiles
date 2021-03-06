#!/usr/bin/env ruby

#
# https://github.com/Shougo/neocomplcache.git

git_bundles = %w{
  https://github.com/ecomba/vim-ruby-refactoring.git
  https://github.com/godlygeek/tabular.git
  https://github.com/groenewege/vim-less.git
  https://github.com/elzr/vim-json.git
  https://github.com/jgdavey/vim-blockle.git
  https://github.com/kana/vim-textobj-user.git
  https://github.com/kchmck/vim-coffee-script.git
  https://github.com/kien/ctrlp.vim.git
  https://github.com/nelstrom/vim-textobj-rubyblock.git
  https://github.com/pangloss/vim-javascript.git
  https://github.com/scrooloose/nerdtree.git
  https://github.com/sickill/vim-pasta.git
  https://github.com/timcharper/textile.vim.git
  https://github.com/tomtom/tcomment_vim.git
  https://github.com/tpope/vim-cucumber.git
  https://github.com/tpope/vim-endwise.git
  https://github.com/tpope/vim-fugitive.git
  https://github.com/tpope/vim-git.git
  https://github.com/tpope/vim-haml.git
  https://github.com/tpope/vim-markdown.git
  https://github.com/tpope/vim-rails.git
  https://github.com/tpope/vim-repeat.git
  https://github.com/tpope/vim-surround.git
  https://github.com/tpope/vim-vividchalk.git
  https://github.com/tsaleh/vim-matchit.git
  https://github.com/tsaleh/vim-shoulda.git
  https://github.com/tsaleh/vim-tmux.git
  https://github.com/vim-ruby/vim-ruby.git
  https://github.com/vim-scripts/Gist.vim.git
  https://github.com/vim-scripts/IndexedSearch.git
  https://github.com/vim-scripts/jQuery.git
  https://github.com/Lokaltog/vim-powerline.git
  https://github.com/slim-template/vim-slim.git
  https://github.com/Valloric/YouCompleteMe.git
  https://github.com/tpope/vim-rbenv.git
}

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(File.dirname(__FILE__), "bundle")

FileUtils.rm_rf(bundles_dir)
FileUtils.mkdir(bundles_dir)
FileUtils.cd(bundles_dir)

git_bundles.each do |url|
  puts url
  `git clone -q #{url}`
end

Dir["*/.git"].each {|f| FileUtils.rm_rf(f) }


