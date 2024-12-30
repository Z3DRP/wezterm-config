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

--config.color_scheme = "Breath Darker (Gogh)"
config.color_scheme = "terafox"
--config.color_scheme = "zenwritten_dark"
--config.color_scheme = "Afterglow (Gogh)"
--config.color_schemes = "batman"
--config.color_scheme = "Atelier Savanna (base16)"
--config.color_scheme_dirs = { "~/.config/wezterm/colors/darkforest.toml" }
--config.color_scheme = "Rosé Pine (Gogh)"
--config.color_scheme = "Rosé Pine Moon (Gogh)"
--config.color_scheme = "Terminix Dark (Gogh)"
config.keys = {
	{ key = "f", mods = "CMD", action = "ToggleFullScreen" },
	{ key = "t", mods = "CMD", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
	{ key = "c", mods = "CMD", action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },
	{ key = "b", mods = "CMD", action = wezterm.action({ ActivateTabRelative = -1 }) },
	{ key = "n", mods = "CMD", action = wezterm.action({ ActivateTabRelative = 1 }) },
	{ key = "e", mods = "CMD", action = wezterm.action.QuitApplication },
	{ key = "x", mods = "CMD", action = wezterm.action.SendKey({ key = "Escape" }) },
}

return config
