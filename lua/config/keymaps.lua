--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--

local default_opts = { noremap = true, silent = true }

local bind_opts = function(opts)
  opts = opts or {}
  local out_opts = default_opts
  for k, v in pairs(opts) do out_opts[k] = v end
  return out_opts
end

local keymap = vim.api.nvim_set_keymap

local normal = function(keys, command, opts)
  keymap("n", keys, command .. "<CR>", bind_opts(opts))
end

local visual = function(keys, command, opts)
  keymap("v", keys, command, bind_opts(opts))
end

local cmd = function(command)
  return "<Esc><Cmd>" .. command .. "<CR>"
end

local luacmd = function(command)
  return "<Esc><Cmd>lua " .. command .. "<CR>"
end

local which_key = require("which-key")

which_key.register({
  t = {
    name = "Toggle",
    n = { "<cmd>NvimTreeToggle<CR>", "NeoTree" },
    t = { "<cmd>NeotermToggle<CR>", "Terminal" },
    c = { "<cmd>Telescope<CR>", "Telescope" },
  },

  w = {
    name = "Window",
    v = { "<cmd>vsplit<CR>", "Vertical Split" },
    s = { "<cmd>split<CR>", "Horizontal Split" },
    q = { "<cmd>q<CR>", "Quit" },
    h = { "<cmd>winc h<CR>", "Window left" },
    j = { "<cmd>winc j<CR>", "Window down" },
    k = { "<cmd>winc k<CR>", "Window up" },
    l = { "<cmd>winc l<CR>", "Window right" },
    H = { "<cmd>winc H<CR>", "Move window left" },
    J = { "<cmd>winc J<CR>", "Move window down" },
    K = { "<cmd>winc K<CR>", "Move window up" },
    L = { "<cmd>winc L<CR>", "Move window right" },
  },

  f = {
    name = "Files",
    s = { "<cmd>w<CR>", "Save" },
    x = { "<cmd>x<CR>", "Write & Quit" },
    q = { "<cmd>q!<CR>", "Discard & Quit" },
    n = { "<cmd>ene!<CR>", "New" },
    f = { "<cmd>Telescope find_files<CR>", "Find" },
    F = { luacmd [[require("telescope").extensions.live_grep_args.live_grep_args()]], "Find word" },
    r = { luacmd [[require('telescope').extensions.recent_files.pick()]], "Recent" },
  },

  p = {
    name = "Projects",
    f = { "<cmd>Telescope projects<CR>", "Find" },
    b = { "<cmd>Telescope file_browser<CR>", "Browser" },
  },

  b = {
    name = "Buffer",
    c = { "<cmd>bd<CR>", "Close buffer" },
  },

  h = {
    name = "Help",
    p = {
      name = "Plugins",
      i = { "<cmd>Lazy install<cr>", "Install" },
      s = { "<cmd>Lazy sync<cr>", "Sync" },
      S = { "<cmd>Lazy clear<cr>", "Status" },
      u = { "<cmd>Lazy update<cr>", "Update" },
    },
    r = {
      name = "Reload",
      c = { "<cmd>so %<CR>", "Config" },
    },

    c = {
      name = "Config",
      c = { "<cmd>tabnew $MYVIMRC | tcd %:p:h<CR>", "Open" },
    },
  },

  l = {
    name = "Load",
    t = { cmd [[Telescope colorscheme]], "Theme" },
  },
}, { prefix = "<leader>" }
)

-- Insert and normal mode on terminal
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
