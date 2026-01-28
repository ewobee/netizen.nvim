# Netizen for Neovim
<img width="1417" height="1082" alt="Preview" src="https://github.com/user-attachments/assets/0c725ac1-b04c-459e-93ec-5112cb93010b" />


### [lazy.nvim](https://lazy.folke.io/installation)

**Structured Setup**

```lua
-- lua/plugins/netizen.lua
return {
	"ewobee/netizen.nvim",
	name = "netizen",
	config = function()
		vim.cmd("colorscheme netizen")
	end
}
```

**Single file**

```lua
{ "ewobee/netizen.nvim", name = "netizen" }
```
