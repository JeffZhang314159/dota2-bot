----------------------------------------------------------------------------------------------------

function Think()
    local bot = GetBot()
    local abilityHook = bot:GetAbilityByName("pudge_meat_hook");

    if bot:GetAbilityPoints() > 0 then
        bot:ActionImmediate_LevelAbility("pudge_meat_hook")
    end

    local enemies = bot:GetNearbyHeroes(1500, true, BOT_MODE_NONE)
    if enemies[1] ~= nil then
        bot:Action_UseAbilityOnLocation(abilityHook, enemies[1]:GetLocation())
    else
        local position = GetRuneSpawnLocation(RUNE_POWERUP_1)
        bot:Action_MoveToLocation(position)
    end
end

----------------------------------------------------------------------------------------------------