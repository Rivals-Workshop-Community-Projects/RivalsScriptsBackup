//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Start Spewing
- 1 Die
- 2 Hit by Wallstaple


*/



//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

var grav_speed = .02;
var grav_max = 0;
var air_friction = 0;

//gravity
if (type == 0){
	if (free && vsp < 12){
		vsp = vsp + grav_speed;
	}
}
else if (type == 1){
	//do things
}



//State 0: Start Spewing

if (state == 0){
	if(state_timer = 1){
		sound_play(sound_get("sfx_smokebomb"), false, noone, 2);
	}
	if(state_timer == 75){
		state = 1;
		state_timer = 0;
	}if(state_timer % 15 == 0){
		sound_play(asset_get("sfx_burnend"));
						smoke_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y);
		if(player_id.bomb_missfire = true){
		smoke_hitbox.can_hit_self = true;	
		}
		snd_rng = random_func(0, 8, true);
		if(snd_rng = 0){
		smoke = spawn_hit_fx(x + spr_dir * 0,y - 0, player_id.smokebomb_fx);
		smoke.depth = -20;
		}		if(snd_rng = 1){
		smoke = spawn_hit_fx(x + spr_dir * 10,y - 10, player_id.smokebomb_fx);
		smoke.depth = -20;
		}		if(snd_rng = 2){
		smoke = spawn_hit_fx(x + spr_dir * 0,y - 30, player_id.smokebomb_fx);
		smoke.depth = -20;
		}		if(snd_rng = 2){
		smoke = spawn_hit_fx(x + spr_dir * -20,y - 20, player_id.smokebomb_fx);
		smoke.depth = -20;
		}		if(snd_rng = 3){
		smoke = spawn_hit_fx(x + spr_dir * 10,y + 10, player_id.smokebomb_fx);
		smoke.depth = -20;
		}		if(snd_rng = 4){
		smoke = spawn_hit_fx(x + spr_dir * 0,y + 15, player_id.smokebomb_fx);
		smoke.depth = -20;
		}		if(snd_rng = 5){
		smoke = spawn_hit_fx(x + spr_dir * -30,y - 0, player_id.smokebomb_fx);
		smoke.depth = -20;
		}		if(snd_rng = 6){
		smoke = spawn_hit_fx(x + spr_dir * -20,y + 20, player_id.smokebomb_fx);
		smoke.depth = -20;
		}		if(snd_rng = 7){
		smoke = spawn_hit_fx(x + spr_dir * 15,y - 30, player_id.smokebomb_fx);
		smoke.depth = -20;
		}
	}if(player_id.smoke_hitbox_reset = true){
		state_timer = 0;
		player_id.bomb_missfire = true
		player_id.smoke_hitbox_reset = false;
	}
	with (pHitBox){
    if (place_meeting(x,y,other.id) and player_id == other.player_id and attack == AT_NSPECIAL and hbox_num == 1){
        other.state = 2;
        other.state_timer = 0;
    }
}
}



//State 1: Die

if (state == 1){
	if(state_timer = 1){
	spawn_hit_fx(x - spr_dir, y, 139);
		    instance_destroy();
    exit;	
	}
}
//State 2: Hit by Wallstaple
if (state == 2){
	if(state_timer = 1){
		spawn_hit_fx(x,y, 254);
		sound_play(sound_get("sfx_wallstaple"));
		vsp = -1.5;
	}if(state_timer = 10){
		state = 0;
		state_timer = 1;
	}
}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("smokebomb_proj");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("blank_sheet");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("smokebomb_proj");
        animation_type = 1;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}



//Make time progress
state_timer++;