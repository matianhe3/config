local awful = require("awful")

awful.screen.connect_for_each_screen(
  function (s)
    awful.layout.layouts = VARS.layouts
    awful.tag({"1", "2", "3", "4", "5", "6", "7", "8", "9"},
    s,
    VARS.layouts[1])

    require("widgets.powermenu")(s)

    s.layoutlist = require("widgets.layoutlist")()
    s.systray = require("widgets.systray")(s)
    s.taglist = require("widgets.taglist")(s)

    s.tasklist = require("widgets.tasklist")(s)

    s.battery = require("widgets.battery")()
    s.network = require("widgets.network")()
    s.bluetooth = require("widgets.bluetooth")()
    s.audio = require("widgets.audio")(s)
    s.cpu_usage = require("widgets.cpu_info")("usage")
    s.cpu_temp = require("widgets.cpu_info")("temp")
    s.gpu_usage = require("widgets.gpu_info")("usage")
    s.gpu_temp = require("widgets.gpu_info")("temp")
    s.ram_info = require("widgets.ram_info")()
    s.kblayout = require("widgets.kblayout")(s)
    s.date = require("widgets.date")()
    s.clock = require("widgets.clock")()
    s.powerbutton = require("widgets.powerbutton")()

    require("bar.left")(s, { s.layoutlist, s.systray, s.taglist })
    require("bar.center")(s, { s.tasklist })
    require("bar.right")(
      s,
      {
        -- s.battery, s.bluetooth, s.audio, s.kblayout,
        -- s.gpu_usage, s.gpu_temp,
        s.ram_info, s.cpu_usage, s.cpu_temp,
        s.network, s.date, s.clock, s.powerbutton
      }
    )


  end
)
