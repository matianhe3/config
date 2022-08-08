-- Diy theme

local gfs = require("gears.filesystem")
local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local theme = dofile(gfs.get_themes_dir() .. "default/theme.lua")

theme.font          = "FiraCode Nerd Font Mono 14"

theme.wallpaper = gfs.get_configuration_dir() .. "wall.png"

theme.xbackground = "#061115"
theme.xforeground = "#D9D7D6"
theme.xcolor0 = "#1C252C"
theme.xcolor1 = "#DF5B61"
theme.xcolor2 = "#78B892"
theme.xcolor3 = "#DE8F78"
theme.xcolor4 = "#6791C9"
theme.xcolor5 = "#BC83E3"
theme.xcolor6 = "#67AFC1"
theme.xcolor7 = "#D9D7D6"
theme.xcolor8 = "#484E5B"
theme.xcolor9 = "#F16269"
theme.xcolor10 = "#8CD7AA"
theme.xcolor11 = "#E9967E"
theme.xcolor12 = "#79AAEB"
theme.xcolor13 = "#C488EC"
theme.xcolor14 = "#7ACFE4"
theme.xcolor15 = "#E5E5E5"
theme.darker_bg = "#0A1419"
theme.lighter_bg = "#162026"
theme.transparent = "#00000000"

-- Background Colors
theme.bg_dark = theme.darker_bg
theme.bg_normal = theme.xbackground
theme.bg_focus = theme.xbackground
theme.bg_urgent = theme.xbackground
theme.bg_minimize = theme.xbackground
theme.bg_secondary = theme.darker_bg
theme.bg_accent = theme.lighter_bg

-- Foreground Colors
theme.fg_normal = theme.xforeground
theme.fg_focus = theme.accent
theme.fg_urgent = theme.xcolor1
theme.fg_minimize = theme.xcolor0

-- Accent colors
theme.accent = theme.xcolor4

-- UI events
theme.leave_event = transparent
theme.enter_event = "#ffffff" .. "10"
theme.press_event = "#ffffff" .. "15"
theme.release_event = "#ffffff" .. "10"

-- Widgets
theme.widget_bg = theme.lighter_bg

-- Titlebars
theme.titlebar_enabled = true
theme.titlebar_bg = theme.darker_bg
theme.titlebar_fg = theme.xforeground
theme.titlebar_color_unfocused = theme.xcolor8

-- Wibar
theme.wibar_bg = "#0B161A"

-- Control center
theme.control_center_widget_radius = dpi(16)
theme.control_center_button_bg = "#ffffff" .. "10"

-- Borders
theme.border_width = dpi(5)
theme.oof_border_width = dpi(5)
theme.border_normal = nil
theme.border_focus = nil
theme.widget_border_width = dpi(10)
theme.widget_border_color = nil

-- Corner Radius
theme.corner_radius = dpi(10)
theme.client_radius = theme.corner_radius
theme.dashboard_radius = theme.corner_radius
theme.widget_radius = theme.corner_radius

-- Mainmenu
theme.menu_height = dpi(30)
theme.menu_width = dpi(150)
theme.menu_bg_normal = theme.xbackground
theme.menu_bg_focus = theme.lighter_bg
theme.menu_fg_normal = theme.xforeground
theme.menu_fg_focus = theme.accent
theme.menu_border_width = dpi(0)
theme.menu_border_color = theme.xcolor0
theme.menu_submenu = "»  "
theme.menu_submenu_icon = nil

-- Tooltip
theme.tooltip_bg = theme.darker_bg
theme.tooltip_fg = theme.xforeground

local taglist_square_size = dpi(0)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(taglist_square_size, theme.xcolor8)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, theme.xcolor4)

-- Systray
theme.bg_systray = theme.wibar_bg
theme.systray_icon_spacing = dpi(16)

-- Notifications
theme.notification_spacing = dpi(12)
theme.notification_border_radius = theme.corner_radius
theme.notification_border_width = dpi(0)

-- Swallowing
theme.dont_swallow_classname_list = {
	"firefox"
}


return theme
