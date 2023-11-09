----------------------------------------------------------------------------------------------------

pudgeHookSpeed = 1600

function Think()
    local bot = GetBot()
    local abilityHook = bot:GetAbilityByName("pudge_meat_hook");

    if bot:GetAbilityPoints() > 0 then
        bot:ActionImmediate_LevelAbility("pudge_meat_hook")
    end

    local target = bot:GetNearbyHeroes(1599, true, BOT_MODE_NONE)[1]
    
    if target ~= nil then
        local targetLoc = target:GetLocation()
        local targetDist = GetUnitToLocationDistance(bot, targetLoc)
        local time = targetDist / pudgeHookSpeed
        local targetExtraLoc = target:GetExtrapolatedLocation(time)

        bot:Action_UseAbilityOnLocation(abilityHook, targetExtraLoc)
    else
        local position = GetRuneSpawnLocation(RUNE_POWERUP_1)
        bot:Action_MoveToLocation(position)
    end
end

----------------------------------------------------------------------------------------------------