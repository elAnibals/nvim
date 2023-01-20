require("bufferline").setup{

options = {
  -- indicator={
  --   style = 'underline'
  -- },
  offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
  buffer_close_icon = "",
  modified_icon = "",
  close_icon = "",
  show_buffer_close_icons = false,
  show_close_icon = false,
  show_buffer_icons = true,
  left_trunc_marker = "",
  right_trunc_marker = "",
  max_name_length = 30,
  max_prefix_length = 30,
  tab_size = 21,
  show_tab_indicators = true,
  enforce_regular_tabs = false,
  view = "multiwindow",
  separator_style = "thin",
  always_show_bufferline = true,
  diagnostics = "nvim_lsp",
  diagnostics_update_in_insert = true,
  -- diagnostics_indicator = function(count, level, diagnostics_dict, context)
  --   return "(" .. count .. ")"
  -- end,
  themable = true,

  indicator_selected = {
      fg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
      bg = { attribute = "bg", highlight = "Normal" },
      bold = true,
    },
  },
  highlights = {
    buffer_selected = {
      -- fg="normal_fg",
      bold = false,
      italic = true,
    },
  },
}
