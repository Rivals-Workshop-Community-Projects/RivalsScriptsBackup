//

image_angle += 5;
if(timer % 3 == 0)
	image_index++;
timer++;
	
var xd = (player_id.x - x);
var yd = (player_id.y-32 - y);
var dist = sqrt(xd * xd + yd * yd);
hsp = (xd/dist) * 4;
vsp = (yd/dist) * 4;

if(timer > 30 || (timer > 15 && dist < 5))
{
	spawn_hit_fx(player_id.x, player_id.y-32, 254);//116);//17);
	take_damage(player, -1, -5);
	instance_destroy();
	sound_play(asset_get("sfx_rag_plant_eat")); //sfx_plant_eat sfx_diamond_collect sfx_frog_fspecial_charge_gained_1 sfx_coin_collect sfx_orca_absorb
}
