//
if (!free){
    bair_stuck = 0;
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));

print(opponent_damage)

if (instance_exists(torment_opponent) && hit_player_obj == torment_opponent){
    //if (torment.state_timer%60 == 0) take_damage(torment_opponent.player, -1, torment.state+1);
    if (hit_player_obj.state == PS_RESPAWN || hit_player_obj.state == PS_DEAD){
        instance_destroy(torment);
	    instance_destroy(torment_opponent);
	    torment_opponent = noone;
    }

	if (fspecial_timer >= 0 && !hitpause){
		fspecial_timer++;
		if (fspecial_timer == 1){
			sound_play(sound_get("torment_trigger"),false,noone,1.4);	
		}
		if (fspecial_timer == 10){
			create_hitbox(AT_FSPECIAL, 2, torment_opponent.x, torment_opponent.y-30);
		}
		if (fspecial_timer >= 10){
			fspecial_multihit--;
			if (fspecial_multihit%8 == 0 && fspecial_multihit >= 5)
			create_hitbox(AT_FSPECIAL, 2, torment_opponent.x, torment_opponent.y-30);
			if (fspecial_multihit == 0){
				create_hitbox(AT_FSPECIAL, 3, torment_opponent.x, torment_opponent.y-30);
				fspecial_timer = -1;
				instance_destroy(torment_opponent);
				torment_opponent = noone;
			} 
		}
	}
}



//Fix for small_sprites
if state == PS_WALL_JUMP
  draw_x = 1*spr_dir;
else draw_x = 0

//intro stuff
if (james_intro > 0){
	james_intro--;
}
if state == PS_SPAWN
{
    if (introTimer2 < introAnimFrameLength)
    {
        introTimer2++;
    }
    else
    {
        introTimer2 = 0;
        introTimer++;
        if(introTimer == -1){
        	james_x_start = x+40*spr_dir;
			james_y_start = y;
        }
        if(introTimer == 1){
    		sound_play(asset_get("sfx_charge_blade_swing")); 
    		james_frame = 1;
        }
        if(introTimer == 2){
    		sound_play(sound_get("weapon_impact3"),false,noone,1.9);
			shake_camera(15,5);
			if(james_y != 0){
			    create_hitbox( AT_TAUNT, 1, james_x_start, james_y_start);
			    set_victory_portrait(sprite_get("james_portrait"));
			} else {
			   create_hitbox( AT_TAUNT, 2, james_x_start, james_y_start);
			   set_victory_portrait(sprite_get("portrait"));//this is the newly added bugfix line
			 }
			james_frame = 2;
        }
        if(introTimer == 3)
        sound_play(sound_get("potd_swing1"),false,noone,0.9);

    }
    with(pet_obj){
    	if (owner.player = other.player and variable_instance_exists(id, "gun_mode")){
    		other.james_x = x;
    		other.james_y = y;
    	}
    }
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	dspecial_grab = false;
}

#region // cringe ass hfx stuff
with hit_fx_obj if player_id == other {
	if hit_fx == other.hfx_sword_small or other.hfx_sword_medium or other.hfx_sword_large or other.hfx_torment_tiny or other.hfx_torment_small or other.hfx_torment_large{
		depth = player_id.depth+1;
	} if hit_fx == other.vfx_spear_break_head {
		grav = 0.5;
		if (step_timer == 1){
			vsp = -5;
			hsp = 1*spr_dir;
		}
		if (step_timer % 4 == 0 && step_timer != 0){
			draw_angle -= 45*spr_dir;
		}
	}if hit_fx == other.vfx_spear_break_shaft {
		grav = 0.5;
		if (step_timer == 1){
			vsp = -5;
			hsp = -1*spr_dir
		}
		if (step_timer % 4 == 0 && step_timer != 0){
			draw_angle += 45*spr_dir;
		}
	}
}
#endregion