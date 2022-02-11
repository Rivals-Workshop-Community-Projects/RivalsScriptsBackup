shoot_timer--;
lifetime--;
state_timer++;

// TODO: if about to spit projectile, play sound & animation of "about to spit" (helps anticipation for both players)

if (lifetime < 1){
	spawn_hit_fx(x, y, hit_fx_create(sprite_get("dspecial_turret_explode"), 14));
	sound_play(asset_get("sfx_ell_dspecial_explosion_1"));
	sound_play(asset_get("sfx_ell_dspecial_explosion_1"));
    instance_destroy();
    exit;
}

if (lifetime > 519){
	if (turret_angle == 45){
			dir = 1;
		} else if (turret_angle == 315){
			dir = -1;
		}
}


var oth = instance_place(x, y, asset_get("pHitBox"));
if (place_meeting(x, y, oth) && oth.player_id != player_id){
	// if (oth.attack != AT_USTRONG && oth.attack != AT_DSPECIAL_2){
		spawn_hit_fx(x, y, hit_fx_create(sprite_get("dspecial_turret_explode"), 14));
		sound_play(asset_get("sfx_ell_dspecial_explosion_1"));
		sound_play(asset_get("sfx_ell_dspecial_explosion_1"));
		instance_destroy();
	// }
}

if ((shoot_timer > 0 && shoot_timer < 21) || (image_index > 0)){ // 5 animation frames before boom
	if (shoot_timer == 20){ 
		sound_play(asset_get("sfx_ori_spirit_flame_2"));
	}
	image_index = state_timer * anim_speed_active;
} else {
	image_index = 0;
	state_timer = 0;
}

if (shoot_timer < 1){
	var my_own_article3 = noone;

	with(asset_get("obj_article3")){
		if (player_id == other.player_id){
			my_own_article3 = id;
		}
	}

    var x_adjust = 0;
	var y_adjust = -16;
	
    if (turret_angle != 0){
        x_adjust = 16*sign(image_xscale);
    }
	if (my_own_article3 != noone && place_meeting(x+16*dir, y, my_own_article3) ){
		y_adjust = -48;
	}
    lava_splosh = create_hitbox(AT_DSPECIAL_2, 1, x + x_adjust, y+y_adjust);
    with (lava_splosh){
    	state_timer = 0;
    	anim_speed_proj = 1/5;
        lifetime = 1000;
        isBoosted = false; //whether the lava splosh projectile has been boosted by the lava wall
        image_index = state_timer * anim_speed_proj;
        // image_angle = direction;
        vsp = -10;
        if (other.turret_angle == 45){
            hsp = -4;
        } else if (other.turret_angle == 315){
            hsp = 4;
        }
        other.shoot_timer = 120;
        sound_play(asset_get("sfx_ell_small_missile_fire"));
    }
}

with (lava_splosh){
	state_timer++;
    lifetime--;
    image_index = state_timer * anim_speed_proj;
    if (!isBoosted){
        with (other.player_id){
            damage = 5;
			kb_value = 5;
        }
    }
    if (!free){
        destroyed = true;
    }
    if (place_meeting(x, y, asset_get("obj_article3"))){
        if (!isBoosted){
            sound_play(asset_get("sfx_clairen_uspecial_swing"));
        }
        isBoosted = true;
        sprite_index = sprite_get("turret_proj_boosted");
		damage = 12;
		kb_value = 8;

    }
}
