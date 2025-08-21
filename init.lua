   local function prequire(module)
       local ok, result = pcall(require, module)
       return ok and result or nil
   end

   local mymodule = prequire('mymodule')

   vim.opt.number = true
   

-- BASIC 
require('core.plugin')
require('core.mapping')
require('core.colors')

-- PLUGIN 
require('plug.treesiter')
require('plug.neotree')
require('plug.lsp')
require('plug.masson')
require('plug.cmp')
require('plug.telescope')
require('plug.dap')
require('plug.dapui')
prequire('plug.dapstart')
