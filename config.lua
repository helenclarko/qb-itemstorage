------------------
--- DISCLAIMER ---
------------------

-- You will need to create each item in your shared items.lua file before it can be used in this config.
-- Check the README for the shared items.lua template

Config = {}

Config.Storage = {
	[1] = {
		name = "cigarettebox", 
		label = "Cigarette Box", 
		weight = 12,	-- This is the max weight this item can hold (make it less than this items weight to prevent this item being added to itself)
		slots = 12, 	-- This is the number of slots this item has
		items = { 		-- This is where you can define items that are stored within by default
			[1] = {
				description = "A single cigarette",
				name = "cigarette",
				useable = true,
				type = "item",
				amount = 1,
				weight = 1,
				unique = false,
				image = "69-brand-pack.png",
				slot = 1,
				label = "Cigarette",
				info = {},
			}
		}
	},
}
