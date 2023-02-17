local palette = require("darkoma.palette")
local group = require("darkoma.group")
local highlight = require("darkoma.lib.highlight")

local M = {}

function M.colorscheme()
  local config = require("darkoma.config")
  local spec = palette.load_spec(config.accent, config.style)
  local hls = group.get_highlights(spec, config)
  highlight.hl(hls)

  if config.options.terminal_colors then
    highlight.set_terminal_colors(spec)
  end
end

function M.setup(user_conf)
  local config = require("darkoma.config")
  config.set(user_conf)
end

return M
