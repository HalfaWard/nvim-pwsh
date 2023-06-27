local M = {}

local HOME = os.getenv("HOME")
local DEBUGGER_LOCATION = HOME .. "/.local/share/nvim/netcoredbg"

function M.setup()
	local dap = require("dap")
	dap.adapters.coreclr = {
		type = "executable",
		command = DEBUGGER_LOCATION .. "/netcoredbg",
		args = { "--interpreter=vscode" },
	}

	dap.configuration.cs = {
		{
			type = "coreclr",
			name = "launch - netcoredbg",
			request = "launch",
			program = function()
				return vim.fn.input("Path to DLL > ", vim.fn.getcwd() .. "/bin/Debug/", "file")
			end,
		},
	}
end

return M
