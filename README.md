# LinoriaAddons
A Collection of Addons i made for the LinoriaLib which is currently one

# KeySystem

### Engine
```lua
local Engine = loadstring(game:HttpGet("https://raw.githubusercontent.com/SeasonalKirito/LinoriaAddons/refs/heads/main/addons/KeySystem.lua"))()
```
---
### Functions.Init()
- title: (string) The title for the key system.
- description: (string) A brief description of the key system.
- callback: (function) A function that gets triggered when a key is inputted.
```lua
Engine.Functions.Init({
    title = "Example Key System",
    description = "This is a Custom addon to LinoriaLib's Addons, this was made by _seasonal_.",
    
    callback = function(Key)
        -- Callback function logic here
	print(key)
    end
})
```
---
### Functions.Log()
- text: (string) The message to be logged.
- color: (Color3) The RGB color of the log text.
```lua
Engine.Functions.Log({
    text = "This is a test",
    color = Color3.fromRGB(158, 117, 117)
})
```
---
