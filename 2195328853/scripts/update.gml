muno_event_type = 1;
user_event(14);

if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
   upb = false;uairboost = 1;
}

if(nspecialcharge < 60 && fspecialcharge < 60){
    if (get_player_color( player ) == 7){
        if (outline_color[0] != 31 || outline_color[1] != 31 || outline_color[2] != 111){
            outline_color=[31, 31, 111]
            init_shader();
        }
    }else if (get_player_color( player ) == 8){
        if (outline_color[0] != 130 || outline_color[1] != 20 || outline_color[2] != 35){
            outline_color=[130, 20, 35]
            init_shader();
        }
    }//else if (get_player_color( player ) == 10){
        //if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
            //outline_color=[97, 162, 255]
            //init_shader();
        //}
    //}
    else if (get_player_color( player ) == 16){
        if (outline_color[0] != 143 || outline_color[1] != 80 || outline_color[2] != 1){
            outline_color=[143, 80, 1]
            init_shader();
        }
    }else if (get_player_color( player ) == 26){
        if (outline_color[0] != 29 || outline_color[1] != 167 || outline_color[2] != 231){
            outline_color=[29, 167, 231]
            init_shader();
        }
    }else{
        outline_color = [0, 0, 0];
        init_shader();
    }
}else{
	if(!runeO || runeO && fspecialcharge < 180){
		outline_color = [outline_timer, outline_timer, outline_timer];
		if (outline_timer > 120) outline_rev = true;
		if (outline_timer < 0) outline_rev = false;
		if(nspecialcharge < 60 || fspecialcharge < 60){
			if (outline_rev) outline_timer -= 15;
			else outline_timer += 15;
		}else{
			if (outline_rev) outline_timer -= 40;
			else outline_timer += 40;
		}
		init_shader();
	}else if(runeO && fspecialcharge >= 180){
		outline_color = [outline_timer, outline_timer, outline_timer];
		if (outline_timer > 200) outline_rev = true;
		if (outline_timer < 50) outline_rev = false;
		if (outline_rev) outline_timer -= 55;
		else outline_timer += 55;
		init_shader();
	}
}
//print_debug(string(0.4+(hsp/10*spr_dir)));
steam_cooldown -= 1;

if (attack != AT_NSPECIAL && state != PS_HITSTUN && special_pressed && joy_pad_idle && (attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL)){
    		if(instance_exists(blob_ball)){
				if (instance_exists(blob_ball.ballhitbox)) {
			    	instance_destroy(blob_ball.ballhitbox);
			    }if(blob_ball.ballmode == 0){
				    if(nspecialcharge < 60){
				    	create_hitbox(AT_NSPECIAL,3,blob_ball.x,blob_ball.y);
				    	spawn_hit_fx(blob_ball.x+20,blob_ball.y+20, fx_blob_ball_explosion);spawn_hit_fx(blob_ball.x-20,blob_ball.y+20, fx_blob_ball_explosion);
				    	spawn_hit_fx(blob_ball.x+20,blob_ball.y-20, fx_blob_ball_explosion);spawn_hit_fx(blob_ball.x-20,blob_ball.y-20, fx_blob_ball_explosion);
				    }else{
				    	create_hitbox(AT_NSPECIAL,2,blob_ball.x,blob_ball.y);
				    	spawn_hit_fx(blob_ball.x,blob_ball.y, fx_blob_ball_explosion);spawn_hit_fx(blob_ball.x,blob_ball.y, fx_blob_ball_explosion2);
				    }
				    sound_play(asset_get("sfx_waterhit_heavy"));
				}else if(blob_ball.ballmode == 1){ //ice
				    create_hitbox(AT_NSPECIAL,4,blob_ball.x,blob_ball.y);
				    spawn_hit_fx(blob_ball.x,blob_ball.y, 199);
				    sound_play(asset_get("sfx_ice_back_air"));
				}else if(blob_ball.ballmode == 2){ //steam
				    create_hitbox(AT_NSPECIAL,5,blob_ball.x,blob_ball.y);
				    spawn_hit_fx(blob_ball.x+20,blob_ball.y-20, 144);spawn_hit_fx(blob_ball.x-20,blob_ball.y-20, 144);spawn_hit_fx(blob_ball.x+20,blob_ball.y+20, 144);spawn_hit_fx(blob_ball.x-20,blob_ball.y+20, 144);
				    sound_play(asset_get("sfx_ell_steam_release"));
				}else if(blob_ball.ballmode == 3){ //whirlpool
				    create_hitbox(AT_NSPECIAL,6,blob_ball.x,blob_ball.y);
				    spawn_hit_fx(blob_ball.x,blob_ball.y, 196);
				    sound_play(asset_get("sfx_waterhit_heavy"));
				}instance_destroy(blob_ball);
			}
			if(instance_exists(blob_ball2)){
				if (instance_exists(blob_ball2.ballhitbox)) {
			    	instance_destroy(blob_ball2.ballhitbox);
			    }if(blob_ball2.ballmode == 0){
				    if(nspecialcharge < 60){
				    	create_hitbox(AT_NSPECIAL,3,blob_ball2.x,blob_ball2.y);
				    	spawn_hit_fx(blob_ball2.x+20,blob_ball2.y+20, fx_blob_ball_explosion);spawn_hit_fx(blob_ball2.x-20,blob_ball2.y+20, fx_blob_ball_explosion);
				    	spawn_hit_fx(blob_ball2.x+20,blob_ball2.y-20, fx_blob_ball_explosion);spawn_hit_fx(blob_ball2.x-20,blob_ball2.y-20, fx_blob_ball_explosion);
				    }else{
				    	create_hitbox(AT_NSPECIAL,2,blob_ball2.x,blob_ball2.y);
				    	spawn_hit_fx(blob_ball2.x,blob_ball2.y, fx_blob_ball_explosion);spawn_hit_fx(blob_ball2.x,blob_ball2.y, fx_blob_ball_explosion2);
				    }
				    sound_play(asset_get("sfx_waterhit_heavy"));
				}else if(blob_ball2.ballmode == 1){ //ice
				    create_hitbox(AT_NSPECIAL,4,blob_ball2.x,blob_ball2.y);
				    spawn_hit_fx(blob_ball2.x,blob_ball2.y, 199);
				    sound_play(asset_get("sfx_ice_back_air"));
				}else if(blob_ball2.ballmode == 2){ //steam
				    create_hitbox(AT_NSPECIAL,5,blob_ball2.x,blob_ball2.y);
				    spawn_hit_fx(blob_ball2.x+20,blob_ball2.y-20, 144);spawn_hit_fx(blob_ball2.x-20,blob_ball2.y-20, 144);spawn_hit_fx(blob_ball2.x+20,blob_ball2.y+20, 144);spawn_hit_fx(blob_ball2.x-20,blob_ball2.y+20, 144);
					sound_play(asset_get("sfx_ell_steam_release"));
				}else if(blob_ball2.ballmode == 3){ //whirlpool
				    create_hitbox(AT_NSPECIAL,6,blob_ball2.x,blob_ball2.y);
				    spawn_hit_fx(blob_ball2.x,blob_ball2.y, 196);
				    sound_play(asset_get("sfx_waterhit_heavy"));
				}instance_destroy(blob_ball2);
			}if(instance_exists(blob_ball3)){
				if (instance_exists(blob_ball3.ballhitbox)) {
			    	instance_destroy(blob_ball3.ballhitbox);
			    }if(blob_ball3.ballmode == 0){
				    if(nspecialcharge < 60){
				    	create_hitbox(AT_NSPECIAL,3,blob_ball3.x,blob_ball3.y);
				    	spawn_hit_fx(blob_ball3.x+20,blob_ball3.y+20, fx_blob_ball_explosion);spawn_hit_fx(blob_ball3.x-20,blob_ball3.y+20, fx_blob_ball_explosion);
				    	spawn_hit_fx(blob_ball3.x+20,blob_ball3.y-20, fx_blob_ball_explosion);spawn_hit_fx(blob_ball3.x-20,blob_ball3.y-20, fx_blob_ball_explosion);
				    }else{
				    	create_hitbox(AT_NSPECIAL,2,blob_ball3.x,blob_ball3.y);
				    	spawn_hit_fx(blob_ball3.x,blob_ball3.y, fx_blob_ball_explosion);spawn_hit_fx(blob_ball3.x,blob_ball3.y, fx_blob_ball_explosion2);
				    }
				    sound_play(asset_get("sfx_waterhit_heavy"));
				}else if(blob_ball3.ballmode == 1){ //ice
				    create_hitbox(AT_NSPECIAL,4,blob_ball3.x,blob_ball3.y);
				    spawn_hit_fx(blob_ball3.x,blob_ball3.y, 199);
				    sound_play(asset_get("sfx_ice_back_air"));
				}else if(blob_ball3.ballmode == 2){ //steam
				    create_hitbox(AT_NSPECIAL,5,blob_ball3.x,blob_ball3.y);
				    spawn_hit_fx(blob_ball3.x+20,blob_ball3.y-20, 144);spawn_hit_fx(blob_ball3.x-20,blob_ball3.y-20, 144);spawn_hit_fx(blob_ball3.x+20,blob_ball3.y+20, 144);spawn_hit_fx(blob_ball3.x-20,blob_ball3.y+20, 144);
					sound_play(asset_get("sfx_ell_steam_release"));
				}else if(blob_ball3.ballmode == 3){ //whirlpool
				    create_hitbox(AT_NSPECIAL,6,blob_ball3.x,blob_ball3.y);
				    spawn_hit_fx(blob_ball3.x,blob_ball3.y, 196);
				    sound_play(asset_get("sfx_waterhit_heavy"));
				}instance_destroy(blob_ball3);
			}
			nspecialcharge = 0;
}

//Crawl
if(state == PS_CROUCH){
    can_move = true;
    if (right_down){
        hsp = 0.5;//spr_dir = 1;
        crawling = true;          
    }else if (left_down){
        hsp = -0.5;
        crawling = true;  
    }
    if (joy_pad_idle){
        hsp = 0;
        crawling = false;
    }
   
}else{
    crawling = false;
}

if (get_match_setting(SET_RUNES)) {
	if (has_rune("G")) {
		max_djumps = 10;
	}if (has_rune("H")) {
		runeH = true;
	}if (has_rune("I")) {
		runeI = true;
	}
	if (has_rune("L")) {
		//set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
		set_num_hitboxes(AT_USPECIAL, 2);
		set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 40);
		set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 40);
		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 13);
		set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 12);
		set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 1.9);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 15);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 3.9);
		set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 240);
		set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("rest_hit"));
	}if (has_rune("M")) {
		runeM = true;
	}if (has_rune("O")) {
		runeO = true;
	}
}

//randomize TL photo when TL uses the taunt
with(asset_get("oPlayer")){
    if("pictophotoload" in self){
    	if(pictophotoload){
        	other.toonlink_randomizephoto = true;
    	}
    }
}if(toonlink_randomizephoto){
	toonlink_randomizephoto = false;
	var random_photo = random_func(0, 3, true);
	if(random_photo == 0){
		toonlink_photo = sprite_get("toonlink_photo3");
		toonlink_photo2 = 1;
	}else if(random_photo == 1){
		toonlink_photo = sprite_get("toonlink_photo2");
		toonlink_photo2 = sprite_get("toonlink_photo_TL2");
	}else if(random_photo == 2){
		toonlink_photo = sprite_get("toonlink_photo");
		toonlink_photo2 = 5;
	}
}