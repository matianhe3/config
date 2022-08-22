local awful = require("awful")

local  autostart = {
    "picom --experimental-backends",
    "cfw",
    "fcitx5",
    "numlockx on",
    "setxkbmap us colemak",
    "xset -dpms & xset s off"
}

for _, v in ipairs(autostart) do
  awful.spawn(v);
end
