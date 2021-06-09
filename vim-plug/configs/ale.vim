" Fix files with prettier, and then ESLint.
"let b:ale_fixers = ['prettier', 'eslint']
" Equivalent to the above.

"let b:ale_fixers = {
"\   '*': ['remove_trailing_lines', 'trim_whitespace'],
"\   'javascript': ['prettier', 'eslint']
"\}
"let g:ale_fix_on_save = 1
