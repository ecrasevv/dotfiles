
return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup {
            defaults = {
                borderchars = {
                    prompt = {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}, -- Empty characters for prompt border
                    results = {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}, -- Empty characters for results border
                    preview = {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}, -- Empty characters for preview border
                },
                layout_config = {
                    horizontal = {
                        prompt_position = "bottom", -- Position the prompt at the top
                        preview_width = 0.6, -- Width of the preview
                        width = 0.8, -- Overall width of the Telescope window
                        height = 0.8, -- Overall height of the Telescope window
                    },
                },
            }
        }

        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<C-l>', builtin.find_files, {})
        vim.keymap.set('n', '<C-g>', function()
            builtin.find_files({ cwd = '~/wiki' })
        end)
    end
}

