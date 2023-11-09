----------------------------------------------------------------------------------------------------

function Think()
	if ( GetTeam() == TEAM_RADIANT ) then
		SafeSelectHero( 0, "npc_dota_hero_antimage" );
		SafeSelectHero( 1, "npc_dota_hero_axe" );
		SafeSelectHero( 2, "npc_dota_hero_bane" );
		SafeSelectHero( 3, "npc_dota_hero_bloodseeker" );
		SafeSelectHero( 4, "npc_dota_hero_crystal_maiden" );
	elseif ( GetTeam() == TEAM_DIRE ) then
		SafeSelectHero( 5, "npc_dota_hero_earthshaker" );
		SafeSelectHero( 6, "npc_dota_hero_pudge" );
		SafeSelectHero( 7, "npc_dota_hero_juggernaut" );
		SafeSelectHero( 8, "npc_dota_hero_mirana" );
		SafeSelectHero( 9, "npc_dota_hero_nevermore" );
	end
end

----------------------------------------------------------------------------------------------------

function SafeSelectHero(nPlayerId, sHeroName)
	if IsPlayerBot(nPlayerId) and GetSelectedHeroName(nPlayerId) == "" then
		SelectHero(nPlayerId, sHeroName)
	end
end

----------------------------------------------------------------------------------------------------
