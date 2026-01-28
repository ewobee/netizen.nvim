local M = {}

local function apply_term_colors(pal)
  vim.g.terminal_color_0 = pal.bg1
  vim.g.terminal_color_1 = pal.red
  vim.g.terminal_color_2 = pal.green
  vim.g.terminal_color_3 = pal.yellow
  vim.g.terminal_color_4 = pal.blue
  vim.g.terminal_color_5 = pal.magenta
  vim.g.terminal_color_6 = pal.cyan
  vim.g.terminal_color_7 = pal.fg3
  vim.g.terminal_color_8 = pal.bg2
  vim.g.terminal_color_9 = pal.red
  vim.g.terminal_color_10 = pal.green
  vim.g.terminal_color_11 = pal.yellow
  vim.g.terminal_color_12 = pal.blue
  vim.g.terminal_color_13 = pal.magenta
  vim.g.terminal_color_14 = pal.cyan
  vim.g.terminal_color_15 = pal.fg2
  vim.g.terminal_color_background = pal.bg0_5
  vim.g.terminal_color_foreground = pal.fg1
end

local function apply(opts)
  local pal = require("netizen.palette")
  apply_term_colors(pal)
  local groups = require("netizen.groups").setup()

  -- set defined highlights
  for group, setting in pairs(groups) do
    vim.api.nvim_set_hl(0, group, setting)
  end
end

M.opts = {}

M.setup = function(opts)
  M.opts = vim.tbl_deep_extend("force", M.opts, opts or {})
end

M.load = function()
  if vim.fn.has("nvim-0.7") ~= 1 then
    vim.notify("netizen.nvim: you must use neovim 0.7 or higher")
    return
  end

  -- reset colors
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "netizen"

  apply(M.opts)
end

return M
