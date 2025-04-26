
user_event(3);//Cancel Invis
invisAlpha = 1;

user_event(2);//Cancel Disguise

inTerminalTauntMenu = false;
terminalTauntAnimTimer = 0;

var otherIsSapped = false;
for(var i = 0; i < ds_list_size(sappers); i++)
	if(sappers[|i].targetPlayer == hit_player_obj)
		otherIsSapped = true;
		
if(otherIsSapped)
{
    orig_knock *= 0.9;
	take_damage(player, id.hit_player, -round(enemy_hitboxID.damage*0.25));
}
