local awful = require("awful")
local beautiful = require("beautiful")
local wibox = require("wibox")

THEME_PATH = awful.util.getdir("config") .. "/theme/"
THEME = {}

dofile(THEME_PATH .. "vars.lua")

THEME.awesome_icon = THEME_PATH .. "../assets/icons/ArchLogo.png"
THEME.awesome_subicon = THEME_PATH .. "../assets/icons/ArchLogo.png"

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
