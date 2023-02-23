local awful = require("awful")

local autostart = {
	"picom --experimental-backends",
	"fcitx5",
	"numlockx on",
	"setxkbmap us colemak",
}

for _, v in ipairs(autostart) do
	awful.spawn(v)
end
