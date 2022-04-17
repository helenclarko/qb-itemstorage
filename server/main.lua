local QBCore = exports['qb-core']:GetCoreObject()

----------- / Item Storage

Citizen.CreateThread(function()
	for i=1, #Config.Storage do
		QBCore.Functions.CreateUseableItem(Config.Storage[i].name, function(source, item)
			local src = source
			TriggerClientEvent("itemstorage:client:OpenItemStorage", src, item, Config.Storage[i].weight, Config.Storage[i].slots, Config.Storage[i].label, Config.Storage[i].items)
		end)
	end
end)


QBCore.Functions.CreateCallback('itemstorage:GenerateUniqueName', function(source, cb, name, item, stashitems, weight, slots)
	local Player = QBCore.Functions.GetPlayer(source)
	local stash = 0
	stashID = Player.PlayerData.items[item.slot].info.stash
	if stashID then
		stash = stashID
	else
		stash = QBCore.Shared.RandomInt(1) .. QBCore.Shared.RandomStr(2) .. QBCore.Shared.RandomInt(3) .. QBCore.Shared.RandomStr(2)
		Player.PlayerData.items[item.slot].info.stash = stash
		Player.Functions.SetInventory(Player.PlayerData.items, true)
	end
	
	local result = MySQL.Sync.fetchScalar('SELECT stash FROM stashitems WHERE stash = ?', {name .. stash})
	if result then
		TriggerClientEvent("itemstorage:client:CreateInventory", source, result, weight, slots)
		cb(result)
	else
		TriggerClientEvent("itemstorage:client:CreateInventory", source, name .. stash, weight, slots)
		TriggerEvent("qb-inventory:server:SaveStashItems", name .. stash, stashitems)
		cb(name .. stash)
	end
end)

QBCore.Functions.CreateCallback('itemstorage:Time', function(source, cb)
	local time = os.time()
	cb(time)
end)
