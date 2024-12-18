local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.enable_tab_bar = false

config.window_padding = {
	left = "0px",
	right = "0px",
	top = "0px",
	bottom = "0px",
}

config.font = wezterm.font("JetBrainsMono Nerd Font")

config.color_scheme = "nord"

return config
