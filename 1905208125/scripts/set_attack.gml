//var hitboxIndex = get_num_hitboxes(attack);
/*if (sharpBuff == 4 && attack == AT_USTRONG
||attack == AT_FSTRONG
||attack == AT_NSPECIAL
||(attack == AT_FTILT && runeN)
||(attack == AT_FAIR && runeN)
||(attack == AT_DAIR && runeN)
||(attack == AT_UAIR && runeN)) 
	{
        for (var i = 1; i <= hitboxIndex; i++) 
		{
            reset_hitbox_value(attack, i, HG_DAMAGE);
            set_hitbox_value(attack, i, HG_DAMAGE, get_hitbox_value(attack, i, HG_DAMAGE) + sharpBuff);
        }
    }
	
	else
	{  for (var i = 1; i <= hitboxIndex; i++)
		{
			reset_hitbox_value(attack, i, HG_DAMAGE);  
		}
	}

*/

switch (attack) {
	case AT_TAUNT:
		if (down_down) {
			attack = AT_EXTRA_1;
		}
		break;
	case AT_USPECIAL:
		if (!free) {
			var jump_dust = create_dust("jump", 12);
		}
		with (asset_get("obj_article2")) if (player_id == other) {
		    instance_destroy(self);
		}
		direc = spr_dir == 1 ? 0 : 180;
		original_uspec_spr_dir = spr_dir;
		uspecial_land_played = !free;
		break;
	case AT_EXTRA_1:
		if (!ready && !talked) {
			ready = true;
			introtimer = -1;
		}
		break;
}

// Runes

//Rune L - Remote Detonation Bomb Arrow
if attack == AT_FSPECIAL && abyssEnabled && runeL {
	var dothing = false;
	with asset_get("obj_article1") {
		if player_id == other.id {
			dothing = true;
		}
	}
	if (dothing) attack = AT_FSPECIAL_2;
}

#define create_dust(dust_name, time)

var dust = spawn_dust_fx(x, y, asset_get("fx_" + dust_name + "_bg"), time);
dust.dust_color = 0;
dust.fg_index = asset_get("fx_" + dust_name + "_fg");
return dust;
