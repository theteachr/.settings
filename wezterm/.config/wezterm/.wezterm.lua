local wezterm = require 'wezterm'

return {
	font_size = 11,
	font = wezterm.font 'MonoLisa Variable',
	default_domain = 'WSL:Ubuntu',
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
	--color_scheme = 'Everforest Light (Gogh)',
	colors = {
		background = '#2d353b',
		foreground = '#d8caac',
		ansi = {
			'hsl:201 15 23',
			'hsl:359 67 70',
			'hsl:83 34 63',
			'hsl:40 54 68',
			'hsl:172 26 61',
			'hsl:331 39 72',
			'hsl:135 31 64',
			'hsl:41 36 76',
		},
		brights = {
			'hsl:201 15 33',
			'hsl:359 67 74',
			'hsl:83 34 67',
			'hsl:40 54 72',
			'hsl:172 26 65',
			'hsl:331 39 76',
			'hsl:135 31 68',
			'hsl:41 36 80',
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
	window_background_opacity = 1,
}

-- vim:foldmethod=indent
