local colorscheme = "solarized"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

require("onedarkpro").setup({
    dark_theme = "onedark_dark", -- The default dark theme: onedark, onedark_vivid, onedark_dark
    light_theme = "onelight", -- The default light theme
})
