local wezterm = require 'wezterm'

return {
	font_size = 15,
	font = wezterm.font 'TX-02',
	harfbuzz_features = {
		'zero',
		'liga=1',
		'ss01=1',
		'ss02=1',
		'ss03=1',
		'ss04=1',
		'ss05=1',
	},
	force_reverse_video_cursor = true,
	color_scheme = "gruvbox_material_dark_hard",
	color_schemes = {
		["gruvbox_material_dark_hard"] = {
			foreground = "#D4BE98",
			background = "#1D2021",
			cursor_bg = "#D4BE98",
			cursor_border = "#D4BE98",
			cursor_fg = "#1D2021",
			selection_bg = "#D4BE98" ,
			selection_fg = "#3C3836",

			ansi = {"#1d2021","#ea6962","#a9b665","#d8a657", "#7daea3","#d3869b", "#89b482","#d4be98"},
			brights = {"#363b3d","#ea6962","#a9b665","#d8a657", "#7daea3","#d3869b", "#89b482","#d4be98"},
		},
		["dragon"] = {
			background = '#181616',
			foreground = '#c5c9c5',
			ansi = {
				'#1a1919',
				'#c4746e',
				'#8a9a7b',
				'#c4b28a',
				'#8ba4b0',
				'#a292a3',
				'#8ea4a2',
				'#c8c093',
			},
			brights = {
				'#2d2c2c',
				'#c4746e',
				'#8a9a7b',
				'#c4b28a',
				'#8ba4b0',
				'#a292a3',
				'#8ea4a2',
				'#c8c093',
			}
		},
	},
	enable_tab_bar = false,
	keys = {
		{
			key = 'n',
			mods = 'SHIFT|CTRL',
			action = wezterm.action.ToggleFullScreen,
		},
	},
	audible_bell = "Disabled",
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	window_decorations = "RESIZE",
	initial_rows = 36,
	initial_cols = 140,
}

-- vim:foldmethod=indent
