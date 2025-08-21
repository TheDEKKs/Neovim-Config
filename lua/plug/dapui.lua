require("dapui").setup()

local dap = require("dap")
dap.listeners.before.attach.dapui_config = function() dapui.open()end
dap.listeners.before.event_terminate.dapui_config = function() dapui.open()end


