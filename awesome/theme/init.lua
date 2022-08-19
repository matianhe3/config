local awful = require("awful")
local beautiful = require("beautiful")
local wibox = require("wibox")
local color = require("theme.colors")
local dpi = require("beautiful.xresources").apply_dpi
local gears = require("gears")

THEME_PATH = awful.util.getdir("config") .. "/theme/"
THEME = {}

THEME.awesome_icon = THEME_PATH .. "../assets/icons/ArchLogo.png"
THEME.awesome_subicon = THEME_PATH .. "../assets/icons/ArchLogo.png"


local icondir = awful.util.getdir("config") .. "/assets/icons/titlebar/"

THEME.font = VARS.font.bold

THEME.bg_normal = color["Grey900"]
THEME.bg_focus = color["Grey900"]
THEME.bg_urgent = color["RedA200"]
THEME.bg_minimize = color["White"]
THEME.bg_systray = color["White"]

THEME.fg_normal = color["White"]
THEME.fg_focus = color["White"]
THEME.fg_urgent = color["White"]
THEME.fg_minimize = color["White"]

THEME.useless_gap = dpi(5) -- Change this to 0 if you dont like window gaps
THEME.border_width = dpi(0) -- Change this to 0 if you dont like borders
THEME.border_normal = color["Grey800"]
--THEME.border_focus = color["Red"] -- Doesnt work, no idea why; workaround is in signals.lua
THEME.border_marked = color["Red400"]

--THEME.menu_submenu_icon = THEME_PATH .. "assets.ArchLogo.png"
THEME.menu_height = dpi(40)
THEME.menu_width = dpi(200)
THEME.menu_bg_normal = color["Grey900"]
THEME.menu_bg_focus = color["Grey800"]
THEME.menu_fg_focus = color["White"]
THEME.menu_border_color = color["Grey800"]
THEME.menu_border_width = dpi(0)
THEME.menu_shape = function(cr, width, heigth)
  gears.shape.rounded_rect(cr, width, heigth, 5)
end

THEME.taglist_fg_focus = color["Grey900"]
THEME.taglist_bg_focus = color["White"]

THEME.tooltip_border_color = color["Grey800"]
THEME.tooltip_bg = color["Grey900"]
THEME.tooltip_fg = color["YellowA200"]
THEME.tooltip_border_width = dpi(4)
THEME.tooltip_gaps = dpi(15)
THEME.tooltip_shape = function(cr, width, heigth)
  gears.shape.rounded_rect(cr, width, heigth, 5)
end

THEME.notification_spacing = dpi(20)

THEME.titlebar_close_button_normal = icondir .. "close.svg"
THEME.titlebar_maximized_button_normal = icondir .. "maximize.svg"
THEME.titlebar_minimize_button_normal = icondir .. "minimize.svg"
THEME.titlebar_maximized_button_active = icondir .. "maximize.svg"
THEME.titlebar_maximized_button_inactive = icondir .. "maximize.svg"

THEME.bg_systray = color["BlueGrey800"]
THEME.systray_icon_spacing = dpi(10)

THEME.hotkeys_bg = color["Grey900"]
THEME.hotkeys_fg = color["White"]
THEME.hotkeys_border_width = 0
THEME.hotkeys_shape = function(cr, width, height)
  gears.shape.rounded_rect(cr, width, height, 10)
end
THEME.hotkeys_description_font = VARS.font.bold

-- Icon directory path
local layout_path = THEME_PATH .. "../assets/layout/"

-- Here are the icons for the layouts defined, if you want to add more layouts go to main/layouts.lua
THEME.layout_floating = layout_path .. "floating.svg"
THEME.layout_tile = layout_path .. "tile.svg"
THEME.layout_dwindle = layout_path .. "dwindle.svg"
THEME.layout_fairh = layout_path .. "fairh.svg"
THEME.layout_fairv = layout_path .. "fairv.svg"
THEME.layout_fullscreen = layout_path .. "fullscreen.svg"
THEME.layout_max = layout_path .. "max.svg"
THEME.layout_cornerne = layout_path .. "cornerne.svg"
THEME.layout_cornernw = layout_path .. "cornernw.svg"
THEME.layout_cornerse = layout_path .. "cornerse.svg"
THEME.layout_cornersw = layout_path .. "cornersw.svg"

beautiful.wallpaper = VARS.wallpaper
screen.connect_signal("request::wallpaper", function(s)
    awful.wallpaper {
        screen = s,
        widget = {
            {
                image  = beautiful.wallpaper,
                resize = true,
                widget = wibox.widget.imagebox
            },
            valign = "center",
            halign = "center",
            tiled  = false,
            widget = wibox.container.tile
        }
    }
  end)

beautiful.init(THEME)
