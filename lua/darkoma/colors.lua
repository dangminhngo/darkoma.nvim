local Color = require("darkoma.lib.color")

local M = {}

local C = Color:new({
  bg = "#233435",
  fg = "#ccdcdd",
  factor = 0.25,
})

M.pal = {
  default = {
    black = C:shade("#3d5b5b"),
    red = C:shade("#f36a6f"),
    green = C:shade("#8fd780"),
    blue = C:shade("#62b1ff"),
    yellow = C:shade("#e6dd90"),
    orange = C:shade("#efaa6f"),
    cyan = C:shade("#5ddae2"),
    teal = C:shade("#4fd5b5"),
    magenta = C:shade("#e67aca"),
    purple = C:shade("#b28ff5"),
    white = C:shade("#f4f8f8"),
    comment = "#588386",
    bg0 = "#1d2b2c",
    bg1 = "#233435",
    bg2 = "#2d4244",
    bg3 = "#375153",
    bg4 = "#416062",
    fg0 = "#e0eaea",
    fg1 = "#ccdcdd",
    fg2 = "#a3c0c2",
    fg3 = "#8fb3b5",
    sel0 = "#66979a",
    dark_bg = "#172324",
  },
  hard = {
    black = C:shade("#385456"),
    red = C:shade("#f36a6f"),
    green = C:shade("#8fd780"),
    blue = C:shade("#62b1ff"),
    yellow = C:shade("#e6dd90"),
    orange = C:shade("#efaa6f"),
    cyan = C:shade("#5ddae2"),
    teal = C:shade("#4fd5b5"),
    magenta = C:shade("#e67aca"),
    purple = C:shade("#b28ff5"),
    white = C:shade("#f4f7f8"),
    comment = "#547d80",
    bg0 = "#162021",
    bg1 = "#1d2b2c",
    bg2 = "#263849",
    bg3 = "#2f455a",
    bg4 = "#38526a",
    fg0 = "#dfe9ea",
    fg1 = "#b5ccce",
    fg2 = "#a0bec0",
    fg3 = "#8bafb2",
    sel0 = "#629195",
    dark_bg = "#131d1d",
  },
}

--- Generate spec
-- @param accent string
-- @param pal table
function M.gen_spec(accent, pal)
  local spec = {
    bg0 = pal.bg0, -- Dark bg (status line and float)
    bg1 = pal.bg1, -- Default bg
    bg2 = pal.bg2, -- Lighter bg (colorcolm folds)
    bg3 = pal.bg3, -- Lighter bg (cursor line)
    bg4 = pal.bg4, -- Conceal, border fg

    fg0 = pal.fg0, -- Lighter fg
    fg1 = pal.fg1, -- Default fg
    fg2 = pal.fg2, -- Darker fg (status line)
    fg3 = pal.fg3, -- Darker fg (line numbers, fold colums)

    sel0 = pal.sel0, -- Popup bg, visual selection bg
    sel1 = pal.sel1, -- Popup sel bg, search bg
    dark_bg = pal.dark_bg, -- Lualine bg
  }

  spec.pal = {
    accent = pal[accent],
    black = pal.black,
    red = pal.red,
    green = pal.green,
    blue = pal.blue,
    yellow = pal.yellow,
    orange = pal.orange,
    cyan = pal.cyan,
    teal = pal.teal,
    magenta = pal.magenta,
    purple = pal.purple,
    white = pal.white,
  }

  spec.sel1 = spec.pal.accent.bright

  spec.syntax = {
    attr = pal.yellow.base, -- HTML tag attribues
    bool = pal.orange.base, -- Boolean
    bracket = spec.fg2, -- Brackets and Punctuation
    builtin0 = pal.red.bright, -- Builtin variable
    builtin1 = pal.yellow.base, -- Builtin type
    builtin2 = pal.orange.base, -- Builtin const
    builtin3 = pal.red.base, -- For keywords: return, constructor
    comment = pal.comment, -- Comment
    conditional = pal.magenta.base, -- Conditional and loop
    const = pal.orange.bright, -- Constants, imports and booleans
    constructor = pal.red.bright, -- Constructor, JSX elements
    dep = spec.fg3, -- Deprecated
    field = pal.teal.base, -- Field, Property
    func = pal.blue.base, -- Functions and Titles
    ident = pal.magenta.bright, -- Identifiers
    keyword = pal.purple.base, -- Keywords
    number = pal.orange.bright, -- Numbers
    operator = pal.purple.bright, -- Operators
    param = pal.red.bright, -- Params
    preproc = pal.purple.base, -- PreProc
    regex = pal.orange.base, -- Regex
    statement = pal.purple.base, -- Statements
    string = pal.green.base, -- Strings
    delimiter = pal.teal.base, -- Tag delimiter
    type = pal.yellow.base, -- Types
    variable = spec.fg1, -- Variables
  }

  spec.diag = {
    error = pal.red.base,
    warn = pal.yellow.base,
    info = pal.cyan.base,
    hint = pal.green.base,
  }

  spec.diff = {
    add = pal.green.dim,
    delete = pal.red.dim,
    change = pal.yellow.dim,
    text = pal.cyan.dim,
  }

  spec.git = {
    add = pal.cyan.base,
    removed = pal.red.base,
    changed = pal.yellow.base,
    conflict = pal.orange.base,
    ignored = pal.comment,
  }

  return spec
end

return M
