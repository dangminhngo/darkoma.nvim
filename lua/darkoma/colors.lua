local Color = require("darkoma.lib.color")

local M = {}

local C = Color:new({
  bg = "#202e3c",
  fg = "#b2c4d6",
  factor = 0.2,
})

M.pal = {
  default = {
    black = C:shade("#18222b"),
    red = C:shade("#f3787d"),
    green = C:shade("#93d785"),
    blue = C:shade("#62b1ff"),
    yellow = C:shade("#e4d76c"),
    orange = C:shade("#e3a36d"),
    cyan = C:shade("#5ddae2"),
    teal = C:shade("#4fd5b5"),
    magenta = C:shade("#e67aca"),
    purple = C:shade("#b48dff"),
    white = C:shade("#f4f6f9"),
    comment = "#4e7093",
    bg0 = "#18222b",
    bg1 = "#202e3c",
    bg2 = "#283a4c",
    bg3 = "#31475c",
    bg4 = "#3a536d",
    fg0 = "#dee5ed",
    fg1 = "#b2c4d6",
    fg2 = "#9cb3ca",
    fg3 = "#7192b3",
    sel0 = "#42607d",
    sel1 = "#bfefe4",
    dark_bg = "#10171f",
  },
  hard = {
    black = C:shade("#16212b"),
    red = C:shade("#f3787d"),
    green = C:shade("#93d785"),
    blue = C:shade("#62b1ff"),
    yellow = C:shade("#e4d76c"),
    orange = C:shade("#e3a36d"),
    cyan = C:shade("#5ddae2"),
    teal = C:shade("#4fd5b5"),
    magenta = C:shade("#e67aca"),
    purple = C:shade("#b48dff"),
    white = C:shade("#f3f6f9"),
    comment = "#4c7091",
    bg0 = "#16212b",
    bg1 = "#1e2c39",
    bg2 = "#263849",
    bg3 = "#2f455a",
    bg4 = "#38526a",
    fg0 = "#c7d5e1",
    fg1 = "#a6bcd0",
    fg2 = "#90abc4",
    fg3 = "#6e92b3",
    sel0 = "#415f7b",
    sel1 = "#bfefe4",
    dark_bg = "#0f161d",
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
