//hitbox_update
if (attack == AT_FTHROW){
	if hitbox_timer == 1 && !was_reflected && !has_rune("O") player_id.move_cooldown[AT_FTHROW] = 210;
	// through_platforms = hitbox_timer <= 5 ? 10:0;
	// Reflect stuff
    if player != old_owner{//Relect correctly without parries.
        if !was_reflected hitbox_timer = 0; //Limits total lifetime
        was_reflected = true;
        draw_xscale = spr_dir;
        if !bashed{//Ori bash speed is it's own thing, it seems.
            hsp *= 1.5;
            vsp *= 1.5;
        }
    }
    proj_angle = point_direction(0,0,abs(hsp),spr_dir*vsp);
    old_owner = player; //Reflect code needs to run only once or game will die.
}
if (attack == AT_UTHROW){
	through_platforms = vsp <= 3 ? 10:0;
	if !free destroyed = true;
	if hitbox_timer == 1 && !was_reflected && !has_rune("O") player_id.move_cooldown[AT_UTHROW] = 150;
	// Reflect stuff
    if player != old_owner{//Relect correctly without parries.
        if !was_reflected hitbox_timer = 0; //Limits total lifetime
        was_reflected = true;
        draw_xscale = spr_dir;
        if !bashed{//Ori bash speed is it's own thing, it seems.
            hsp = 3.25*spr_dir;
            vsp = -7;
        }
    }
    old_owner = player; //Reflect code needs to run only once or game will die.
}
if (attack == AT_DTHROW){
	if hitbox_timer == 1 && !has_rune("O") player_id.move_cooldown[AT_DTHROW] = 60;
	if player != orig_player{
		destroyed = true;
		if !has_rune("O") player_id.move_cooldown[AT_DTHROW] = 150;
		exit;
	}
    if !free{
		var eff = spawn_hit_fx(x,y,HFX_OLY_SHINE_SMALL);
		if get_player_color(player) == 12 eff.uses_shader = -1;
		destroyed = true;
		with asset_get("obj_article1"){
			if player_id == other.player_id life_timer = 0;
		}
		sound_play(sound_get("Glass_Break"));
		sound_play(asset_get("sfx_blow_weak2"));
		instance_create(x,y+9,"obj_article1");
		instance_create(x+40,y+9,"obj_article1");
		instance_create(x-40,y+9,"obj_article1");
		if has_rune("M"){
			instance_create(x+80,y+9,"obj_article1");
			instance_create(x-80,y+9,"obj_article1");
			instance_create(x+120,y+9,"obj_article1");
			instance_create(x-120,y+9,"obj_article1");
		}
    }
}

if (attack == AT_FSPECIAL){
	image_index = (hitbox_timer/2)%2 + (get_player_color(player) == 13)*2 + (get_player_color(player) == 12)*4;
	through_platforms = hitbox_timer <= 5 ? 10:0;
	if player == orig_player{ //Allows Ori to Bash it
		hsp = lengthdir_x(14, player_id.grov_wandangle);
		vsp = lengthdir_y(14, player_id.grov_wandangle);
		player_id.grov_pounce_foe_id = null;
	}
    if !free{
        should_pounce = true;
        destroyed_next = true;
    }
    with(player_id){
		if has_rune("N") && special_pressed{
			other.should_pounce = true;
			other.destroyed_next = true;
		}
	}
	if destroyed{//Walls
		should_pounce = true;
		destroyed = false;
		destroyed_next = true;
	}
    if should_pounce{
        if !bashed{
			player_id.grov_pounce_foe = has_hit;
			with(player_id){
				if state != PS_HITSTUN{
					if !other.has_hit{
						grov_pouncex = other.x + 18;
						grov_pouncey = other.y + 7;
						if !free && (y-grov_pouncey <= 18) && (y-grov_pouncey > 0) grov_pouncey = y;
					}
					window = 4;
					window_timer = 0;
				}
			}
        }
        sound_play(asset_get("sfx_absa_singlezap2"));
        if !has_hit && !destroyed destroyed_next = true;
        else destroyed = true;
    }
    if player_id.state_cat == SC_HITSTUN destroyed_next = true;
    if destroyed_next spawn_hit_fx(x, y, HFX_ABS_SWEET);
    if hitbox_timer == 25{//Afterwards for unique effect
        player_id.move_cooldown[AT_FSPECIAL] = 0;
        destroyed_next = true;
        spawn_hit_fx(x, y, HFX_ABS_ZAP_SMALL);
    }
}