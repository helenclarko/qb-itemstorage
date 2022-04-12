local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('itemstorage:client:OpenItemStorage', function(item, weight, slots, label, stashitems)
	QBCore.Functions.TriggerCallback('itemstorage:GenerateUniqueName', function(result)
		TriggerEvent("inventory:client:SetCurrentStash", result)
	end, label, item, stashitems, weight, slots)
end)

RegisterNetEvent('itemstorage:client:CreateInventory', function(result, weight, slots)
	TriggerServerEvent("inventory:server:OpenInventory", "stash", result, {
	maxweight = weight,
	slots = slots,
	})
end)
