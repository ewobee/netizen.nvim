local M = {}

local colors = require("netizen.palette")

M.setup = function()
  return {
	Normal			= { fg = colors.FG, bg = colors.BG }, --
	NormalFloat		= { link = "Normal" }, --

	-- Syntax --
	
	Comment			= { fg = colors.GREY, italic = true },
	
	Keyword			= { fg = colors.RED },
	Statement		= { link = "Keyword" },
	Conditional		= { link = "Keyword" },
	Repeat			= { link = "Keyword" },
	Label			= { link = "Keyword" },
	Exception		= { link = "Keyword" },

	String			= { fg = colors.GREEN, italic = true},
	Character		= { link = "String" },

	Number			= { fg = colors.FG2 },
	Float			= { link = "Number" },
	Boolean			= { link = "Number" },
	Constant		= { link = "Number" },

	Identifier		= { fg = colors.BLUE },
	Variable		= { link = "Identifier" },

	Function		= { fg = colors.YELLOW, bold = true },
	Method			= { link = "Function" },

	Type			= { fg = colors.CYAN, italic = true },
	StorageClass	= { link = "Type" },
	Structure		= { link = "Type" },
	Typedef			= { link = "Type" },

	PreProc			= { fg = colors.RED },
	Define			= { link = "PreProc" },
	Macro			= { link = "PreProc" },
	Include			= { link = "PreProc" },

	Operator		= { fg = colors.FG2 },
	Delimiter		= { link = "Operator" },

	Include			= { link = "Keyword" },
	Namespace		= { link = "Include" },

	Special			= { fg = colors.FG2 },
	Todo			= { fg = colors.HI },

	-- ###### --

	SpecialKey		= { fg = colors.GREY },
	NonText			= { fg = colors.GREY },
	Directory		= { fg = colors.CYAN },
	ErrorMsg		= { fg = colors.RED },
	Search			= { fg = colors.BG, bg = colors.HI },
	CurSearch		= { fg = colors.HI, bg = colors.BG2, bold = true },
	MoreMsg			= { fg = colors.CYAN },
	ModeMsg			= { fg = colors.GREEN },
	LineNr			= { fg = colors.GREY },
	Question		= { fg = colors.CYAN, bold = true },
	StatusLine		= { fg = colors.FG1, bg = colors.BG1 },
	StatusLineNC	= { fg = colors.FG1, bg = colors.BG1 },
	Title			= { fg = colors.FG, bold = true },

	Visual			= { bg = colors.BG2 },

	WarningMsg		= { fg = colors.YELLOW },
	Folded			= { fg = colors.FG1, bg = colors.BG1 },
	DiffAdd			= { fg = colors.FG, bg = colors.GREEN, bold = true },
	DiffChange		= { fg = colors.FG1, bg = colors.BG3, bold = true },
	DiffDelete		= { fg = colors.RED, bold = true },
	DiffText		= { fg = colors.FG, bg = colors.CYAN, bold = true },
	SignColumn		= { fg = colors.GREY },
	Conceal			= { fg = colors.GREY },
	Added			= { fg = colors.GREEN },
	Removed			= { fg = colors.RED },
	Changed			= { fg = colors.CYAN },

	SpellBad		= { undercurl = true, sp = colors.RED },
	SpellCap		= { undercurl = true, sp = colors.YELLOW },
	SpellRare		= { undercurl = true, sp = colors.CYAN },
	SpellLocal		= { undercurl = true, sp = colors.GREEN },

	Pmenu			= { bg = colors.BG2 },
	PmenuSel		= { reverse = true },
	PmenuMatch		= { bold = true },
	PmenuMatchSel	= { link = "PmenuMatch" },
	PmenuThumb		= { bg = colors.BG3 },
	
	CursorColumn	= { bg = colors.BG2 },
	CursorLine		= { link = "CursorColumn" },
	ColorColumn		= { bg = colors.BG3 },

	QuickFixLine	= { fg = colors.CYAN },
	Winbar			= { fg = colors.FG1, bold = true },
	WinbarNC		= { fg = colors.FG1 },
	Cursor			= { link = "Normal" },
	lCursor			= { link = "Cursor" },

	DiagnosticError				= { fg = colors.RED },
	DiagnosticWarn				= { fg = colors.YELLOW },
	DiagnosticInfo				= { fg = colors.CYAN },
	DiagnosticHint				= { fg = colors.BLUE },
	DiagnosticOk				= { fg = colors.GREEN },
	DiagnosticDeprecated		= { strikethrough = true, sp = colors.RED },
	FloatShadow					= { bg = colors.BG3, blend = 80 },
	FloatShadowThrough			= { bg = colors.BG3, blend = 100 },
	MatchParen					= { bg = colors.BG1, bold = true, underline = true },
	RedrawDebugClear     		= { bg = colors.YELLOW },
	RedrawDebugComposed  		= { bg = colors.GREEN },
	RedrawDebugRecompose		= { bg = colors.RED },
	Error						= { fg = colors.RED, bg = colors.RED, bold = true },
	DiagnosticUnderlineError	= { underline = true, sp = colors.RED },
	DiagnosticUnderlineWarn		= { underline = true, sp = colors.YELLOW },
	DiagnosticUnderlineInfo		= { underline = true, sp = colors.CYAN },
	DiagnosticUnderlineHint		= { underline = true, sp = colors.BLUE },
	DiagnosticUnderlineOk		= { underline = true, sp = colors.GREEN },
	NvimInternalError			= { fg = colors.BG, bg = colors.RED },
	
	-- ruby
	rubyStringDelimiter			= { fg = colors.FG1 },
	rubyInterpolationDelimiter	= { link = "rubyStringDelimiter" },
  }
end

return M
