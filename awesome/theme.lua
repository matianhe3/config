-- Diy theme

local gfs = require("gears.filesystem")
local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local theme = dofile(gfs.get_themes_dir() .. "default/theme.lua")

theme.font          = "FiraCode Nerd Font Mono 14"

theme.wallpaper = gfs.get_configuration_dir() .. "wall.png"

return theme
