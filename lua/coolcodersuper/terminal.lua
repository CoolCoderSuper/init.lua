local term_name = "powershell_term"

vim.keymap.set('n', '<leader>tp', function()
  local term_buf = nil
  local bufs = vim.api.nvim_list_bufs()
  for _, buf in ipairs(bufs) do
    if vim.api.nvim_buf_is_valid(buf) then
      local buf_name = vim.api.nvim_buf_get_name(buf)
      if buf_name == 'term://' .. term_name then
        term_buf = buf
        break
      end
    end
  end
  if term_buf then
    vim.cmd('buffer ' .. term_buf)
  else
    vim.cmd('term pwsh.exe')
    vim.cmd('file ' .. 'term://' .. term_name)
  end
end)

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
