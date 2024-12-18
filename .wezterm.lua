local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.enable_tab_bar = false

config.font = wezterm.font("JetBrainsMono Nerd Font")

config.color_scheme = "nord"

return config
