local wezterm = require("wezterm")
local config = {}

config.font =
	wezterm.font("JetBrainsMonoNL Nerd Font Mono", { weight = "Regular", stretch = "Normal", style = "Normal" })
config.font_size = 13
config.color_scheme = "Tokyo Night"
config.window_background_opacity = 0.7
config.text_background_opacity = 0.3
config.enable_tab_bar = false

return config
