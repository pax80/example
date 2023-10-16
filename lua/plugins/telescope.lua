return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    -- change a keymap
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    -- add a keymap to browse plugin files
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
    {
      "<C-p>",
      function()
        require("telescope.builtin").git_files({})
      end,
      desc = "Git files",
    },

    {
      "<leader>fg",
      function()
        require("telescope.builtin").live_grep({})
      end,
      desc = "Live grep",
    },
    {
      "<leader>fb",
      function()
        require("telescope.builtin").buffers({})
      end,
      desc = "Find buffer",
    },
    {
      "<leader>ch",
      function()
        require("telescope.builtin").command_history({})
      end,
      desc = "Get history",
    },
    {
      "<leader>fh",
      function()
        require("telescope.builtin").help_tags({})
      end,
      desc = "Docs ",
    },
  },
}
