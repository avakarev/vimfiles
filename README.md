## My vim configuration bundle. ##

Feel free to fork and use my bundle!

Take a look inside Makefile before running make command.

It will overwrite any existed ~/.vimrc, ~/.gvimrc and ~/.vim.

### Plugins: new functionality ###

* [Fugitive](https://github.com/tpope/vim-fugitive) Awesome git wrapper.
    * `<leader>gd` - Perform a |vimdiff| against the current file in the given revision
    * `<leader>gs` - Bring up the output of git-status in the preview window
    * `<leader>gb` - Run git-blame on the file and open the results in a scroll bound vertical split
* [Matchit](https://github.com/vim-scripts/matchit.zip) Extended % matching for HTML, LaTeX, and many other languages.
* [MRU](https://github.com/vim-scripts/mru.vim) Plugin to manage Most Recently Used (MRU) files.
    * `<leader>m` - Displays the MRU file list in a temporary Vim window
* [NERDCommenter](https://github.com/scrooloose/nerdcommenter) Intensely orgasmic commenting.
    * `CTRL + /` - Toggles the comment state of the selected line(s)
    * `<leader>c<space>` - Toggles the comment state of the selected line(s).
* [NERDTree](https://github.com/scrooloose/nerdtree) A tree explorer plugin for vim.
    * `CTRL + e` - Toggle NERDTree side pane
    * `CTRL + x` - Find current file in NERDTree
* [Pathogen](https://github.com/tpope/vim-pathogen) Manage your runtimepath.
* [snipMate](https://github.com/msanders/snipmate.vim) Implements some of TextMate's snippets features in Vim.
* [Supertab](https://github.com/ervandew/supertab) Perform all your vim insert mode completions with Tab.
* [Surround](https://github.com/tpope/vim-surround) Quoting/parenthesizing made simple.
* [Syntastic](https://github.com/scrooloose/syntastic) Syntax checking hacks for vim.
* [Taglist](https://github.com/vim-scripts/taglist.vim) Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc).
* [Tasklist](https://github.com/vim-scripts/TaskList.vim) Eclipse like task list.
    * `<leader>tl` - It will search the file for FIXME, TODO, and XXX and put them in a handy list
* [Watchdog](https://github.com/avakarev/vim-watchdog) Comprehensive, dynamically resizing statusline.
* [Yankring](https://github.com/vim-scripts/YankRing.vim) Maintains a history of previous yanks, changes and deletes.
    * `<leader>yr` - Shows all entries in the yankring

### Plugins: syntax highlightings ###

* [syntax-coffee](https://github.com/kchmck/vim-coffee-script) CoffeeScript support for vim.
* [syntax-cucumber](https://github.com/tpope/vim-cucumber) Cucumber runtime files.
* [syntax-html5](https://github.com/othree/html5.vim) HTML5 omnicomplete and syntax.
* [syntax-jade](https://github.com/digitaltoad/vim-jade) Jade template engine syntax highlighting and indention.
* [syntax-javascript](https://github.com/pangloss/vim-javascript) Vastly improved vim's javascript indentation.
* [syntax-markdown](https://github.com/tpope/vim-markdown) Markdown runtime files.
* [syntax-nginx](https://github.com/vim-scripts/nginx.vim) Highlights configuration files for nginx.
* [syntax-perl](https://github.com/petdance/vim-perl) Support for Perl 5 and Perl 6 in Vim.
* [syntax-stylus](https://github.com/wavded/vim-stylus) Syntax Highlighting for Stylus.

### Plugins: color schemes ###

* [irblack](https://github.com/wgibbs/vim-irblack) Infinite Red's ir_black vim theme.
* [jellybeans](https://github.com/nanotech/jellybeans.vim) A colorful, dark color scheme for Vim.
* [jellyx](https://github.com/guns/jellyx.vim) A delicious collision of Jellybeans and Xoria256.
* [molokai](https://github.com/vim-scripts/molokai) A port of the monokai scheme for TextMate.
* [solarized](https://github.com/altercation/vim-colors-solarized) Precision colorscheme for the vim text editor.
* [xoria256](https://github.com/vim-scripts/xoria256.vim) Finely tuned soft gamma, 256 colors, dark background, gvim == vim.
