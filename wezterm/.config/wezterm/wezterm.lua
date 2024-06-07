local wezterm = require 'wezterm'

return {
	font_size = 24,
	font = wezterm.font 'MonoLisa Variable',
	--[[
	font_rules = {
		{
			intensity = 'Bold',
			italic = true,
			font = wezterm.font {
				family = 'Monaspace Radon',
				italic = true,
			},
		},
		{
			intensity = 'Normal',
			italic = true,
			font = wezterm.font {
				family = 'Monaspace Radon',
				weight = 'DemiLight',
				italic = true,
			},
		},
		{
			intensity = 'Half',
			italic = true,
			font = wezterm.font {
				family = 'Monaspace Radon',
				weight = 'Light',
				italic = true,
			},
		},
		{
			intensity = 'Half',
			italic = false,
			font = wezterm.font {
				family = 'Monaspace Radon',
				weight = 'Light',
			},
		},
	},
	]]--
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
	colors = {
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
	window_background_opacity = 0.86,
	window_decorations = "RESIZE",
	initial_rows = 36,
	initial_cols = 140,
}

-- vim:foldmethod=indent
