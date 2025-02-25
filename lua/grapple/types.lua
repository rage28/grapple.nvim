---@class Serializable
local Serializable = {}

---@return table
function Serializable:into_table()
    return {}
end

---@class Deserializable
local Deserializable = {}

---@generic T
---@param tbl table
---@return T | nil obj, string? error
---@diagnostic disable-next-line: unused-local
function Deserializable.from_table(tbl) end

---See :h nvim_buf_set_extmark
---@class grapple.vim.extmark
---@field line integer
---@field col integer
---@field opts? table<string, any>

---See :h nvim_buf_add_highlight
---@class grapple.vim.highlight
---@field hl_group string
---@field line integer
---@field col_start integer
---@field col_end integer

---See :h nvim_buf_set_lines
---@class grapple.vim.line
---@field index integer
---@field text string

---See :h nvim_create_user_command
---@class grapple.vim.user_command
---@field name string
---@field args string
---@field fargs table
---@field nargs string
---@field bang boolean
---@field line1 number
---@field line2 number
---@field range number
---@field count number
---@field reg? string
---@field mods? string
---@field smods table

---See :h nvim_open_win
---@class grapple.vim.win_opts
---@field relative? "editor" | "win" | "cursor" | "mouse"
---@field win? integer
---@field anchor? "NW" | "NW" | "SW" | "SE"
---@field width? integer | float either a fixed width or a decimal percentage
---@field height? integer | float either a fixed width or a decimal percentage
---@field bufpos? integer[]
---@field row? integer | float
---@field col? integer | float
---@field focusable? boolean
---@field external? boolean
---@field zindex? integer
---@field style? "minimal"
---@field border? "none" | "single" | "double" | "rounded" | "solid" | "shadow" | string[] default is "none"
---@field title? string
---@field title_pos? "left" | "center" | "right" default is "left"
---@field title_padding? string custom field
---@field footer? string | fun(): string
---@field footer_pos? "left" | "center" | "right" default is "left"
---@field noautocmd? boolean
---@field fixed? boolean
---@field hide? boolean
---@field vertical? boolean
---@field split? "left" | "right" | "above" | "below"
