-- Tokyo Cyan Theme for Neovim
-- A Tokyo Night inspired theme with custom cyan accents
-- Based on: https://github.com/folke/tokyonight.nvim (Storm variant)
-- Customized with bright cyan for visual distinction

local vim = vim or {}
vim.cmd("set background=dark")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "tokyo-cyan"

-- Color Palette: Tokyo Night with Cyan accents
-- Based on https://github.com/folke/tokyonight.nvim
local colors = {
   -- Primary Background & UI (from Tokyo Night Storm) - Darkened
   bg0 = "#1a1d28",          -- Main background (darkened from #313244)
   bg1 = "#141820",          -- Secondary background (dark, darkened from #1f2335)
   bg2 = "#1e2230",          -- Tertiary background (highlight, darkened from #292e42)
   bg3 = "#0f1219",          -- Quaternary background (darkened from #1b1e2d)
   bg_d = "#0a0d15",         -- Darkened variant (darkened from #16192e)

   -- Foreground
   fg = "#c0caf5",           -- Primary text
   grey = "#565f89",         -- Secondary text (comment color)
   light_grey = "#a9b1d6",   -- Tertiary text (neutral, less blue)

  -- Semantic Colors: Tokyo Night
  -- Keywords & Control Flow
  purple = "#9d7cd8",       -- Keywords (tokyo purple)

  -- Strings & Characters
  green = "#9ece6a",        -- Strings (tokyo green)

  -- Functions & Methods
  blue = "#7aa2f7",         -- Functions (tokyo blue)

  -- Constants & Numbers
  orange = "#ff9e64",       -- Constants/Numbers (tokyo orange)

  -- Types & Classes
  yellow = "#e0af68",       -- Types (tokyo yellow)

   -- Variables & Members - CYAN ACCENT (Custom Tokyo Cyan signature)
   cyan = "#24ffb6",         -- Primary cyan accent (ayu tokyo bright cyan)
   cyan_alt = "#13fab1",     -- Secondary cyan (ayu tokyo cyan hover)
   cyan_muted = "#0db9d7",   -- Muted cyan (tokyo blue2)

  -- Warnings, Errors, Info
  red = "#f7768e",          -- Errors (tokyo red)
  dark_cyan = "#414868",    -- Dark cyan for backgrounds (terminal black)
  dark_red = "#914c54",     -- Dark red for backgrounds
  dark_yellow = "#6183bb",  -- Dark yellow for backgrounds (git change)

  -- Git & Diff colors
  git_add = "#449dab",      -- Added (tokyo git add)
  git_change = "#6183bb",   -- Changed (tokyo git change)
  git_delete = "#914c54",   -- Deleted (tokyo git delete)

   -- UI Colors
   cursor_line = "#141820",  -- Cursor line background (darkened)
   selection = "#2d5a6b",    -- Selection background (cyan-tinted, less blue)
   comment = "#565f89",      -- Comments (tokyo comment)
}

-- Helper function to set highlights
local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ============================================================================
-- BASE EDITOR UI HIGHLIGHTS
-- ============================================================================

set_hl("Normal", { fg = colors.fg, bg = colors.bg0 })
set_hl("NormalFloat", { fg = colors.fg, bg = colors.bg1 })
set_hl("FloatBorder", { fg = colors.cyan, bg = colors.bg1 })  -- Bright cyan for floating window borders

-- Line numbers and cursor
set_hl("LineNr", { fg = colors.grey })
set_hl("LineNrAbove", { fg = colors.grey })
set_hl("LineNrBelow", { fg = colors.grey })
set_hl("CursorLineNr", { fg = colors.cyan, bold = true })
set_hl("CursorLine", { bg = colors.bg1 })
set_hl("CursorColumn", { bg = colors.bg1 })
set_hl("ColorColumn", { bg = colors.bg1 })

-- Cursor
set_hl("Cursor", { fg = colors.bg0, bg = colors.cyan })
set_hl("TermCursor", { fg = colors.bg0, bg = colors.cyan })

-- Selection and search
set_hl("Visual", { bg = colors.selection })
set_hl("VisualNOS", { bg = colors.selection })
set_hl("Search", { bg = colors.dark_yellow, fg = colors.fg })
set_hl("IncSearch", { bg = colors.orange, fg = colors.bg0 })

-- Whitespace
set_hl("Whitespace", { fg = colors.grey })
set_hl("SpecialKey", { fg = colors.grey })
set_hl("NonText", { fg = colors.grey })

-- Status line
set_hl("StatusLine", { fg = colors.fg, bg = colors.bg2 })
set_hl("StatusLineNC", { fg = colors.grey, bg = colors.bg1 })
set_hl("MsgArea", { fg = colors.fg, bg = colors.bg0 })
set_hl("MsgSeparator", { fg = colors.grey, bg = colors.bg1 })

-- ============================================================================
-- SYNTAX HIGHLIGHTING (Following OneDark's semantic approach)
-- ============================================================================

-- Comments
set_hl("Comment", { fg = colors.comment, italic = true })

-- Strings & Characters
set_hl("String", { fg = colors.green })
set_hl("Character", { fg = colors.orange })

-- Numbers & Booleans
set_hl("Number", { fg = colors.orange })
set_hl("Float", { fg = colors.orange })
set_hl("Boolean", { fg = colors.orange })
set_hl("Constant", { fg = colors.orange })

-- Identifiers & Variables
set_hl("Identifier", { fg = colors.fg })
set_hl("Variable", { fg = colors.fg })

-- Functions
set_hl("Function", { fg = colors.blue })
set_hl("Method", { fg = colors.blue })

-- Keywords & Control Flow
set_hl("Statement", { fg = colors.purple })
set_hl("Keyword", { fg = colors.purple })
set_hl("Conditional", { fg = colors.purple })
set_hl("Repeat", { fg = colors.purple })
set_hl("Label", { fg = colors.purple })
set_hl("Operator", { fg = colors.fg })

-- Types & Classes
set_hl("Type", { fg = colors.yellow })
set_hl("StorageClass", { fg = colors.purple })
set_hl("Structure", { fg = colors.yellow })
set_hl("Typedef", { fg = colors.yellow })

-- Preprocessor & Includes
set_hl("PreProc", { fg = colors.purple })
set_hl("Include", { fg = colors.purple })
set_hl("Define", { fg = colors.purple })
set_hl("Macro", { fg = colors.purple })

-- Special Elements
set_hl("Special", { fg = colors.cyan })
set_hl("SpecialChar", { fg = colors.orange })
set_hl("Tag", { fg = colors.purple })
set_hl("Delimiter", { fg = colors.light_grey })

-- Errors & Diagnostics
set_hl("Error", { fg = colors.red, bold = true })
set_hl("Warning", { fg = colors.orange })
set_hl("Info", { fg = colors.cyan })
set_hl("Debug", { fg = colors.orange })

set_hl("Underlined", { underline = true })
set_hl("Bold", { bold = true })
set_hl("Italic", { italic = true })

-- ============================================================================
-- COMPLETION MENU
-- ============================================================================

set_hl("Pmenu", { fg = colors.fg, bg = colors.bg1 })
set_hl("PmenuSel", { fg = colors.bg0, bg = colors.cyan })  -- Bright cyan for selected completion item
set_hl("PmenuSbar", { bg = colors.bg2 })
set_hl("PmenuThumb", { bg = colors.cyan })  -- Bright cyan scrollbar thumb

-- ============================================================================
-- DIFF & VERSION CONTROL
-- ============================================================================

set_hl("DiffAdd", { bg = colors.git_add })
set_hl("DiffDelete", { bg = colors.git_delete })
set_hl("DiffChange", { bg = colors.git_change })
set_hl("DiffText", { bg = colors.cyan, bold = true })

-- Spelling
set_hl("SpellBad", { undercurl = true, sp = colors.red })
set_hl("SpellCap", { undercurl = true, sp = colors.orange })
set_hl("SpellLocal", { undercurl = true, sp = colors.cyan })
set_hl("SpellRare", { undercurl = true, sp = colors.purple })

-- ============================================================================
-- FOLDING & UI ELEMENTS
-- ============================================================================

set_hl("Folded", { fg = colors.grey, bg = colors.bg2 })
set_hl("FoldColumn", { fg = colors.grey, bg = colors.bg0 })
set_hl("VertSplit", { fg = colors.grey })
set_hl("WinSeparator", { fg = colors.grey })
set_hl("Directory", { fg = colors.cyan })

-- ============================================================================
-- LSP & DIAGNOSTICS (Following OneDark pattern)
-- ============================================================================

set_hl("DiagnosticError", { fg = colors.red })
set_hl("DiagnosticWarn", { fg = colors.orange })
set_hl("DiagnosticInfo", { fg = colors.cyan })
set_hl("DiagnosticHint", { fg = colors.cyan })

set_hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
set_hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.orange })
set_hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.cyan })
set_hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.cyan })

-- ============================================================================
-- TREESITTER HIGHLIGHTS (Modern semantic highlighting)
-- Following OneDark's semantic color assignments
-- ============================================================================

-- Text & Comments
set_hl("@text", { fg = colors.fg })
set_hl("@text.literal", { fg = colors.green })
set_hl("@text.reference", { fg = colors.cyan })
set_hl("@comment", { fg = colors.comment, italic = true })
set_hl("@comment.todo", { fg = colors.orange, bold = true })
set_hl("@comment.warning", { fg = colors.orange })
set_hl("@comment.note", { fg = colors.cyan })

-- Strings & Characters (Green from OneDark)
set_hl("@string", { fg = colors.green })
set_hl("@string.escape", { fg = colors.orange })
set_hl("@string.special", { fg = colors.orange })
set_hl("@character", { fg = colors.orange })

-- Numbers & Constants (Orange from OneDark)
set_hl("@number", { fg = colors.orange })
set_hl("@boolean", { fg = colors.orange })
set_hl("@constant", { fg = colors.orange })
set_hl("@constant.builtin", { fg = colors.orange })
set_hl("@constant.macro", { fg = colors.orange })

-- Variables (with special treatment for different variable types)
set_hl("@variable", { fg = colors.fg })                 -- Regular variables - foreground white
set_hl("@variable.builtin", { fg = colors.red })        -- Built-in variables (self, this, etc.) - like onedark
set_hl("@variable.parameter", { fg = colors.orange })   -- Function parameters - orangeish (AyuTokyo style)
set_hl("@variable.member", { fg = colors.green })       -- Object properties/fields - greenish (AyuTokyo style)

-- Functions (Blue from OneDark)
set_hl("@function", { fg = colors.blue })               -- Regular functions/hooks (useState, useEffect, etc.)
set_hl("@function.builtin", { fg = colors.cyan_muted }) -- Built-in functions (parseInt, Array.map, etc.)
set_hl("@function.call", { fg = colors.blue })
set_hl("@function.macro", { fg = colors.cyan_muted })
set_hl("@method", { fg = colors.blue })
set_hl("@method.call", { fg = colors.blue })
set_hl("@constructor", { fg = colors.yellow })

-- Property names in destructuring and object patterns
set_hl("@property", { fg = colors.fg })                  -- Object property names - white like variables

-- Keywords & Control Flow (Purple from OneDark)
set_hl("@keyword", { fg = colors.purple })
set_hl("@keyword.function", { fg = colors.purple })
set_hl("@keyword.operator", { fg = colors.purple })
set_hl("@keyword.return", { fg = colors.purple })
set_hl("@conditional", { fg = colors.purple })
set_hl("@repeat", { fg = colors.purple })
set_hl("@label", { fg = colors.purple })
set_hl("@operator", { fg = colors.fg })

-- Types & Structures (Yellow from OneDark)
set_hl("@type", { fg = colors.yellow })
set_hl("@type.builtin", { fg = colors.orange })
set_hl("@namespace", { fg = colors.yellow })
set_hl("@structure", { fg = colors.yellow })
set_hl("@include", { fg = colors.purple })
set_hl("@preproc", { fg = colors.purple })
set_hl("@define", { fg = colors.purple })
set_hl("@macro", { fg = colors.purple })

-- Punctuation (Light Grey from OneDark)
set_hl("@punctuation.delimiter", { fg = colors.light_grey })
set_hl("@punctuation.bracket", { fg = colors.light_grey })
set_hl("@punctuation.special", { fg = colors.orange })

-- Tags & Markup
set_hl("@tag", { fg = colors.purple })
set_hl("@tag.delimiter", { fg = colors.light_grey })
set_hl("@tag.attribute", { fg = colors.orange })

-- Markup
set_hl("@markup.heading", { fg = colors.orange, bold = true })
set_hl("@markup.italic", { italic = true })
set_hl("@markup.bold", { bold = true })
set_hl("@markup.underline", { underline = true })
set_hl("@markup.strikethrough", { strikethrough = true })
set_hl("@markup.link", { fg = colors.cyan, underline = true })
set_hl("@markup.link.url", { fg = colors.cyan, underline = true })
set_hl("@markup.link.label", { fg = colors.blue })
set_hl("@markup.raw", { fg = colors.green })
set_hl("@markup.list", { fg = colors.orange })
set_hl("@markup.list.checked", { fg = colors.green })
set_hl("@markup.list.unchecked", { fg = colors.grey })

-- ============================================================================
-- PLUGIN HIGHLIGHTS
-- ============================================================================

-- Telescope
set_hl("TelescopeBorder", { fg = colors.cyan })  -- Bright cyan border
set_hl("TelescopeSelection", { fg = colors.cyan_muted, bg = colors.bg2 })  -- Less invasive selection
set_hl("TelescopeMatching", { fg = colors.orange, bold = true })

-- NvimTree
set_hl("NvimTreeNormal", { fg = colors.fg, bg = colors.bg0 })
set_hl("NvimTreeFolderIcon", { fg = colors.blue })
set_hl("NvimTreeOpenedFolderIcon", { fg = colors.blue })
set_hl("NvimTreeGitNew", { fg = colors.green })
set_hl("NvimTreeGitDirty", { fg = colors.orange })
set_hl("NvimTreeGitDeleted", { fg = colors.red })
set_hl("NvimTreeCursorLine", { bg = colors.bg2 })  -- Less invasive current file highlight
set_hl("NvimTreeWindowPicker", { fg = colors.bg0, bg = colors.cyan })  -- Window picker uses bright cyan

-- Git Signs
set_hl("GitSignsAdd", { fg = colors.green })
set_hl("GitSignsChange", { fg = colors.blue })
set_hl("GitSignsDelete", { fg = colors.red })

-- Indent Guides
set_hl("IblIndent", { fg = colors.bg2 })
set_hl("IblScope", { fg = colors.cyan_muted })

-- LSP References
set_hl("LspReferenceText", { bg = colors.bg2 })
set_hl("LspReferenceRead", { bg = colors.bg2 })
set_hl("LspReferenceWrite", { bg = colors.bg2 })

-- ============================================================================
-- TERMINAL COLORS (16 ANSI colors)
-- ============================================================================

if vim.fn.has("win32") == 0 then
  vim.g.terminal_color_0 = colors.bg0
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_3 = colors.orange
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_5 = colors.purple
  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_7 = colors.fg
  vim.g.terminal_color_8 = colors.grey
  vim.g.terminal_color_9 = colors.red
  vim.g.terminal_color_10 = colors.green
  vim.g.terminal_color_11 = colors.orange
  vim.g.terminal_color_12 = colors.blue
  vim.g.terminal_color_13 = colors.purple
  vim.g.terminal_color_14 = colors.cyan
  vim.g.terminal_color_15 = colors.light_grey
end
