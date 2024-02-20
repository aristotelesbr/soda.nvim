local theme = {}

function theme.setup()
	local colors = {
		-- Base
		bg = "#ffffff", -- Background
		fg = "#555555", -- Foreground
		cursor_bg = "#615649",
		visual_bg = "#c2e8ff",
		sign_column_bg = "NONE",
		cursor_line_bg = "#e6e6e6",
		line_nr_fg = "#aaaaaa",
		vert_split_fg = "#cecece",
		vert_split_bg = "#cecece",
		match_paren_fg = "#61862f",
		status_line_bg = "#b5b5b5",
		pmenu_fg = "#61862f",
		pmenu_sel_bg = "#c2e8ff",

		-- Syntax
		comment_fg = "#adadad",
		constant_fg = "#7653c1",
		string_fg = "#bc670f",
		boolean_fg = "#7653c1",
		function_fg = "#61862f",
		identifier_fg = "#222222",
		keyword_fg = "#61862f",
		number_fg = "#7653c1",
		operator_fg = "#626fc9",
		type_fg = "#3a1d72",

		-- Ruby specific
		rubyConstant_fg = "#3a1d72",
		rubyStringDelimiter_fg = "#bc670f",
		rubyInstanceVariable_fg = "#7653c1",
		rubyGlobalVariable_fg = "#4c8fc7",
		rubyClassVariable_fg = "#4c8fc7",
		rubyRegexp_fg = "#699d36",
		rubyEscape_bg = "#fcedbd",

		-- Additional elements
		directory_fg = "#606aa1",
		folded_fg = "#adadad",
		folded_bg = "#ffffff",
		error_msg_fg = "NONE",
		warning_msg_fg = "NONE",
		search_bg = "#c4daed",
		incsearch_bg = "#c4daed",

		-- Specialized sections
		title_fg = "#000000",
		special_fg = "#000000",
		todo_bg = "NONE",

		-- CSS specific
		cssBraces_fg = "#000000",
		cssClassName_fg = "#4f9fcf",
		cssColor_fg = "#7653c1",

		-- JavaScript
		javaScriptFunction_fg = "#222222",

		-- YAML
		yamlKey_fg = "#2f6f9f",
		yamlAnchor_fg = "#4c8fc7",
	}

	local function set_highlight(group, color)
		local style = color.style and "gui=" .. color.style or "gui=NONE"
		local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
		local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
		vim.cmd(string.format("highlight %s %s %s %s", group, fg, bg, style))
	end

	local function apply_colors(colors)
		-- Editor
		set_highlight("Normal", { fg = colors.fg, bg = colors.bg })
		set_highlight("Cursor", { bg = colors.cursor_bg })
		set_highlight("Visual", { bg = colors.visual_bg })
		set_highlight("SignColumn", { bg = colors.sign_column_bg })
		set_highlight("CursorLine", { bg = colors.cursor_line_bg })
		set_highlight("LineNr", { fg = colors.line_nr_fg })
		set_highlight("VertSplit", { fg = colors.vert_split_fg, bg = colors.vert_split_bg })
		set_highlight("MatchParen", { fg = colors.match_paren_fg })
		set_highlight("StatusLine", { bg = colors.status_line_bg })
		set_highlight("Pmenu", { fg = colors.pmenu_fg })
		set_highlight("PmenuSel", { bg = colors.pmenu_sel_bg })

		-- Sintaxe
		set_highlight("Comment", { fg = colors.comment_fg })
		set_highlight("Constant", { fg = colors.constant_fg })
		set_highlight("String", { fg = colors.string_fg })
		set_highlight("Boolean", { fg = colors.boolean_fg })
		set_highlight("Function", { fg = colors.function_fg })
		set_highlight("Identifier", { fg = colors.identifier_fg })
		set_highlight("Keyword", { fg = colors.keyword_fg })
		set_highlight("Number", { fg = colors.number_fg })
		set_highlight("Operator", { fg = colors.operator_fg })
		set_highlight("Type", { fg = colors.type_fg })
	end

	apply_colors(colors)
end

return theme
