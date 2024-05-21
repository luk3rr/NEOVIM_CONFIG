--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--

return { {
  -- Telescope
  -- Find, Filter, Preview, Pick. All lua, all the time.
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim", {
    "nvim-telescope/telescope-fzf-native.nvim",
    "nvim-telescope/telescope-live-grep-args.nvim",
    --"nvim-telescope/telescope-project.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    "smartpde/telescope-recent-files",
    "nvim-tree/nvim-web-devicons",
    build = "make"
  } },
  config = function(_)
    local telescope = require("telescope")
    telescope.setup()
    -- To get fzf loaded and working with telescope, you need to call
    -- load_extension, somewhere after setup function:
    telescope.load_extension("fzf")
    telescope.load_extension("live_grep_args")
    telescope.load_extension("file_browser")
    telescope.load_extension("recent_files")
    --telescope.load_extension("projects")
  end
} }
