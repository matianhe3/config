local naughty = require("naughty")

do
  local in_error = false
  awesome.connect_signal(
    "debug::error",
    function (err)
      if in_error then
        return
      end
      in_error = true

      naughty.notify({
        preset = naughty.config.presets.critical,
        title = "ERROR",
        text = tostring(err)
      })
    end
  )
end
