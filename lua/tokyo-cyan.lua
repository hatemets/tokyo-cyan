local M = {}

function M.load()
  -- Set the colorscheme
  vim.cmd('colorscheme tokyo-cyan')
end

function M.setup(opts)
  opts = opts or {}
  -- Load the colorscheme
  M.load()
end

return M
