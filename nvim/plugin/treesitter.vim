" syntax highlighting
" lua <<EOF
" require'nvim-treesitter.configs'.setup {
"   ensure_installed = {
"     'c', 'cpp', 'css', 'html', 'javascript', 'python', 'rust', 'scss'
"   },
"   highlight = {
"     enable = true,
"     additional_vim_regex_highlighting = true
"   },
"   indent = {
"     enable = true
"   }
" }
" EOF
