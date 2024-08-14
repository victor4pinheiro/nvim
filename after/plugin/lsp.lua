-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>lw', vim.diagnostic.setloclist)

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})

-- [[ Configure LSP ]]
--  This function gets run when an LSP connects to a particular buffer.
local on_attach = function(_, bufnr)
    local keymap_set = function(keys, func)
        vim.keymap.set('n', keys, func, { buffer = bufnr })
    end

    keymap_set('<leader>rn', vim.lsp.buf.rename)
    keymap_set('<leader>ca', function()
        vim.lsp.buf.code_action { context = { only = { 'quickfix', 'refactor', 'source' } } }
    end)

    keymap_set('gd', require('telescope.builtin').lsp_definitions)
    keymap_set('gr', require('telescope.builtin').lsp_references)
    keymap_set('gI', require('telescope.builtin').lsp_implementations)
    keymap_set('<leader>D', require('telescope.builtin').lsp_type_definitions)
    keymap_set('<leader>ds', require('telescope.builtin').lsp_document_symbols)
    keymap_set('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols)

    -- See `:help K` for why this keymap
    keymap_set('K', vim.lsp.buf.hover)
    keymap_set('<C-k>', vim.lsp.buf.signature_help)

    -- Lesser used LSP functionality
    keymap_set('gD', vim.lsp.buf.declaration)
    keymap_set('<leader>wa', vim.lsp.buf.add_workspace_folder)
    keymap_set('<leader>wr', vim.lsp.buf.remove_workspace_folder)
    keymap_set('<leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end)

    vim.keymap.set('n', '<space>f', function()
        vim.lsp.buf.format { async = true }
    end, { buffer = bufnr })
end

-- mason-lspconfig requires that these setup functions are called in this order
-- before setting up the servers.
require('mason').setup()
require('mason-lspconfig').setup()

-- Enable the following language servers
--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
--
--  Add any additional override configuration in the following tables. They will be passed to
--  the `settings` field of the server config. You must look up that documentation yourself.
--
--  If you want to override the default filetypes that your language server will attach to you can
--  define the property 'filetypes' to the map in question.
local servers = {
    clangd = {},
    basedpyright = {
        analysis = {
            typeCheckingMode = "all",
            autoImportCompletions = true,
            autoSearchPaths = true,
            diagnosticMode = "openFilesOnly",
            useLibraryCodeForTypes = true
        }
    },
    rust_analyzer = {},
    lua_ls = {
        Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
        },
    },
}

-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
    ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
    function(server_name)
        require('lspconfig')[server_name].setup {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = servers[server_name],
            filetypes = (servers[server_name] or {}).filetypes,
        }
    end,
}

-- [[ Configure nvim-cmp ]]
-- See `:help cmp`
local cmp = require 'cmp'
local luasnip = require 'luasnip'
require('luasnip.loaders.from_vscode').lazy_load()
luasnip.config.setup {}

cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    completion = {
        keyword_length = 2,
        completeopt = 'menu,menuone,noinsert',
    },
    mapping = cmp.mapping.preset.insert {
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete {},
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        ['<Tab>'] = nil,
        ['<S-Tab>'] = nil,
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'path' },
        { name = 'neorg' },
    },
}
