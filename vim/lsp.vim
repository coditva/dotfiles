lua << EOF
-- vi:filetype=lua

-- Mappings.
local opts = { noremap=true, silent=true }

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

local lsp_status = require('lsp-status')

lsp_status.register_progress()
lsp_status.config({
    indicator_errors = "×",
    indicator_warnings = "!",
    indicator_info = "i",
    indicator_hint = "›",
    -- the default is a wide codepoint which breaks absolute and relative
    -- line counts if placed before airline's Z section
    status_symbol = "LSP",
    spinner_frames = {'a', 'b', 'c', 'd'},
    current_function = false
  })

local on_attach = function (client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local bufopts = { noremap=true, silent=true, buffer=bufnr }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)

  -- Set autocommands conditional on server_capabilities
  if client.server_capabilities.documentHighlightProvider then
    vim.api.nvim_exec([[
      hi default link LspReferenceRead           Visual
      hi default link LspReferenceText           Visual
      hi default link LspReferenceWrite          Visual
      augroup lsp_document_highlight
        autocmd!
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end

  -- aerial.on_attach(client, bufnr)
  lsp_status.on_attach(client)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Set default client capabilities plus window/workDoneProgress
capabilities = vim.tbl_extend('keep', capabilities or {}, lsp_status.capabilities)

capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Use a loop to conveniently both setup defined servers
-- and map buffer local keybindings when the language server attaches
local servers = { 'clangd', 'vimls' }

for _, lsp in ipairs(servers) do
  vim.lsp.config[lsp] = {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150
    }
  }
  vim.lsp.enable(lsp)
end

-- special handling for 'ts_ls'
vim.lsp.config.ts_ls = {
  init_options = {
    maxTsServerMemory = 8192, -- in MB
  },
  on_attach = on_attach,
  capabilities = capabilities,
  flags = {
    debounce_text_changes = 150
  }
}
vim.lsp.enable('ts_ls')

opencode_config = function()
  ---@type opencode.Opts
  vim.g.opencode_opts = {}

  vim.o.autoread = true -- Required for `opts.events.reload`

  -- Recommended/example keymaps
  vim.keymap.set({ "n", "x" }, "<C-a>", function() require("opencode").ask("@this: ", { submit = true }) end, { desc = "Ask opencode…" })
  vim.keymap.set({ "n", "x" }, "<C-x>", function() require("opencode").select() end,                          { desc = "Execute opencode action…" })
  vim.keymap.set({ "n", "t" }, "<C-.>", function() require("opencode").toggle() end,                          { desc = "Toggle opencode" })

  vim.keymap.set({ "n", "x" }, "go",  function() return require("opencode").operator("@this ") end,        { desc = "Add range to opencode", expr = true })
  vim.keymap.set("n",          "goo", function() return require("opencode").operator("@this ") .. "_" end, { desc = "Add line to opencode", expr = true })

  vim.keymap.set("n", "<S-C-u>", function() require("opencode").command("session.half.page.up") end,   { desc = "Scroll opencode up" })
  vim.keymap.set("n", "<S-C-d>", function() require("opencode").command("session.half.page.down") end, { desc = "Scroll opencode down" })

  -- You may want these if you use the opinionated `<C-a>` and `<C-x>` keymaps above — otherwise consider `<leader>o…` (and remove terminal mode from the `toggle` keymap)
  vim.keymap.set("n", "+", "<C-a>", { desc = "Increment under cursor", noremap = true })
  vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement under cursor", noremap = true })

  -- vim.g.opencode_opts.lsp.enabled = true

  -- Handle `opencode` events
  -- vim.api.nvim_create_autocmd("User", {
  --     pattern = "OpencodeEvent:*", -- Optionally filter event types
  --     callback = function(args)
  --       ---@type opencode.cli.client.Event
  --       local event = args.data.event
  --       ---@type number
  --       local port = args.data.port
  --
  --       -- See the available event types and their properties
  --       -- vim.notify(vim.inspect(event))
  --       -- Do something useful
  --       -- if event.type == "session.idle" then
  --       --   vim.notify("`opencode` finished responding")
  --       -- end
  --     end,
  --   })
end
opencode_config()

EOF
