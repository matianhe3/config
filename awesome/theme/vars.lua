local awful = require("awful")
local cfgPath = awful.util.getdir("config")

VARS = {
  layouts = {
    awful.layout.suit.tile,
    awful.layout.suit.tile.left,
    awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
    awful.layout.suit.floating,
    awful.layout.suit.fair,
    awful.layout.suit.fair.horizontal,
    awful.layout.suit.corner.nw,
    awful.layout.suit.corner.ne,
    awful.layout.suit.corner.sw,
    awful.layout.suit.corner.se,
    awful.layout.suit.magnifier,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.spiral.dwindle,
  },

  icon_theme = "Papirus-Dark",

  network = {
    ethernet = "enp2s0"
  },

  font = {
    regular = "JetBrainsMono Nerd Font, 14",
    bold = "JetBrainsMono Nerd Font, bold 14",
    extrabold = "JetBrainsMono Nerd Font, ExtraBold 14",
    specify = "JetBrainsMono Nerd Font"
  },

  terminal = "alacritty",

  modkey = "Mod4",

  wallpaper = cfgPath .. "/assets/wall.png",

  namestyle = "userhost",

  kblayout = { "us", "cn" },

  file_manager = "thunar",

  screenshot_program = "flameshot gui",

}
