lua << EOF
-- vi:filetype=lua

require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '▐', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '▐', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    untracked    = { text = '┆' },
  },
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 2000,
    ignore_whitespace = true,
  },
  on_attach = function(bufnr)
    local bufopts = { noremap=true, silent=true }

    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gn', '<cmd>lua require"gitsigns.actions".next_hunk()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gN', '<cmd>lua require"gitsigns.actions".prev_hunk()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ga', '<cmd>lua require"gitsigns".stage_hunk()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'v', '<leader>ga', '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gh', '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gu', '<cmd>lua require"gitsigns".reset_hunk()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'v', '<leader>gu', '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gU', '<cmd>lua require"gitsigns".reset_buffer()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gp', '<cmd>lua require"gitsigns".preview_hunk()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gb', '<cmd>lua require"gitsigns".blame_line(true)<CR>', bufopts)
  end,
}

EOF
