
require( GetScriptDirectory().."/ability_item_usage_generic" )

----------------------------------------------------------------------------------------------------

function AbilityUsageThink()

	--print( "Sven.AbilityUsageThink" );
	print("Think Ability Sven")
	ability_item_usage_generic.AbilityUsageThink();

end

----------------------------------------------------------------------------------------------------

function ItemUsageThink()

	--print( "Sven.ItemUsageThink" );

	ability_item_usage_generic.ItemUsageThink();

end

----------------------------------------------------------------------------------------------------
