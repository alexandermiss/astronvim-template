vim.api.nvim_set_keymap("n", "<leader>6", ":vertical res-5<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>7", ":vertical res+5<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>8", ":res-5<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>9", ":res+5<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "-", "^", { noremap = true })
vim.api.nvim_set_keymap("n", "=", "$", { noremap = true })

-- Mapeos específicos para el tipo de archivo go
vim.api.nvim_exec(
  [[
  augroup GoMappings
    autocmd!
    autocmd FileType go nnoremap <buffer> <leader>1 :/func<CR>
    autocmd FileType go nnoremap <buffer> <leader>2 :/type<CR>
    autocmd FileType go nnoremap <buffer> <leader>C :?func<CR>
    autocmd FileType go nnoremap <buffer> <leader>D :?type<CR>
  augroup END
]],
  false
)

-- Establecer el tipo de archivo Dockerfile
vim.api.nvim_exec(
  [[
  autocmd BufRead,BufNewFile Dockerfile set filetype=dockerfile
  autocmd BufRead,BufNewFile Dockerfile* set filetype=dockerfile
]],
  false
)

return {}
