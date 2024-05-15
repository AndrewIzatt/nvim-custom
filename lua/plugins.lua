-- Sets up lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath) -- prepend adds to the beginning of a list (or table in Lua) see :h rtp (runtimepath) for value of 'rtp'
-- equal to vim.opt.rtp.prepend(vim.opt.rtp, lazypath)

require("lazy").setup({
    { 
        "rebelot/kanagawa.nvim",
        config = function()
            vim.cmd.colorscheme("kanagawa-wave")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
      -- A list of parser names, or "all" (parsers for c, lua, vim, vimdoc, and query should always be installed)
              ensure_installed = { 
                  "c", 
                  "lua", 
                  "vim", 
                  "vimdoc", 
                  "query", 
                  "fish", 
                  "python", 
                  "css", 
                  "bash", 
                  "csv", 
                  "asm", 
                  "html",
                  "javascript",
                  "json",
                  "sql"
                },

              -- Automatically install missing parsers when entering buffer
              -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
              auto_install = true,

              highlight = {
                enable = true,
              },

              incremental_selection = {
                  enable = true,
                  keymaps = {
                      init_selection = "<Leader>ss", -- set to `false` to disable one of the mappings
                      node_incremental = "<Leader>si",
                      scope_incremental = "<Leader>sc",
                      node_decremental = "<Leader>sd",
                  },
              },
          })

        end,
    },
})  
