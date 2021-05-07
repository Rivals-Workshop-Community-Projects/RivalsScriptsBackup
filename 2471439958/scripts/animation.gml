switch (state){
case PS_DASH_START:
		if move_cooldown[AT_DAIR] == 0{
		sprite_index = sprite_get( "dashstartB" );
		image_index = floor(image_number*state_timer/(image_number*7));
		}
		if move_cooldown[AT_DAIR] > 0{
		sprite_index = sprite_get( "dashstart" );
		image_index = floor(image_number*state_timer/(image_number*7));
		}
    break;
case PS_DASH_STOP:
		if move_cooldown[AT_DAIR] == 0{
		sprite_index = sprite_get( "dashstopB" );
		image_index = floor(image_number*state_timer/(image_number*5));
		}
		if move_cooldown[AT_DAIR] > 0{
		sprite_index = sprite_get( "dashstop" );
		image_index = floor(image_number*state_timer/(image_number*5));
		}
    break;
case PS_DASH:
		if move_cooldown[AT_DAIR] == 0{
		sprite_index = sprite_get( "dashB" );
		image_index = floor(image_number*state_timer/(image_number*5));
		}
		if move_cooldown[AT_DAIR] > 0{
		sprite_index = sprite_get( "dash" );
		image_index = floor(image_number*state_timer/(image_number*5));
		}
    break;
}
if move_cooldown[AT_DAIR] == 1{
sound_play(asset_get("sfx_shovel_hit_heavy1"));
		spawn_hit_fx( x + 0*spr_dir, y + -20, 305);
}		
if move_cooldown[AT_NSPECIAL] == 1{
sound_play(sound_get("cooldown"));
		spawn_hit_fx( x + 0*spr_dir, y + -20, 139);
}	
if move_cooldown[AT_NSPECIAL_2] == 1{
sound_play(sound_get("cooldown"));
		spawn_hit_fx( x + 0*spr_dir, y + -20, 139);
}
