-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "koehler"


-- vim options
vim.opt.smartcase = true
vim.opt.mouse = "a"
vim.opt.termguicolors = true
vim.opt.spelllang = "en"


-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = ""
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>lua require'telescope'.extensions.project.project{}<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = true
-- lvim.builtin.lualine.active = true
-- :lvim.builtin.bufferline = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.playground.enable = true

-- Telescope
lvim.builtin.telescope.on_config_done = function()
  local actions = require "telescope.actions"
  lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
  lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
  lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
  lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
 end

-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- set a formatter if you want to override the default lsp one (if it exists)
-- lvim.lang.python.formatters = {
--   {
--     exe = "black",
--     args = {}
--   }
-- }
-- set an additional linter
-- lvim.lang.python.linters = {
--   {
--     exe = "flake8",
--     args = {}
--   }
-- }

-- Additional Plugins
lvim.plugins = {
  { "lunarvim/colorschemes" },
  { "folke/tokyonight.nvim" },
  { "folke/lsp-colors.nvim" },
  { "mfussenegger/nvim-jdtls" },
  { 
    "p00f/nvim-ts-rainbow", 
    config = function()
      require('nvim-treesitter.configs').setup {
        rainbow = {
          enable = true,
          extended_mode = true,
          max_file_lines = nil,
        }
      }
    end,
  },
  { 
    "nvim-treesitter/playground",
    event = "BufRead",
  },
  { "bluz71/vim-moonfly-colors" },
  { "yamatsum/nvim-nonicons" },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({"*"}, {
        RGB = true,   -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RBG, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
    })
    end,
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup({
        mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>', 
        '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
        hide_cursor = true,             -- Hide cursor while scrolling
        stop_eof = true,                -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false,    -- Use the local scope of scroll off instead of the global scope
        respect_scrolloff = false,      -- Stop scrolling when the cursor reaches the scroloff margin of the file
        cursor_scrolls_alone = true,    -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil,          -- Default easing function
        pre_hook = nil,                 -- Function to run before the scrolling animation starts
        post_hook = nil                 -- Function to run after the scrolling animation ends
      })
    end

  },
  { "kosayoda/nvim-lightbulb" },
  { "ray-x/navigator.lua" },
  { "liuchengxu/vista.vim" },
  { 
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
  },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
  },
  {
    "metakirby5/codi.vim",
    cmd = "Codi",
  },
  {
    "dccsillag/magma-nvim",
  },
  {
    "kevinhwang91/nvim-bqf",
    event = "BufRead",
  },
  
--     {"folke/tokyonight.nvim"}, {
--         "ray-x/lsp_signature.nvim",
--         config = function() require"lsp_signature".on_attach() end,
--         event = "InsertEnter"
--     }
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
