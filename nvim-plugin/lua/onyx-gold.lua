-- onyx-gold.nvim
-- Onyx Gold Dark & Light colorscheme for Neovim

local M = {}

M.config = {
  variant = 'dark',
}

local palettes = {
  dark = {
    bg = '#111111',
    bg1 = '#1a1a1a',
    bg2 = '#222222',
    bg3 = '#2a2a2a',
    bg4 = '#333333',
    fg = '#eeeeee',
    fg1 = '#dddddd',
    fg2 = '#999999',
    comment = '#555555',
    gold = '#e5b842',
    gold_dim = '#c49312',
    green = '#4cc580',
    red = '#eb5757',
    none = 'NONE',
  },
  light = {
    bg = '#eeeeee',
    bg1 = '#e0e0e0',
    bg2 = '#d5d5d5',
    bg3 = '#cccccc',
    bg4 = '#bbbbbb',
    fg = '#333333',
    fg1 = '#444444',
    fg2 = '#666666',
    comment = '#888888',
    gold = '#c49312',
    gold_dim = '#a07a0e',
    green = '#00933f',
    red = '#eb5757',
    none = 'NONE',
  },
}

local function set_highlights(p)
  local hi = vim.api.nvim_set_hl

  -- Editor
  hi(0, 'Normal', { fg = p.fg, bg = p.bg })
  hi(0, 'NormalFloat', { fg = p.fg, bg = p.bg1 })
  hi(0, 'FloatBorder', { fg = p.gold, bg = p.bg1 })
  hi(0, 'Cursor', { fg = p.bg, bg = p.gold })
  hi(0, 'CursorLine', { bg = p.bg1 })
  hi(0, 'CursorLineNr', { fg = p.gold, bold = true })
  hi(0, 'LineNr', { fg = p.comment })
  hi(0, 'SignColumn', { bg = p.bg })
  hi(0, 'ColorColumn', { bg = p.bg1 })
  hi(0, 'Visual', { bg = p.bg3 })
  hi(0, 'VisualNOS', { bg = p.bg3 })
  hi(0, 'Search', { fg = p.bg, bg = p.gold })
  hi(0, 'IncSearch', { fg = p.bg, bg = p.gold })
  hi(0, 'CurSearch', { fg = p.bg, bg = p.gold, bold = true })
  hi(0, 'Substitute', { fg = p.bg, bg = p.red })
  hi(0, 'MatchParen', { fg = p.gold, bold = true, underline = true })
  hi(0, 'Pmenu', { fg = p.fg, bg = p.bg1 })
  hi(0, 'PmenuSel', { fg = p.bg, bg = p.gold })
  hi(0, 'PmenuSbar', { bg = p.bg2 })
  hi(0, 'PmenuThumb', { bg = p.gold })
  hi(0, 'WildMenu', { fg = p.bg, bg = p.gold })
  hi(0, 'Folded', { fg = p.comment, bg = p.bg1 })
  hi(0, 'FoldColumn', { fg = p.comment, bg = p.bg })
  hi(0, 'VertSplit', { fg = p.bg3 })
  hi(0, 'WinSeparator', { fg = p.bg3 })
  hi(0, 'StatusLine', { fg = p.fg, bg = p.bg1 })
  hi(0, 'StatusLineNC', { fg = p.comment, bg = p.bg1 })
  hi(0, 'TabLine', { fg = p.fg2, bg = p.bg1 })
  hi(0, 'TabLineFill', { bg = p.bg })
  hi(0, 'TabLineSel', { fg = p.gold, bg = p.bg, bold = true })
  hi(0, 'Title', { fg = p.gold, bold = true })
  hi(0, 'Directory', { fg = p.gold })
  hi(0, 'NonText', { fg = p.bg3 })
  hi(0, 'SpecialKey', { fg = p.bg3 })
  hi(0, 'Whitespace', { fg = p.bg3 })
  hi(0, 'EndOfBuffer', { fg = p.bg })
  hi(0, 'ErrorMsg', { fg = p.red })
  hi(0, 'WarningMsg', { fg = p.gold })
  hi(0, 'ModeMsg', { fg = p.gold, bold = true })
  hi(0, 'MoreMsg', { fg = p.green })
  hi(0, 'Question', { fg = p.green })

  -- Diff
  hi(0, 'DiffAdd', { bg = '#1a2e1a' })
  hi(0, 'DiffChange', { bg = '#2e2a1a' })
  hi(0, 'DiffDelete', { fg = p.red, bg = '#2e1a1a' })
  hi(0, 'DiffText', { bg = '#3e3a2a' })

  -- Syntax
  hi(0, 'Comment', { fg = p.comment, italic = true })
  hi(0, 'Constant', { fg = p.gold })
  hi(0, 'String', { fg = p.green })
  hi(0, 'Character', { fg = p.green })
  hi(0, 'Number', { fg = p.gold })
  hi(0, 'Boolean', { fg = p.gold })
  hi(0, 'Float', { fg = p.gold })
  hi(0, 'Identifier', { fg = p.fg })
  hi(0, 'Function', { fg = p.gold })
  hi(0, 'Statement', { fg = p.gold })
  hi(0, 'Conditional', { fg = p.gold })
  hi(0, 'Repeat', { fg = p.gold })
  hi(0, 'Label', { fg = p.gold })
  hi(0, 'Operator', { fg = p.fg1 })
  hi(0, 'Keyword', { fg = p.gold })
  hi(0, 'Exception', { fg = p.red })
  hi(0, 'PreProc', { fg = p.gold })
  hi(0, 'Include', { fg = p.gold })
  hi(0, 'Define', { fg = p.gold })
  hi(0, 'Macro', { fg = p.gold })
  hi(0, 'PreCondit', { fg = p.gold })
  hi(0, 'Type', { fg = p.gold })
  hi(0, 'StorageClass', { fg = p.gold })
  hi(0, 'Structure', { fg = p.gold })
  hi(0, 'Typedef', { fg = p.gold })
  hi(0, 'Special', { fg = p.gold })
  hi(0, 'SpecialChar', { fg = p.green })
  hi(0, 'Tag', { fg = p.gold })
  hi(0, 'Delimiter', { fg = p.fg1 })
  hi(0, 'SpecialComment', { fg = p.comment, italic = true })
  hi(0, 'Debug', { fg = p.red })
  hi(0, 'Underlined', { underline = true })
  hi(0, 'Error', { fg = p.red })
  hi(0, 'Todo', { fg = p.bg, bg = p.gold, bold = true })

  -- Treesitter
  hi(0, '@variable', { fg = p.fg })
  hi(0, '@variable.parameter', { fg = p.fg1 })
  hi(0, '@variable.builtin', { fg = p.gold_dim })
  hi(0, '@variable.member', { fg = p.fg })
  hi(0, '@constant', { fg = p.gold })
  hi(0, '@constant.builtin', { fg = p.gold })
  hi(0, '@module', { fg = p.fg1 })
  hi(0, '@string', { fg = p.green })
  hi(0, '@string.escape', { fg = p.gold })
  hi(0, '@character', { fg = p.green })
  hi(0, '@number', { fg = p.gold })
  hi(0, '@boolean', { fg = p.gold })
  hi(0, '@float', { fg = p.gold })
  hi(0, '@function', { fg = p.gold })
  hi(0, '@function.call', { fg = p.gold })
  hi(0, '@function.method', { fg = p.green })
  hi(0, '@function.method.call', { fg = p.green })
  hi(0, '@function.builtin', { fg = p.gold })
  hi(0, '@constructor', { fg = p.gold })
  hi(0, '@keyword', { fg = p.gold })
  hi(0, '@keyword.function', { fg = p.gold })
  hi(0, '@keyword.return', { fg = p.gold })
  hi(0, '@keyword.operator', { fg = p.gold })
  hi(0, '@keyword.import', { fg = p.gold })
  hi(0, '@operator', { fg = p.fg1 })
  hi(0, '@punctuation.bracket', { fg = p.gold })
  hi(0, '@punctuation.delimiter', { fg = p.fg2 })
  hi(0, '@type', { fg = p.gold })
  hi(0, '@type.builtin', { fg = p.gold_dim })
  hi(0, '@tag', { fg = p.gold })
  hi(0, '@tag.attribute', { fg = p.green })
  hi(0, '@tag.delimiter', { fg = p.fg2 })
  hi(0, '@property', { fg = p.fg })
  hi(0, '@comment', { fg = p.comment, italic = true })

  -- LSP
  hi(0, 'DiagnosticError', { fg = p.red })
  hi(0, 'DiagnosticWarn', { fg = p.gold })
  hi(0, 'DiagnosticInfo', { fg = p.green })
  hi(0, 'DiagnosticHint', { fg = p.fg2 })
  hi(0, 'DiagnosticUnderlineError', { undercurl = true, sp = p.red })
  hi(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = p.gold })
  hi(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = p.green })
  hi(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = p.fg2 })
  hi(0, 'LspReferenceText', { bg = p.bg2 })
  hi(0, 'LspReferenceRead', { bg = p.bg2 })
  hi(0, 'LspReferenceWrite', { bg = p.bg3 })

  -- Git signs
  hi(0, 'GitSignsAdd', { fg = p.green })
  hi(0, 'GitSignsChange', { fg = p.gold })
  hi(0, 'GitSignsDelete', { fg = p.red })

  -- Telescope
  hi(0, 'TelescopeNormal', { fg = p.fg, bg = p.bg })
  hi(0, 'TelescopeBorder', { fg = p.gold, bg = p.bg })
  hi(0, 'TelescopePromptNormal', { fg = p.fg, bg = p.bg1 })
  hi(0, 'TelescopePromptBorder', { fg = p.gold, bg = p.bg1 })
  hi(0, 'TelescopePromptTitle', { fg = p.bg, bg = p.gold, bold = true })
  hi(0, 'TelescopePreviewTitle', { fg = p.bg, bg = p.green, bold = true })
  hi(0, 'TelescopeResultsTitle', { fg = p.bg, bg = p.gold, bold = true })
  hi(0, 'TelescopeSelection', { fg = p.gold, bg = p.bg2 })
  hi(0, 'TelescopeMatching', { fg = p.gold, bold = true })

  -- Which-key
  hi(0, 'WhichKey', { fg = p.gold })
  hi(0, 'WhichKeyGroup', { fg = p.green })
  hi(0, 'WhichKeyDesc', { fg = p.fg })
  hi(0, 'WhichKeySeparator', { fg = p.comment })

  -- Indent blankline
  hi(0, 'IblIndent', { fg = p.bg2 })
  hi(0, 'IblScope', { fg = p.gold_dim })

  -- Mini
  hi(0, 'MiniStatuslineFilename', { fg = p.fg, bg = p.bg1 })
  hi(0, 'MiniStatuslineDevinfo', { fg = p.fg1, bg = p.bg2 })
  hi(0, 'MiniStatuslineModeNormal', { fg = p.bg, bg = p.gold, bold = true })
  hi(0, 'MiniStatuslineModeInsert', { fg = p.bg, bg = p.green, bold = true })
  hi(0, 'MiniStatuslineModeVisual', { fg = p.bg, bg = p.gold_dim, bold = true })
  hi(0, 'MiniStatuslineModeReplace', { fg = p.bg, bg = p.red, bold = true })
  hi(0, 'MiniStatuslineModeCommand', { fg = p.bg, bg = p.gold, bold = true })
end

function M.setup(opts)
  M.config = vim.tbl_deep_extend('force', M.config, opts or {})
end

function M.load()
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  vim.g.colors_name = 'onyx-gold'
  vim.o.termguicolors = true

  local variant = M.config.variant or 'dark'
  vim.o.background = variant

  local p = palettes[variant]
  set_highlights(p)
end

return M
