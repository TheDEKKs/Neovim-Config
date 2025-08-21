function debugerStart()
	require'dap'.continue()
	require("dapui").open()

end

function debugerStop() 
	 require"dap".terminate()
	 require("dapui").close()
end
