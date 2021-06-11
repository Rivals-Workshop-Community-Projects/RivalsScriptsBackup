//Grab stuff, mostly changing the sprites when using it
if (wario_grab == true){
    if (state == PS_IDLE){
        sprite_index = sprite_get("idle_hold");
        if (state_timer > 50){
            state_timer = 0;
        }
    }
    if (state == PS_WALK){
        sprite_index = sprite_get("walk_hold");
        if (state_timer > 58){
            state_timer = 0;
        }
    }
    if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_STOP){
        sprite_index = sprite_get("walk_hold");
        if (state_timer > 40){
            state_timer = 0;
        }
    }
    if (state == PS_WALK_TURN || state == PS_DASH_TURN){
        sprite_index = sprite_get("walkturn_hold");
    }
    if (state == PS_JUMPSQUAT){
        sprite_index = sprite_get("jumpstart_hold");
    }
    if (state == PS_FIRST_JUMP || state == PS_IDLE_AIR){
        sprite_index = sprite_get("jump_hold");
    }
    if (state == PS_LAND){
        sprite_index = sprite_get("land_hold");
    }
}

//quality of life animations
//animation.gml
if (sprite_index == sprite_get("idle") && up_down){
    var lookup_img_index = image_index;
    sprite_index = sprite_get("looking_up");
    image_index = lookup_img_index;
}

//quality of life animations
//animation.gml
if (is_crawling && hsp != 0){
    var lookup_img_index = image_index;
    sprite_index = sprite_get("crawl");
    image_index = state_timer / 10;
 
}

//retro alt stuff
if (get_player_color(player) == 10 || get_player_color(player) == 15 || get_player_color(player) == 17 || get_player_color(player) == 20 || get_player_color(player) == 15){
	if (sprite_index == sprite_get("parry")){
		var parry_img_index = image_index;
		sprite_index = sprite_get("parry_retro");
		image_index = parry_img_index;
	}
	
	if (sprite_index == sprite_get("uair")){
		var uair_img_index = image_index;
		sprite_index = sprite_get("uair_retro");
		image_index = uair_img_index;
	}
	
	if (sprite_index == sprite_get("fspecial_jet")){
		var jet_img_index = image_index;
		sprite_index = sprite_get("fspecial_jet_retro");
		image_index = jet_img_index;
	}
	
	if (sprite_index == sprite_get("fstrong")){
		var dragon_img_index = image_index;
		sprite_index = sprite_get("fstrong_retro");
		image_index = dragon_img_index;
	}
}

//quality of life animations
if (state == PS_FROZEN){
    sprite_index = sprite_get("frozen");
}

if (state == PS_WRAPPED){
    sprite_index = sprite_get("uphurt");
}

if (plasma_pause == true){
    sprite_index = sprite_get("shocked");
}

if (burned == true && state_cat == SC_HITSTUN){
    sprite_index = sprite_get("burned");
}

if (bubbled == true){
    sprite_index = sprite_get("bubbled");
}

if (attack == AT_FSPECIAL){
    draw_sprite_ext(sprite_get("fspecial_fx"), image_index, x, y, spr_dir, 1, 1, c_white, 1 );
}

if (attack == AT_FSPECIAL_AIR){
    draw_sprite_ext(sprite_get("fspecial_jet_fx"), image_index, x, y, spr_dir, 1, 1, c_white, 1 );
}

if (state == PS_SPAWN) {
    if (introTimer < 15 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
    if(sprite_index == sprite_get("intro")){
    	if(image_index == 9 && !war_has_played_sound){
    		sound_play(sound_get("land"))
		    	Tduh_voice_sfx =  random_func(0,2,true)
    			 sound_play(Tduh_clip[Tduh_voice_sfx]);
    		war_has_played_sound = true;
    	}
    }
}