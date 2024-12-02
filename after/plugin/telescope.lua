local keymap = vim.keymap.set

require('telescope').setup {
    pickers = {
        find_files = {
            find_command = {
                "rg",
                "--no-ignore",
                "--files",
                "-g",
                "!**/node_modules/*",
                "-g",
                "!**/.git/*",
            },
        },
    },
    defaults = {
        mappings = {
            i = {
                ['<C-u>'] = false,
                ['<C-d>'] = false,
            },
        },
    },
    extensions = {
        fzf = {
            fuzzy = true,                   -- Enable fuzzy matching for performance
            override_generic_sorter = true, -- Use fzf's sorting for speed
            override_file_sorter = true,    -- Use fzf's sorting for files
        },
    },
}

require('telescope').load_extension('fzf')

--- Function for setting keymaps
local function set_keymap(mode, lhs, rhs, opts)
    keymap(mode, lhs, rhs, opts or { silent = true, noremap = true })
end

local function find_git_root()
    local current_file = vim.api.nvim_buf_get_name(0)
    local current_dir = current_file ~= '' and vim.fn.fnamemodify(current_file, ':h') or vim.fn.getcwd()

    local git_root = vim.fn.systemlist('git -C ' .. vim.fn.shellescape(current_dir) .. ' rev-parse --show-toplevel')[1]
    if vim.v.shell_error ~= 0 then
        print 'Not a git repository. Searching on current working directory'
        return vim.fn.getcwd()
    end
    return git_root
end

local function telescope_live_grep_open_files()
    require('telescope.builtin').live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
    }
end

local function live_grep_git_root()
    local git_root = find_git_root()
    if git_root then
        require('telescope.builtin').live_grep {
            search_dirs = { git_root },
        }
    end
end

-- Set keymaps using the single function
set_keymap('n', '<leader>?', ':Telescope oldfiles<CR>')
set_keymap('n', '<leader>sb', ':Telescope buffers<CR>')
set_keymap('n', '<leader>/', ':Telescope current_buffer_fuzzy_find<CR>')
set_keymap('n', '<leader>s/', telescope_live_grep_open_files)
set_keymap('n', '<leader>ss', ':Telescope builtin<CR>')
set_keymap('n', '<leader>gf', ':Telescope git_files<CR>')
set_keymap('n', '<leader>sf', ':Telescope find_files<CR>')
set_keymap('n', '<leader>sh', ':Telescope help_tags<CR>')
set_keymap('n', '<leader>sw', ':Telescope grep_string<CR>')
set_keymap('n', '<leader>sg', ':Telescope live_grep<CR>')
set_keymap('n', '<leader>sG', live_grep_git_root)
set_keymap('n', '<leader>sd', ':Telescope diagnostics<CR>')
set_keymap('n', '<leader>sr', ':Telescope resume<CR>')
