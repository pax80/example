vim.g.NetrwIsOpen = 0
vim.keymap.set("i", "<leader>nn", "<ESC>:lua ToogleFolder()<CR>i")
-- vim.api.nvim_set_keymap("n", "<TAB>", "<cmd>lua require('plugins/LazyComp/LazyComp').getFile()<CR>")

vim.keymap.set("n", "<leader>nn", ":lua ToogleFolder()<CR>")

function ToogleFolder()
  print(vim.g.NetrwIsOpen)
  if vim.g.NetrwIsOpen == 1 then
    for v, i in pairs(vim.api.nvim_list_bufs()) do
      local buf_name = vim.api.nvim_buf_get_name(i)
      if string.find(buf_name, "NetrwTreeListing") then
        vim.api.nvim_buf_delete(i, { force = true })
      end
    end
    vim.g.NetrwIsOpen = 0
  else
    vim.g.NetrwIsOpen = 1
    vim.cmd("silent Vexplore")
  end
end

-- vim.cmd(":command! ToogleFolder :call ToogleFolder()")
