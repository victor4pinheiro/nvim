-- [[ Configure blink ]]
-- See `:help cmp`
--

local blink = require 'blink.cmp'

blink.setup({
    keymap = {
        accept = '<C-y>',
        snippet_forward = nil,
        snippet_backward = nil,
        select_prev = { '<Up>', '<C-j>' },
        select_next = { '<Down>', '<C-k>' },
    },
    accept = { auto_brackets = { enabled = true } },
    windows = {
        autocomplete = {
            draw = 'reversed'
        }
    }
})
