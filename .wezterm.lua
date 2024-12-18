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

config.keys = {
	{
		key = "v",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "q",
		mods = "CTRL|ALT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		key = "H",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "L",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "K",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "J",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "H",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.AdjustPaneSize({ "Left", 2 }),
	},
	{
		key = "J",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.AdjustPaneSize({ "Down", 2 }),
	},
	{ key = "K",
    mods = "CTRL|SHIFT|ALT",
    action = wezterm.action.AdjustPaneSize({ "Up", 2 })
  },
	{
		key = "L",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.AdjustPaneSize({ "Right", 2 }),
	},
}

return config
