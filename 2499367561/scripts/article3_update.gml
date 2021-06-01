//acticle2_update

if (place_meeting(x, y, asset_get("plasma_field_obj"))){
	move_cooldown[AT_NSPECIAL] = 100;
	instance_destroy();
	exit;
}
if(instance_exists(player_id.blackhole)){
	if(place_meeting(x, y, player_id.blackhole)){
		if(vsp > 2){
			vsp = 2
		}else{
			vsp += 0.1
		}
	}else{
		vsp += 0.25
	}	
}else{
vsp += 0.25
}

image_angle += rotation

sprite_index = sprite_get("jetpack");          
mask_index = sprite_get("jetpack");

if(state_timer mod 10 == 0 && hitbox_timer <= 0){
    hitbox = create_hitbox(AT_NSPECIAL, 1, x, y)
    hitbox.spr_dir = spr_dir
}

if(instance_exists(hitbox)){
	hitbox.x = x
	hitbox.y = y
}

state_timer++
hitbox_timer--

if (y < 0 || y > room_height){
	with oPlayer{
		//gravity_speed = old_gravity_speed	
		//hitstun_grav = old_hitstun_grav_speed
	}
    instance_destroy();
    exit;
}

if (x < -80 || x > room_width + 80){
    with oPlayer{
		//gravity_speed = old_gravity_speed	
		//hitstun_grav = old_hitstun_grav_speed
	}
    instance_destroy();
    exit;
}

with (asset_get("pHitBox")){
	if (place_meeting(x, y, other) ){
		if(player_id == other.player_id && other.gotHit_timer <= 0 && other.gotHit_timer <= 0 && attack == AT_DSPECIAL){
		    other.gotHit_timer = 20
		    if(x > other.x){
		    	other.hsp = -8
		    }else{
		    	other.hsp = 8
		    }
		    other.vsp = -5
		    sound_play(asset_get("sfx_shovel_hit_heavy1"))
		    spawn_hit_fx(lerp(x, other.x, 0.5), lerp(y, other.y, 0.5), hit_effect)
		    exit;
		}
	}
}