VGX_Inventory = {}

-- =========================
-- MANAGER PERMISSION (FROM CONFIG)
-- =========================
function IsManager(src)
    for _, perm in ipairs(Config.PermissionManagers or {}) do
        if QBCore.Functions.HasPermission(src, perm) then
            return true
        end
    end
    return false
end

-- =========================
-- GIVE ITEM FUNCTION (FROM CONFIG)
-- =========================
function VGX_Inventory.GiveItem(src, targetId, item, amount)
    
    local Target = QBCore.Functions.GetPlayer(tonumber(targetId))
    if not Target then
        return false, 'TARGET_OFFLINE'
    end

    if not QBCore.Shared.Items[item] then
        return false, 'INVALID_ITEM'
    end

    amount = tonumber(amount) or 1
    if amount <= 0 or amount > 100 then
        return false, 'INVALID_AMOUNT'
    end

    local itemData = QBCore.Shared.Items[item]

    -- =========================
    -- UNIQUE ITEMS (give one by one)
    -- =========================
    if itemData.unique == true then
        local success = 0
    
        for i = 1, amount do
            if Target.Functions.AddItem(item, 1) then
                success += 1
                TriggerClientEvent('inventory:client:ItemBox', targetId, itemData, 'add', 1)
            else
                break
            end
        end

        return success > 0, success
    end
    
    -- =========================
    -- NON-UNIQUE / STACKABLE ITEMS
    -- =========================
    if Target.Functions.AddItem(item, amount) then
        TriggerClientEvent('inventory:client:ItemBox', targetId, itemData, 'add', amount)

        return true, amount
    end
    
    return false, 'INVENTORY_FULL'
end
