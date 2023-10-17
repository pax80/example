-- markdown-preview
return {
  "iamcco/markdown-preview.nvim",
  build = "cd app && npm install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.g.mkdp_preview_options = {
      mkit = {},
      katex = {},
      uml = { server = "http://localhost:9000/plantuml/png" },
      maid = {},
      disable_sync_scroll = 0,
      sync_scroll_type = "middle",
      hide_yaml_meta = 1,
      sequence_diagrams = {},
      flowchart_diagrams = {},
      content_editable = { v = false },
      disable_filename = 0,
      toc = {},
    }
  end,
  ft = { "markdown" },
}
