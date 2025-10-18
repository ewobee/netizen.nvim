# netizen.nvim
<img width=66% height=66% alt="image" src="https://github.com/user-attachments/assets/25f60305-c279-4d85-8622-b4052a54e784" />

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
