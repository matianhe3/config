local function colorizer()
  require 'colorizer'.setup {
    'css';
    'javascript';
    html = {
      mode = 'foreground';
    }
  }
end

return colorizer
