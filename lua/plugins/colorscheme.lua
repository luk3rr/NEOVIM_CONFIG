--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--

return { {
  -- Rose-pine - Soho vibes for Neovim
  "rose-pine/neovim",
  name = "rose-pine",
  opts = {
    dark_variant = "main"
  }
}, {
  -- Github - Github"s Neovim themes
  "projekt0n/github-nvim-theme",
  lazy = true
}, {
  -- Tokyonight- A clean, dark Neovim theme written in Lua, with support for lsp,
  -- treesitter and lots of plugins. Includes additional themes for Kitty, Alacritty, iTerm and Fish.
  "folke/tokyonight.nvim",
  lazy = true
}, {
  -- Dracula
  "Mofiqul/dracula.nvim",
  name = "dracula"
} }
