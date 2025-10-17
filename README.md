# netizen.nvim
<img width=66% height=66% alt="image" src="https://github.com/user-attachments/assets/2e570feb-6868-407b-8e2d-edd0d523198f" />

## Installing
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
