return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettierd",
        "ts_ls",
        "eslint-lsp",
        "tailwindcss-language-server",
        "css-variables-language-server",
        "cssmodules-language-server",
      },
    },
  },

  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "configs.lint"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "jsdoc",
        "jsonc",
        "lua",
        "markdown",
        "regex",
        "scss",
        "toml",
        "typescript",
        "tsx",
        "prisma",
      },
    },
  },

  {
    "stevearc/dressing.nvim",
    lazy = false,
    opts = {},
  },

  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- {
  --   "ggandor/leap.nvim",
  --   lazy = false,
  --   config = function()
  --     require("leap").add_default_mappings(true)
  --   end,
  -- },

  {
    "smoka7/hop.nvim",
    version = "*",
    opts = {
      keys = "etovxqpdygfblzhckisuran",
    },
  },

  -- {
  --   "brenton-leighton/multiple-cursors.nvim",
  --   version = "*", -- Use the latest tagged version
  --   opts = {}, -- This causes the plugin setup function to be called
  --   keys = {
  --     { "<C-j>", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "n", "x" }, desc = "Add cursor and move down" },
  --     { "<C-k>", "<Cmd>MultipleCursorsAddUp<CR>", mode = { "n", "x" }, desc = "Add cursor and move up" },
  --
  --     { "<C-Up>", "<Cmd>MultipleCursorsAddUp<CR>", mode = { "n", "i", "x" }, desc = "Add cursor and move up" },
  --     { "<C-Down>", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "n", "i", "x" }, desc = "Add cursor and move down" },
  --
  --     { "<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>", mode = { "n", "i" }, desc = "Add or remove cursor" },
  --
  --     { "<Leader>a", "<Cmd>MultipleCursorsAddMatches<CR>", mode = { "n", "x" }, desc = "Add cursors to cword" },
  --     {
  --       "<Leader>A",
  --       "<Cmd>MultipleCursorsAddMatchesV<CR>",
  --       mode = { "n", "x" },
  --       desc = "Add cursors to cword in previous area",
  --     },
  --
  --     {
  --       "<Leader>d",
  --       "<Cmd>MultipleCursorsAddJumpNextMatch<CR>",
  --       mode = { "n", "x" },
  --       desc = "Add cursor and jump to next cword",
  --     },
  --     { "<Leader>D", "<Cmd>MultipleCursorsJumpNextMatch<CR>", mode = { "n", "x" }, desc = "Jump to next cword" },
  --
  --     { "<Leader>l", "<Cmd>MultipleCursorsLock<CR>", mode = { "n", "x" }, desc = "Lock virtual cursors" },
  --   },
  -- },

  {
    "kevinhwang91/nvim-bqf",
    lazy = false,
  },

  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>tx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>tX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>ts",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>tl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>tL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>tQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
      require("todo-comments").setup()
    end,
  },

  {
    "Exafunction/codeium.vim",
    lazy = false,
  },

  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").load_extension "lazygit"
    end,
  },

  {
    "rcarriga/nvim-notify",
    lazy = false,
  },

  {
    "gaelph/logsitter.nvim",
    lazy = false,
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("logsitter").setup {
        path_format = "default",
        prefix = "[LS] ->",
        separator = "->",
      }
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
} -- y s w "
