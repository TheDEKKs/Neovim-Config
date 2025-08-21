                                                                                                                                                                                                                                        
vim.opt.laststatus = 3                                                                                                                                                                                                                      
vim.cmd('set noshowmode')                                                                                                                                                                                                                   
local dap = require('dap')
local dap_python = require('dap-python')

-- путь к python интерпретатору с установленным debugpy
dap_python.setup('~/debag/bin/python3')  -- замените на путь к python, например '/home/user/.virtualenvs/venv/bin/python'

-- (опционально) конфигурации запуска
dap.configurations.python = {
  {
    type = 'python',
    request = 'launch',
    name = "Запустить файл",
    program = "${file}",
    pythonPath = function()
      -- пример: использовать виртуальное окружение в проекте
      local cwd = vim.fn.getcwd()
      if vim.fn.executable(cwd .. '/usr/bin/python3') == 1 then
        return cwd .. '/usr/bin/python3'
      else
        return '/usr/bin/python3'
      end
    end,
  },
}

