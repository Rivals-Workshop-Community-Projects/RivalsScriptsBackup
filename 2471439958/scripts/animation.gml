switch (state){
case PS_WALK:
		if bloodborne == 0{
		sprite_index = sprite_get( "walk" );
		image_index = floor(image_number*state_timer/(image_number*6));
	}
		if bloodborne == 1{
		sprite_index = sprite_get( "walk_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*6));
	}
    break;
case PS_DASH_START:
		if move_cooldown[AT_DAIR] == 0 && (bloodborne == 0){
		sprite_index = sprite_get( "dashstartB" );
		image_index = floor(image_number*state_timer/(image_number*7));
		}
		if move_cooldown[AT_DAIR] > 0 && (bloodborne == 0){
		sprite_index = sprite_get( "dashstart" );
		image_index = floor(image_number*state_timer/(image_number*7));
		}
    break;
case PS_DASH_STOP:
		if move_cooldown[AT_DAIR] == 0 && (bloodborne == 0){
		sprite_index = sprite_get( "dashstopB" );
		image_index = floor(image_number*state_timer/(image_number*5));
		}
		if move_cooldown[AT_DAIR] > 0 && (bloodborne == 0){
		sprite_index = sprite_get( "dashstop" );
		image_index = floor(image_number*state_timer/(image_number*5));
		}
    break;
case PS_DASH:
		if move_cooldown[AT_DAIR] == 0 && (bloodborne == 0){
		sprite_index = sprite_get( "dashB" );
		image_index = floor(image_number*state_timer/(image_number*5));
		}
		if move_cooldown[AT_DAIR] > 0 && (bloodborne == 0){
		sprite_index = sprite_get( "dash" );
		image_index = floor(image_number*state_timer/(image_number*5));
		}
    break;
case PS_IDLE:
		if move_cooldown[AT_DAIR] == 0 && (bloodborne == 0){
		sprite_index = sprite_get( "idle" );
		image_index = floor(image_number*state_timer/(image_number*5));
		idle_anim_speed = .16;
		}
		if move_cooldown[AT_DAIR] > 0 && (bloodborne == 0){
		sprite_index = sprite_get( "idle_EX1" );
		image_index = floor(image_number*state_timer/(image_number*5));
		idle_anim_speed = .16;
		}
    break;
case PS_IDLE:
		if move_cooldown[AT_DAIR] == 0 && (bloodborne == 0){
		sprite_index = sprite_get( "idle" );
		image_index = floor(image_number*state_timer/(image_number*5));
		idle_anim_speed = .16;
		}
		if move_cooldown[AT_DAIR] > 0 && (bloodborne == 0){
		sprite_index = sprite_get( "idle_EX1" );
		image_index = floor(image_number*state_timer/(image_number*5));
		idle_anim_speed = .16;
		}
    break;
case PS_ATTACK_GROUND:
	if attack == AT_FSTRONG && fire == 1 {
		if window == 1{ 
			sprite_index = sprite_get( "fstrong" );
		}
		if window >= 5 && has_hit{ 
			sprite_index = sprite_get( "fstrong_fire" );
		}
	}
	break;


}
if get_player_color(player) == 30{
	genesis = 1
}else{
	genesis = 0
}


if state == PS_IDLE {
		if get_player_color(player) == 2  or get_player_color(player) == 3 or get_player_color(player) == 4 or get_player_color(player) == 11 or get_player_color(player) == 12 or get_player_color(player) == 15 or get_player_color(player) == 16 or get_player_color(player) == 18 or get_player_color(player) == 19 or get_player_color(player) == 20 or get_player_color(player) == 26 or get_player_color(player) == 30{
		sprite_index = sprite_get( "idle_EX" );
		image_index = floor(image_number*state_timer/(image_number*7));
		idle_anim_speed = .16;
		}/*else
		if bloodborne == 1{
		sprite_index = sprite_get( "idle_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*7));
		idle_anim_speed = .16;
		}	*/
}
if state == PS_IDLE {
		if get_player_color(player) == 2  or get_player_color(player) == 3 or get_player_color(player) == 4 or get_player_color(player) == 11 or get_player_color(player) == 12 or get_player_color(player) == 15 or get_player_color(player) == 16 or get_player_color(player) == 18 or get_player_color(player) == 19 or get_player_color(player) == 20 or get_player_color(player) == 26 or get_player_color(player) == 30{
		if move_cooldown[AT_DAIR] == 0{
		sprite_index = sprite_get( "idle_EX" );
		image_index = floor(image_number*state_timer/(image_number*5));
		idle_anim_speed = .16;
		}
		if move_cooldown[AT_DAIR] > 0{
		sprite_index = sprite_get( "idle_EX1" );
		image_index = floor(image_number*state_timer/(image_number*5));
		idle_anim_speed = .16;
		}
	}
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

if (state == PS_SPAWN) {
    if (introTimer < 17 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else if get_player_color(player) == 2  or get_player_color(player) == 3 or get_player_color(player) == 4 or get_player_color(player) == 11 or get_player_color(player) == 12 or get_player_color(player) == 15 or get_player_color(player) == 16 or get_player_color(player) == 18 or get_player_color(player) == 19 or get_player_color(player) == 26{
		sprite_index = sprite_get( "idle_EX" );
    } else {
        sprite_index = sprite_get("idle");
    }
}

if (gaming == 1) or (crystal == 1){
	suppress_stage_music( 0, 100 );
}

/* (Do NOT restore the code, I havent made the animations for it to fully work)
//Bloodborne
if state == PS_IDLE{
	if  (bloodborne == 0){
		sprite_index = sprite_get( "idle" );
		image_index = floor(image_number*state_timer/(image_number*7));
		idle_anim_speed = .16;
	}else
	if bloodborne == 1{
		sprite_index = sprite_get( "idle_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*7));
		idle_anim_speed = .16;
	}
}
if state == PS_WALK{
		if  (bloodborne == 0){
		sprite_index = sprite_get( "walk" );
		image_index = floor(image_number*state_timer/(image_number*4));
	}
		if bloodborne == 1{
		sprite_index = sprite_get( "walk_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*4));
	}
}
if state == PS_WALK_TURN{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "walkturn_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*2));
	}
}
if state == PS_DASH{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "dash_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*3.5));
	}
}		
if state == PS_DASH_START{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "dashstart_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*4));
	}
}
if state == PS_DASH_STOP{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "dashstop_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*3));
	}
}
if state == PS_DASH_TURN{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "dashturn_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*4));
	}
}
if state == PS_JUMPSQUAT{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "jumpstart_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*4));
	}
}
if state == PS_FIRST_JUMP{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "jump_bloodborne" );
	}
}
if state == PS_DOUBLE_JUMP{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "doublejump_bloodborne" );
	}
}
if state == PS_WALL_JUMP{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "walljump_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*2.4));
	}
}
if state == PS_WALL_TECH{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "walljump_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*2.4));
	}
}
if state == PS_IDLE_AIR{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "jump_bloodborne" );
	}
}
if state == PS_LAND{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "land_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*4));
	}
}
if state == PS_LANDING_LAG{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "landinglag_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*4));
	}
}
if state == PS_PARRY{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "parry_bloodborne" );
	}
}
if state == PS_AIR_DODGE{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "airdodge_bloodborne" );
	}
}
if state == PS_ROLL_BACKWARD{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "roll_backward_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*2.5));
	}
}
if state == PS_ROLL_FORWARD{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "roll_forward_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*2.5));
	}
}
if state == PS_HITSTUN{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "hurt_bloodborne" );
		if bubbled{ sprite_index = sprite_get( "hurt_bloodborne" );}
	}
}
if state == PS_TUMBLE{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "hurt_bloodborne" );
		if bubbled{ sprite_index = sprite_get( "hurt_bloodborne" );}
	}
}
if state == PS_HITSTUN_LAND{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "hurt_bloodborne" );
		if bubbled{ sprite_index = sprite_get( "hurt_bloodborne" );}
	}
}
if state == PS_WRAPPED{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "hurt_bloodborne" );
		if bubbled{ sprite_index = sprite_get( "hurt_bloodborne" );}
	}
}
if state == PS_TECH_GROUND{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "tech_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*3.6));
	}
}
if state == PS_WAVELAND{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "waveland_bloodborne" );
		image_index = floor(image_number*state_timer/(image_number*4));
	}
}
if state == PS_CROUCH{
		if  (bloodborne == 1){
		sprite_index = sprite_get( "crouch_bloodborne" );
	}
} */