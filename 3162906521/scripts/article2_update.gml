//article2_update

switch ammo_type{
	case 0:
	hurtbox_spr = sprite_get("ammo_s_idle");
break;
case 1:
	hurtbox_spr = sprite_get("ammo_m_idle");
break;
case 2:
hurtbox_spr = sprite_get("ammo_l_idle");
break;
case 3:
	hurtbox_spr = sprite_get("ammo_scrap");
	sprite_index = sprite_get("ammo_scrap");
break;
case 4:
	hurtbox_spr = sprite_get("bread");
}


//falling
if(free == true){
	vsp += 0.6;
	ammostate = 0;
	if (life_timer >= 8){
		life_timer = 0;
	}
	switch ammo_type{
	case 0:
		sprite_index = sprite_get("ammo_s_fall");
	break;
	case 1:
		sprite_index = sprite_get("ammo_m_fall");
	break;
	case 2:
		sprite_index = sprite_get("ammo_l_fall");
	break;
	case 3:
		sprite_index = sprite_get("ammo_scrap");
		uses_shader = true;
	break;
	case 4:
		sprite_index = sprite_get("bread");
	}
}
else{
    hsp = hsp - (hsp * 0.2);
    vsp = vsp + hsp * 0.2 * ammo_direction;
    if vsp > 0{
    	vsp = 0;
    }
    if (ammostate == 0){
    	ammostate = 1;
    	life_timer = 0;
    }
}

life_timer = life_timer + 1;

//this tells how many frames the animations use
if (life_timer == frames_4s[image_index]) && ammo_type != 4{
	image_index++;
}

//landing code
if (ammostate == 1){
	switch ammo_type{
	case 0:
    	sprite_index = sprite_get("ammo_s_land");
	break;
	case 1:
    	sprite_index = sprite_get("ammo_m_land");
	break
	case 2:
    	sprite_index = sprite_get("ammo_l_land");
	break;
    case 3://Plays the visual nuts and bolts that fly out of destroyed buildings
		if (life_timer == 1){
			debrit_front = create_hitbox(AT_NSPECIAL, 3, x , y);
			debrit_front.hsp = 2 * spr_dir;
		}
		if (life_timer == 2){
			debrit_back = create_hitbox(AT_NSPECIAL, 3, x-32, y - 60);
			debrit_back.hsp = -2 * spr_dir;
		}
		if (life_timer == 3){
			debrit_front = create_hitbox(AT_NSPECIAL, 3, x + 1, y - 60);
			debrit_front.hsp = 0.5 * spr_dir;
		}
		if (life_timer == 4){
			debrit_back = create_hitbox(AT_NSPECIAL, 3, x -30 , y);
			debrit_back.hsp = -2 * spr_dir;
		}
	}
	
	if (life_timer == 2){
		sound_play(asset_get("sfx_shovel_hit_light1"));
	}    
	if (life_timer == 8){
		sound_play(asset_get("sfx_shovel_hit_light2"));
	}
	if (life_timer == 12){
		life_timer = 0;
		ammostate = 2;
		cooldown_loop = 1;
	}
}

//sitting code
if (ammostate == 2){
	switch ammo_type{
	case 0:
		sprite_index = sprite_get("ammo_s_idle");
	break;
	case 1:
		sprite_index = sprite_get("ammo_m_idle");
	break;
	case 2:
		sprite_index = sprite_get("ammo_l_idle");
	break;
	}
	if (life_timer == 36){
		if anim_timer == 4{
			ammostate = 3
			anim_timer = 0;
		}else if ammo_type < 3{
        	anim_timer ++;
		}
		life_timer = 0;
	}
}

if (ammostate == 3){
	switch ammo_type{
	case 0:
    	sprite_index = sprite_get("ammo_s_anim");
	break;
	case 1:
    	sprite_index = sprite_get("ammo_m_anim");
	break;
	case 2:
    	sprite_index = sprite_get("ammo_l_anim");
	}
    if (life_timer == 12) && ammo_type < 3{
		sound_play(asset_get("sfx_land"));
	}
    if (life_timer == 30){
		ammostate = 2;
        life_timer = 0;
        despawn_timer ++;
    }
}


//destruction code
if (despawn_timer > 2){
	despawn = true;
	sound_play(asset_get("sfx_roll"));
    spawn_hit_fx( x, y-4, 14 );
}
if despawn = true or (y > room_height){
    instance_destroy();
    exit;
}

if despawn_timer < 0{
	despawn_timer = 0;
}