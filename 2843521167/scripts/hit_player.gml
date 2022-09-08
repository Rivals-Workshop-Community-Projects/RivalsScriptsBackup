//hit_player
if (attack == AT_FAIR && (window == 1 || window == 2))
{
    if (has_hit && hitpause)
    {
    old_vsp = -7.5;
    old_hsp = hsp * 0.25;
    if (window == 1)
    {
        if (my_hitboxID.orig_player == player)
        {
            hit_player_obj.x = player.x + (5 * player.spr_dir);
            hit_player_obj.y = player.y + 4;
        }
        hit_player_obj.old_vsp = -3.5;
        hit_player_obj.old_hsp = player.old_hsp;
    }
    }
}

///gone
if (attack == AT_FSPECIAL && window == 3)
{
    if (has_hit)
    {
	hsp = 0;
	window = 4;
	window_timer = 0;
    }
}
//

if (!hit_player_obj.pastelle_soaked)
{
switch(my_hitboxID.attack){
	
	case AT_FTILT:
		if (my_hitboxID.orig_player == player){
			if (my_hitboxID.hbox_num == 2){
    sound_play(asset_get("sfx_waterhit_medium")); 
	hit_player_obj.pastelle_soaked = true;
    hit_player_obj.pastelle_soaked_id = id; 
	hit_player_obj.pastelle_soaked_time = 600;
		if (has_rune("L"))
		{
			hit_player_obj.walk_speed = hit_player_obj.walk_speed * 0.75;
			hit_player_obj.dash_speed = hit_player_obj.dash_speed * 0.75;
			hit_player_obj.ground_friction = hit_player_obj.ground_friction * 1.25;
			hit_player_obj.air_accel = hit_player_obj.air_accel * 0.75;
			hit_player_obj.gravity_speed = hit_player_obj.gravity_speed * 0.90;
			hit_player_obj.jump_speed = hit_player_obj.jump_speed * 0.85;
			hit_player_obj.djump_speed = hit_player_obj.djump_speed * 0.85;
			hit_player_obj.max_fall = hit_player_obj.max_fall * 0.75;
			hit_player_obj.fast_fall = hit_player_obj.fast_fall * 0.75;
			hit_player_obj.air_friction = hit_player_obj.air_friction * 2;
		}
		hit_player_obj.knockback_adj = hit_player_obj.knockback_adj + 0.15;
			}
		}
	break;
	
	case AT_USTRONG:
		if (my_hitboxID.orig_player == player){
			if (my_hitboxID.hbox_num == 8){
    sound_play(asset_get("sfx_waterhit_medium")); 
	hit_player_obj.pastelle_soaked = true;
    hit_player_obj.pastelle_soaked_id = id; 
	hit_player_obj.pastelle_soaked_time = 600;
		if (has_rune("L"))
		{
			hit_player_obj.walk_speed = hit_player_obj.walk_speed * 0.75;
			hit_player_obj.dash_speed = hit_player_obj.dash_speed * 0.75;
			hit_player_obj.ground_friction = hit_player_obj.ground_friction * 1.25;
			hit_player_obj.air_accel = hit_player_obj.air_accel * 0.75;
			hit_player_obj.gravity_speed = hit_player_obj.gravity_speed * 0.90;
			hit_player_obj.jump_speed = hit_player_obj.jump_speed * 0.85;
			hit_player_obj.djump_speed = hit_player_obj.djump_speed * 0.85;
			hit_player_obj.max_fall = hit_player_obj.max_fall * 0.75;
			hit_player_obj.fast_fall = hit_player_obj.fast_fall * 0.75;
			hit_player_obj.air_friction = hit_player_obj.air_friction * 2;
		}
		hit_player_obj.knockback_adj = hit_player_obj.knockback_adj + 0.15;
			}
		}
	break;
	
	case AT_FSTRONG:
		if (my_hitboxID.orig_player == player){
			if (my_hitboxID.hbox_num == 1){
    sound_play(asset_get("sfx_waterhit_medium")); 
	hit_player_obj.pastelle_soaked = true;
    hit_player_obj.pastelle_soaked_id = id; 
	hit_player_obj.pastelle_soaked_time = 600;
		if (has_rune("L"))
		{
			hit_player_obj.walk_speed = hit_player_obj.walk_speed * 0.75;
			hit_player_obj.dash_speed = hit_player_obj.dash_speed * 0.75;
			hit_player_obj.ground_friction = hit_player_obj.ground_friction * 1.25;
			hit_player_obj.air_accel = hit_player_obj.air_accel * 0.75;
			hit_player_obj.gravity_speed = hit_player_obj.gravity_speed * 0.90;
			hit_player_obj.jump_speed = hit_player_obj.jump_speed * 0.85;
			hit_player_obj.djump_speed = hit_player_obj.djump_speed * 0.85;
			hit_player_obj.max_fall = hit_player_obj.max_fall * 0.75;
			hit_player_obj.fast_fall = hit_player_obj.fast_fall * 0.75;
			hit_player_obj.air_friction = hit_player_obj.air_friction * 2;
		}
		hit_player_obj.knockback_adj = hit_player_obj.knockback_adj + 0.15;
			}
		}
	break;
	
	case AT_DSTRONG:
		if (my_hitboxID.orig_player == player){
			if (my_hitboxID.hbox_num == 2){
    sound_play(asset_get("sfx_waterhit_medium")); 
	hit_player_obj.pastelle_soaked = true;
    hit_player_obj.pastelle_soaked_id = id; 
	hit_player_obj.pastelle_soaked_time = 600;
		if (has_rune("L"))
		{
			hit_player_obj.walk_speed = hit_player_obj.walk_speed * 0.75;
			hit_player_obj.dash_speed = hit_player_obj.dash_speed * 0.75;
			hit_player_obj.ground_friction = hit_player_obj.ground_friction * 1.25;
			hit_player_obj.air_accel = hit_player_obj.air_accel * 0.75;
			hit_player_obj.gravity_speed = hit_player_obj.gravity_speed * 0.90;
			hit_player_obj.jump_speed = hit_player_obj.jump_speed * 0.85;
			hit_player_obj.djump_speed = hit_player_obj.djump_speed * 0.85;
			hit_player_obj.max_fall = hit_player_obj.max_fall * 0.75;
			hit_player_obj.fast_fall = hit_player_obj.fast_fall * 0.75;
			hit_player_obj.air_friction = hit_player_obj.air_friction * 2;
		}
		hit_player_obj.knockback_adj = hit_player_obj.knockback_adj + 0.15;
			}
		}
	break;
	
	case AT_UAIR:
		if (my_hitboxID.orig_player == player){
			if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4){
    sound_play(asset_get("sfx_waterhit_medium")); 
	hit_player_obj.pastelle_soaked = true;
    hit_player_obj.pastelle_soaked_id = id; 
	hit_player_obj.pastelle_soaked_time = 600;
		if (has_rune("L"))
		{
			hit_player_obj.walk_speed = hit_player_obj.walk_speed * 0.75;
			hit_player_obj.dash_speed = hit_player_obj.dash_speed * 0.75;
			hit_player_obj.ground_friction = hit_player_obj.ground_friction * 1.25;
			hit_player_obj.air_accel = hit_player_obj.air_accel * 0.75;
			hit_player_obj.gravity_speed = hit_player_obj.gravity_speed * 0.90;
			hit_player_obj.jump_speed = hit_player_obj.jump_speed * 0.85;
			hit_player_obj.djump_speed = hit_player_obj.djump_speed * 0.85;
			hit_player_obj.max_fall = hit_player_obj.max_fall * 0.75;
			hit_player_obj.fast_fall = hit_player_obj.fast_fall * 0.75;
			hit_player_obj.air_friction = hit_player_obj.air_friction * 2;
		}
		hit_player_obj.knockback_adj = hit_player_obj.knockback_adj + 0.15;
			}
		}
	break;
	
	case AT_BAIR:
		if (my_hitboxID.orig_player == player){
			if (my_hitboxID.hbox_num == 1){
    sound_play(asset_get("sfx_waterhit_medium")); 
	hit_player_obj.pastelle_soaked = true;
    hit_player_obj.pastelle_soaked_id = id; 
	hit_player_obj.pastelle_soaked_time = 600;
		if (has_rune("L"))
		{
			hit_player_obj.walk_speed = hit_player_obj.walk_speed * 0.75;
			hit_player_obj.dash_speed = hit_player_obj.dash_speed * 0.75;
			hit_player_obj.ground_friction = hit_player_obj.ground_friction * 1.25;
			hit_player_obj.air_accel = hit_player_obj.air_accel * 0.75;
			hit_player_obj.gravity_speed = hit_player_obj.gravity_speed * 0.90;
			hit_player_obj.jump_speed = hit_player_obj.jump_speed * 0.85;
			hit_player_obj.djump_speed = hit_player_obj.djump_speed * 0.85;
			hit_player_obj.max_fall = hit_player_obj.max_fall * 0.75;
			hit_player_obj.fast_fall = hit_player_obj.fast_fall * 0.75;
			hit_player_obj.air_friction = hit_player_obj.air_friction * 2;
		}
		hit_player_obj.knockback_adj = hit_player_obj.knockback_adj + 0.15;
			}
		}
	break;
}
}

if (hit_player_obj.pastelle_soaked)
{
	if (attack == AT_FSPECIAL && window == 4)
	{
		create_hitbox(AT_FSPECIAL, 3, x, y);
		hit_player_obj.pastelle_soaked_time = 0;
		hit_player_obj.pastelle_soaked = false;
	}
	if (attack == AT_NSPECIAL && (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3))
	{
		with (oPlayer)
		{
			if (hitpause)
			{
				set_state(PS_WRAPPED);
			}
		}
		hit_player_obj.pastelle_soaked_time = 0;
		hit_player_obj.pastelle_soaked = false;
		spawn_hit_fx(x, y, 302);
		spawn_hit_fx((x + hit_player_obj.x)/2, (y + hit_player_obj.y)/2, 194);
		if (x < hit_player_obj.x)
		{
			x = hit_player_obj.x - 8;
		}
		if (x >= hit_player_obj.x)
		{
			x = hit_player_obj.x + 8;
		}
		y = hit_player_obj.y - 8;
		set_state(PS_IDLE_AIR);
		vsp = -8;
	}
	if (attack == AT_FTILT)
		if (my_hitboxID.hbox_num == 2)
		{
			sound_play(asset_get("sfx_waterhit_medium")); 
			hit_player_obj.pastelle_soaked = true;
			hit_player_obj.pastelle_soaked_id = id; 
			hit_player_obj.pastelle_soaked_time = 600;
		}

	if (attack == AT_USTRONG)
		if (my_hitboxID.hbox_num == 8)
		{
			sound_play(asset_get("sfx_waterhit_medium")); 
			hit_player_obj.pastelle_soaked = true;
			hit_player_obj.pastelle_soaked_id = id; 
			hit_player_obj.pastelle_soaked_time = 600;
		}

	if (attack == AT_DSTRONG)
		if (my_hitboxID.hbox_num == 2)
		{
			sound_play(asset_get("sfx_waterhit_medium")); 
			hit_player_obj.pastelle_soaked = true;
			hit_player_obj.pastelle_soaked_id = id; 
			hit_player_obj.pastelle_soaked_time = 600;
		}

	if (attack == AT_FSTRONG)
		if (my_hitboxID.hbox_num == 1)
		{
			sound_play(asset_get("sfx_waterhit_medium")); 
			hit_player_obj.pastelle_soaked = true;
			hit_player_obj.pastelle_soaked_id = id; 
			hit_player_obj.pastelle_soaked_time = 600;
		}

	if (attack == AT_UAIR)
		if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4)
		{
			sound_play(asset_get("sfx_waterhit_medium")); 
			hit_player_obj.pastelle_soaked = true;
			hit_player_obj.pastelle_soaked_id = id; 
			hit_player_obj.pastelle_soaked_time = 600;
		}
	if (attack == AT_BAIR)
		if (my_hitboxID.hbox_num == 1)
		{
			sound_play(asset_get("sfx_waterhit_medium")); 
			hit_player_obj.pastelle_soaked = true;
			hit_player_obj.pastelle_soaked_id = id; 
			hit_player_obj.pastelle_soaked_time = 600;
		}
}