--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--

return { {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom',           --  theme is doom and hyper default is hyper
      shortcut_type = 'number', --  shorcut type 'letter' or 'number'
      config = {
        header = {
          "",
          "",
          "",
          "██╗     ██╗   ██╗██╗  ██╗██████╗ ██████╗ ██████╗ ",
          "██║     ██║   ██║██║ ██╔╝╚════██╗██╔══██╗██╔══██╗",
          "██║     ██║   ██║█████╔╝  █████╔╝██████╔╝██████╔╝",
          "██║     ██║   ██║██╔═██╗  ╚═══██╗██╔══██╗██╔══██╗",
          "███████╗╚██████╔╝██║  ██╗██████╔╝██║  ██║██║  ██║",
          "╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝",
          "",
          "",
          "",
          "",
        },
        center = {
          {
            icon = "󰈞  ",
            desc = "Find file                              ",
            action = "Telescope find_files",
            key = "SPC f f",
          },
          {
            icon = "󰈬  ",
            desc = "Find Word",
            action = "Telescope live_grep_args",
            key = "SPC f w",
          },
          {
            icon = "󰈢  ",
            desc = "Recently opened files                   ",
            action = "lua require('telescope').extensions.recent_files.pick()",
            key = "SPC f r",
          },
          {
            icon = "  ",
            desc = "Project                                 ",
            action = "Telescope projects",
            key = "SPC p f",
          },
          {
            icon = "  ",
            desc = "Open Nvim config                        ",
            action = "tabnew $MYVIMRC | tcd %:p:h",
            key = "SPC h c o",
          },
          {
            icon = "  ",
            desc = "New file                                ",
            action = "enew",
            key = "SPC f n",
          },
          {
            icon = "󰗼  ",
            desc = "Quit Nvim                               ",
            action = "qa",
            key = "q",
          },
        },
        footer = {},
      }, --  config used for theme
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } }
} }
