local Engine = loadstring(game:HttpGet("https://raw.githubusercontent.com/SeasonalKirito/LinoriaAddons/main/addons/KeySystem.lua"))()

Engine.Functions.Init({
	title = "Example Key System",
	description = "This is a Custom addon to LinoriaLib's Addons, this was made by _seasonal_.",

	callback = function(Key)
        Engine.Functions.Log({
            text = "Key: " .. Key,
            color = Color3.fromRGB(0, 153, 255)
        })
		Engine.Functions.Unload(
			function()
                Engine.Functions.Log({text = "Unloading in 3 seconds", color = Color3.fromRGB(255, 0, 0)})
                task.wait(3)
			end
		)
	end
})

Engine.Functions.Log({
	text = "This is a test",
	color = Color3.fromRGB(158, 117, 117)
})
