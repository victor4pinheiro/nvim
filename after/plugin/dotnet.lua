local dotnet = require("easy-dotnet")

dotnet.setup()

-- Keybindings for easy-dotnet commands
vim.api.nvim_set_keymap('n', '<leader>dtp', ':lua require("easy-dotnet").test_project()<CR>', { noremap = true, silent = true })      -- Test project
vim.api.nvim_set_keymap('n', '<leader>dtd', ':lua require("easy-dotnet").test_default()<CR>', { noremap = true, silent = true })      -- Test last selected project
vim.api.nvim_set_keymap('n', '<leader>dts', ':lua require("easy-dotnet").test_solution()<CR>', { noremap = true, silent = true })     -- Test solution

vim.api.nvim_set_keymap('n', '<leader>drp', ':lua require("easy-dotnet").run_project()<CR>', { noremap = true, silent = true })       -- Run project
vim.api.nvim_set_keymap('n', '<leader>drpf', ':lua require("easy-dotnet").run_with_profile(true)<CR>', { noremap = true, silent = true }) -- Run with profile
vim.api.nvim_set_keymap('n', '<leader>drd', ':lua require("easy-dotnet").run_default()<CR>', { noremap = true, silent = true })       -- Run last selected project

vim.api.nvim_set_keymap('n', '<leader>ds', ':lua require("easy-dotnet").secrets()<CR>', { noremap = true, silent = true })            -- Open user secrets

vim.api.nvim_set_keymap('n', '<leader>dbp', ':lua require("easy-dotnet").build()<CR>', { noremap = true, silent = true })             -- Build project
vim.api.nvim_set_keymap('n', '<leader>dbd', ':lua require("easy-dotnet").build_default()<CR>', { noremap = true, silent = true })     -- Build last selected project
vim.api.nvim_set_keymap('n', '<leader>dbs', ':lua require("easy-dotnet").build_solution()<CR>', { noremap = true, silent = true })    -- Build solution
vim.api.nvim_set_keymap('n', '<leader>dbq', ':lua require("easy-dotnet").build_quickfix()<CR>', { noremap = true, silent = true })    -- Build project with errors in quickfix
vim.api.nvim_set_keymap('n', '<leader>dbdq', ':lua require("easy-dotnet").build_default_quickfix()<CR>', { noremap = true, silent = true }) -- Build last selected project with errors in quickfix

vim.api.nvim_set_keymap('n', '<leader>dcl', ':lua require("easy-dotnet").clean()<CR>', { noremap = true, silent = true })             -- Clean project

vim.api.nvim_set_keymap('n', '<leader>dbg', ':lua require("easy-dotnet").get_debug_dll()<CR>', { noremap = true, silent = true })     -- Get debug DLL

vim.api.nvim_set_keymap('n', '<leader>di', ':lua print(dotnet.is_dotnet_project())<CR>', { noremap = true, silent = true }) -- Check if in .NET project

