-- lang-c.lua
return {
  --LSP setup for C/C++
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = { "clangd" },
          filetypes = { "c", "cpp", "objc", "objcpp" },
          -- Optional: better indexing
          -- root_dir = require("lspconfig.util").root_pattern("compile_commands.json", ".git")
        },
      },
    },
  },

  -- nvim-cmp sources for autocomplete
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- LSP suggestions
      "hrsh7th/cmp-buffer", -- words from buffer
      "hrsh7th/cmp-path", -- file paths
      "saadparwaiz1/cmp_luasnip", -- snippets
      "L3MON4D3/LuaSnip", -- snippet engine
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "luasnip" },
      })
      return opts
    end,
  },
}
