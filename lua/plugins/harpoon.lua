return {
	"ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require('harpoon')
        local mark = require('harpoon.mark')
        local ui = require('harpoon.ui')

        -- Key mappings
        vim.keymap.set('n', '<leader>A', function() mark.add_file() end)
        vim.keymap.set('n', '<leader>a', function() mark.add_file() end)
        vim.keymap.set('n', '<C-e>', function() ui.toggle_quick_menu() end)

        vim.keymap.set('n', '<C-h>', function() ui.nav_file(1) end)
        vim.keymap.set('n', '<C-t>', function() ui.nav_file(2) end)
        vim.keymap.set('n', '<C-n>', function() ui.nav_file(3) end)
        vim.keymap.set('n', '<C-s>', function() ui.nav_file(4) end)

        vim.keymap.set('n', '<leader><C-h>', function() mark.set_current_at_index(1) end)
        vim.keymap.set('n', '<leader><C-t>', function() mark.set_current_at_index(2) end)
        vim.keymap.set('n', '<leader><C-n>', function() mark.set_current_at_index(3) end)
        vim.keymap.set('n', '<leader><C-s>', function() mark.set_current_at_index(4) end)
        end
}
