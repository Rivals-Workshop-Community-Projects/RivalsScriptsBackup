// hitbox_update.gml
// Called every frame a hitbox is out
// From the perspective of a hitbox

// Reflector hitbox (not active as fstrong doesn't have a second hitbox)
if (attack == AT_FSTRONG){
	if (hbox_num == 2){
		x = player_id.x + (45 * spr_dir);
		y = player_id.y - 50;
	}
	with (pHitBox){
		if (place_meeting(x, y, other)){
			if (type == 2 && !does_not_reflect && player != other.player){
				player = other.player;
				hsp = hsp * -1 * 2;
				vsp = vsp * -1;
				hitbox_timer = 0;
				was_parried = true;
				sound_play(sound_get("dthrowsfx"));
			}
		}
	}
}
