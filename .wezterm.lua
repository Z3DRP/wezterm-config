local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.window_decorations = "RESIZE"
config.font = wezterm.font("UbuntuMono Nerd Font Mono")
config.font_size = 16
config.window_background_opacity = 0.8
config.macos_window_background_blur = 10
config.hide_tab_bar_if_only_one_tab = true
config.window_frame = {
	font_size = 12.0,
}

config.color_schemes = {
	["tfox"] = {
		foreground = "#d0d0d0",
		background = "#1c1c1c",
		cursor_bg = "#d0d0d0",
		cursor_fg = "#1c1c1c",
		selection_bg = "#444444",
		selection_fg = "#ffffff",
		ansi = { "#1c1c1c", "#d70000", "#5f8700", "#af8700", "#0087ff", "#af005f", "#00afaf", "#d0d0d0" },
		brights = { "#505050", "#ff0000", "#87af00", "#ffaf00", "#0087ff", "#af005f", "#00afaf", "#e4e4e4" },
	},
}
--config.color_scheme = "Breath Darker (Gogh)"
--config.color_scheme = "tfox"
--config.color_scheme = "zenwritten_dark"
--config.color_scheme = "Afterglow (Gogh)"
config.color_scheme = "Atelier Savanna (base16)"
config.keys = {
	{ key = "f", mods = "CMD", action = "ToggleFullScreen" },
	{ key = "t", mods = "CMD", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
	{ key = "e", mods = "CMD", action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },
	{ key = "b", mods = "CMD", action = wezterm.action({ ActivateTabRelative = -1 }) },
	{ key = "n", mods = "CMD", action = wezterm.action({ ActivateTabRelative = 1 }) },
}

return config
