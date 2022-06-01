// hitbox_update is a script called every frame for each of your character's hitboxes. Always from the prespective of the hitbox.
if attack == AT_NSPECIAL {
	player_id.move_cooldown[AT_NSPECIAL] = 30;
	var new_x = x + (80 * spr_dir); // Next rock to spawn coordinates, spr_dir is the direction and the value multiplied is the distance
	var new_y = y;  // Next rock to spawn coordinates
	if(hitbox_timer == 5 and ground_col_point(new_x + (10 * spr_dir), new_y + 4)){
		with player_id{
			var hbox = create_hitbox(attack, 1, new_x, new_y);
		}
		hbox.spr_dir = spr_dir;
		sound_play(asset_get("sfx_shovel_swing_heavy1")); //sound effect to play when creating a new stone
	}
}

#define ground_col_point(xx , yy)

return (position_meeting(xx, yy, solids) or position_meeting(xx, yy, plats));