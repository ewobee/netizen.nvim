local M = {}

local pal = require("netizen.palette")
local col = require("netizen.colors")

M.setup = function()
	return {
		Normal = { fg = col.ui.fg, bg = col.ui.bg },
		NormalNC = { fg = col.ui.fg_dim, bg = col.ui.bg },

		-- Syntax --
		Comment = { fg = col.syn.comment },

		Constant = { fg = col.syn.constant },
		String = { fg = col.syn.string },
		Character = { link = "String" },
		Number = { fg = col.syn.number },
		Boolean = { fg = col.syn.constant, bold = true },
		Float = { link = "Number" },

		Identifier = { fg = col.syn.identifier },
		Function = { fg = col.syn.func },
		Variable = { fg = col.syn.variable },
		['@variable'] = { fg = col.ui.fg },
		['@variable.member'] = { fg = col.syn.variable },

		Statement = { fg = col.syn.statement },
		--  Conditional	if, then, else, endif, switch, etc.
		--  Repeat		for, do, while, etc.
		--  Label		case, default, etc.
		Operator = { fg = col.syn.operator },
		Keyword = { fg = col.syn.keyword },
		Exception = { fg = col.syn.special2 },

		PreProc = { fg = col.syn.preproc },
		--  Include	preprocessor #include
		--  Define		preprocessor #define
		--  Macro		same as Define
		--  PreCondit	preprocessor #if, #else, #endif, etc.

		Type = { fg = col.syn.type },
		--  StorageClass	static, register, volatile, etc.
		--  Structure	struct, union, enum, etc.
		--  Typedef	A typedef

		Special = { fg = col.syn.special1 },
		--  SpecialChar	special character in a constant
		--  Tag		you can use CTRL-] on this
		Delimiter = { fg = col.syn.punct },
		--  SpecialComment	special things inside a comment
		--  Debug		debugging statements

		Underlined = { fg = col.syn.special1, underline = true },
		Bold = { bold = true },
		Italic = { italic = true },

		Ignore = { link = "NonText" },

		Error = { fg = col.syn.error },
		NvimInternalError = { fg = col.syn.error, bg = col.syn.error },

		Todo = { fg = col.ui.bg, bg = col.syn.info, bold = true },

		qfLineNr = { link = "lineNr" },
		qfFileName = { link = "Directory" },

		-- htmlH1 = {},
		-- htmlH2 = {},

		-- mkdHeading = {},
		-- mkdCode = {},
		-- mkdCodeDelimiter = {},
		-- mkdCodeStart = {},
		-- mkdCodeEnd = {},
		-- mkdLink = {},

		-- markdownHeadingDelimiter = {},
		markdownCode = { fg = col.syn.string },
		markdownCodeBlock = { fg = col.syn.string },
		markdownEscape = { fg = "NONE" },
		-- markdownH1 = {},
		-- markdownH2 = {},
		-- markdownLinkText = {},

		-- UI --
		ColorColumn = { bg = col.ui.bg_dim },
		Conceal = { fg = pal.fg4, bold = true },
		CurSearch = { fg = col.ui.bg, bg = col.syn.search, bold = true },
		Cursor = { link = "TermCursor" },
		lCursor = { link = "Cursor" },
		CursorIM = { link = "Cursor" },
		CursorColumn = { link = "CursorLine" },
		CursorLine = { bg = pal.bg1_5 },
		Directory = { fg = col.syn.func },
		DiffAdd = { fg = col.syn.add, bg = col.syn.added },
		DiffChange = { fg = col.syn.change, bg = col.syn.changed },
		DiffDelete = { fg = col.syn.delete, bg = col.syn.removed },
		DiffText = { fg = col.syn.change, bg = col.syn.text },
		Added = { fg = col.syn.add },
		Removed = { fg = col.syn.delete },
		Changed = { fg = col.syn.change },
		EndOfBuffer = { fg = col.ui.bg },
		TermCursor = { fg = col.ui.bg, bg = pal.fg4 },
		-- TermCursorNC	Cursor in an unfocused terminal.
		ErrorMsg = { fg = col.syn.error },
		WinSeparator = { fg = pal.bg3 },
		VertSplit = { link = "WinSeparator" },
		Folded = { fg = pal.fg4, bg = pal.bg1_5 },
		FoldColumn = { fg = col.ui.nontext, bg = pal.bg1_5 },
		SignColumn = { fg = pal.fg4, bg = pal.bg1_5 },
		IncSearch = { fg = col.ui.bg, bg = col.syn.search },
		Substitute = { fg = col.ui.fg, bg = col.syn.removed },
		LineNr = { fg = pal.bg5, bg = col.ui.bg_dim },
		-- LineNrAbove	Line number for when the 'relativenumber' option is set, above the cursor line.
		-- LineNrBelow	Line number for when the 'relativenumber' option is set, below the cursor line.
		CursorLineNr = { fg = pal.fg4, bg = col.ui.bg_dim, bold = true },
		-- CursorLineFold	Like FoldColumn when 'cursorline' is set for the cursor line.
		-- CursorLineSign	Like SignColumn when 'cursorline' is set for the cursor line.
		MatchParen = { fg = col.ui.fg_dim, bg = col.ui.bg_sel, bold = true },
		ModeMsg = { fg = col.syn.warning, bold = true },
		MsgArea = vim.o.cmdheight == 0 and { link = 'StatusLine' } or { fg = col.ui.fg_dim },
		MsgSeparator = { bg = col.ui.status, fg = col.ui.status },
		MoreMsg = { fg = col.syn.info },
		NonText = { fg = pal.bg5 },

		NormalFloat = { fg = col.ui.fg, bg = pal.bg1 },
		FloatBorder = { fg = col.ui.fg_dim, bg = col.ui.status },
		FloatTitle = { fg = pal.fg4, bg = col.ui.status, bold = true },
		FloatFooter = { fg = pal.bg5, bg = col.ui.status },

		Pmenu = { fg = col.ui.fg, bg = col.ui.pmenu.bg },
		PmenuSel = { fg = col.ui.fg_sel, bg = col.ui.pmenu.sel },
		PmenuKind = { fg = col.ui.fg_dim, bg = col.ui.pmenu.bg },
		PmenuKindSel = { fg = col.ui.fg_dim, bg = col.ui.pmenu.sel },
		PmenuExtra = { fg = pal.fg4, bg = col.ui.pmenu.bg },
		PmenuExtraSel = { fg = col.ui.nontext, bg = col.ui.pmenu.sel },
		PmenuSbar = { bg = col.ui.pmenu.bg },
		PmenuThumb = { bg = col.ui.pmenu.sel },
		PmenuBorder = { fg = pal.bg3, bg = col.ui.pmenu.sel },
		Question = { link = "MoreMsg" },
		QuickFixLine = { bg = pal.bg1 },
		Search = { fg = col.ui.fg, bg = col.syn.searchbg },
		SpecialKey = { fg = pal.fg4 },
		SpellBad = { undercurl = true, sp = col.syn.error },
		SpellCap = { undercurl = true, sp = col.syn.warning },
		SpellRare = { undercurl = true, sp = col.syn.ok },
		SpellLocal = { undercurl = true, sp = col.syn.change },
		StatusLine = { fg = col.ui.fg_dim, bg = col.ui.status },
		StatusLineNC = { fg = pal.fg4, bg = col.ui.status },
		TabLine = { bg = col.ui.bg_gutter, fg = col.ui.nontext },
		TabLineFill = { bg = col.ui.bg_gutter },
		TabLineSel = { fg = col.ui.fg_dim, bg = col.ui.bg },
		Title = { fg = col.syn.func, bold = true },
		Visual = { bg = pal.bg3 },
		VisualNOS = { link = "Visual" },
		WarningMsg = { fg = col.syn.warning },
		Whitespace = { link = "NonText" },
		WildMenu = { link = "Pmenu" },
		WinBar = { fg = col.ui.fg_dim, bg = "NONE" },
		WinBarNC = { fg = pal.fg3, bg = pal.bg1 },

		-- SignColumnSB = { link = "SignColumn" },
		-- NormalSB = { link = "Normal" },

		debugPC = { bg = col.syn.delete },
		debugBreakpoint = { fg = col.syn.special1, bg = col.ui.bg_dim },

		LspReferenceText = { bg = col.syn.text },
		LspReferenceRead = { link = "LspReferenceText" },
		LspReferenceWrite = { bg = col.syn.text, underline = true },
		-- LspInlayHint = { link = "NonText"},

		DiagnosticError = { fg = col.syn.error },
		DiagnosticWarn = { fg = col.syn.warning },
		DiagnosticInfo = { fg = col.syn.info },
		DiagnosticHint = { fg = col.syn.hint },
		DiagnosticOk = { fg = col.syn.ok },

		DiagnosticFloatingError = { fg = col.syn.error },
		DiagnosticFloatingWarn = { fg = col.syn.warning },
		DiagnosticFloatingInfo = { fg = col.syn.info },
		DiagnosticFloatingHint = { fg = col.syn.hint },
		DiagnosticFloatingOk = { fg = col.syn.ok },

		DiagnosticSignError = { fg = col.syn.error, bg = col.ui.bg_dim },
		DiagnosticSignWarn = { fg = col.syn.warning, bg = col.ui.bg_dim },
		DiagnosticSignInfo = { fg = col.syn.info, bg = col.ui.bg_dim },
		DiagnosticSignHint = { fg = col.syn.hint, bg = col.ui.bg_dim },

		DiagnosticVirtualTextError = { link = "DiagnosticError" },
		DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
		DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
		DiagnosticVirtualTextHint = { link = "DiagnosticHint" },

		DiagnosticUnderlineError = { undercurl = true, sp = col.syn.error },
		DiagnosticUnderlineWarn = { undercurl = true, sp = col.syn.warning },
		DiagnosticUnderlineInfo = { undercurl = true, sp = col.syn.info },
		DiagnosticUnderlineHint = { undercurl = true, sp = col.syn.hint },

		LspSignatureActiveParameter = { fg = col.syn.warning },
		LspCodeLens = { fg = col.syn.comment },
	}
end

return M
