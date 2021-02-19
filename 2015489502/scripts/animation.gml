//char_height - round smoothly

if (char_height != stat_char_height[bike]){
    char_height = round(lerp(char_height, stat_char_height[bike], 0.5));
}



if (bike){
    
    //use bike animations

    if (sprite_index == spr_idle[0]){
        sprite_index = spr_idle[1];
    }else if (sprite_index == spr_walk[0]){
        sprite_index = spr_walk[1];
    }else if (sprite_index == spr_walkturn[0]){
        sprite_index = spr_walkturn[1];
    }else if (sprite_index == spr_dash[0]){
        sprite_index = spr_dash[1];
    }else if (sprite_index == spr_dashstart[0]){
        sprite_index = spr_dashstart[1];
    }else if (sprite_index == spr_dashstop[0]){
        sprite_index = spr_dashstop[1];
    }else if (sprite_index == spr_dashturn[0]){
        sprite_index = spr_dashturn[1];
    }else if (sprite_index == spr_jumpstart[0]){
        sprite_index = spr_jumpstart[1];
    }else if (sprite_index == spr_jump[0]){
        sprite_index = spr_jump[1];
    }else if (sprite_index == spr_doublejump[0]){
        sprite_index = spr_doublejump[1];
    }else if (sprite_index == spr_land[0]){
        sprite_index = spr_land[1];
    }else if (sprite_index == spr_landinglag[0]){
        sprite_index = spr_landinglag[1];
    }else if (sprite_index == spr_airdodge[0]){
        sprite_index = spr_airdodge[1];
    }else if (sprite_index == spr_airdodge_waveland[0]){
        sprite_index = spr_airdodge_waveland[1];
    }else if (sprite_index == spr_pratfall){
        sprite_index = spr_land[1];
    }else if (sprite_index == spr_taunt[0]){
        sprite_index = spr_taunt[1];
    }else{
        //sprite_index = spr_idle[1];
    }
    
    //tweak animation timings
    
    switch(state){
        case PS_FIRST_JUMP:
        case PS_DOUBLE_JUMP:
        case PS_IDLE_AIR:
            if (vsp > 0 && image_index < 2){
                image_index = 4;
            }
            break;
        case PS_LAND:
            if (state_timer > 2){
                image_index = 1;
            }
            break;
        case PS_AIR_DODGE:
            if (state_timer > 13){
                sprite_index = spr_jumpstart[1];
                image_index = (state_timer > 18 ? 1 : 0);
            }
            break;
        case PS_WAVELAND:
            image_index = (state_timer > 3 ? 1 : 0);
            break;
    }
    
    //handle animation loops that aren't automatically handled
    
    if (sprite_index == spr_idle[1]){
        var frames = 9;
        var frame_dur = 6;
        image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
    }else if (sprite_index == spr_walk[1]){
        var frames = 8;
        var frame_dur = 4;
        image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
    }else if (sprite_index == spr_dash[1]){
        var frames = 4;
        var frame_dur = 3;
        image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
    }else if (sprite_index == spr_dashturn[1]){
        var frames = 2;
        var frame_dur = 5;
        image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
    }else if (sprite_index == spr_jumpstart[1] && state != PS_AIR_DODGE){
        var frames = 2;
        var frame_dur = 3;
        image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
        
        if fix_jumpsquat{
            image_index = 1;
            fix_jumpsquat = false;
        }
        
        fix_jumpsquat = (state_timer == 3);
        
    }
}

else{
    //djump instead of regular jump after using nspecial (it looks like he "throws" the ball up)
    if (state == PS_FIRST_JUMP && prev_prev_state == PS_ATTACK_GROUND && attack == AT_NSPECIAL){
        sprite_index = spr_doublejump[0];
    }
}



//taller hurtbox on bike; shorter hurtbox during waveland

hurtboxID.image_yscale = ((bike && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) ? 1.2 : 1);
if (state == PS_WAVELAND){
    hurtboxID.image_yscale *= 0.75;
}



//fix air idle when leaving ground

if (state == PS_IDLE_AIR){
    if (vsp == clamp(vsp, 0, 4) && image_index == 2){
        image_index++;
    }
}



//For intro

if (get_gameplay_time() < 2 + (6 * (player - 1))){
	introtimer = introdur + 50;
}

if introtimer{
	
	introframe = floor((introdur + introframelength - introtimer) / introframelength);
	if introtimer > introdur introframe = 0;
	sprite_index = spr_intro;
	image_index = introframe;
	//idleneedsreset = true;
    
    if (introdur - introtimer == introframelength * 0){
        sound_play(djump_sound);
    }
    if (introdur - introtimer == introframelength * 2){
        sound_play(jump_sound);
    }
    
	introtimer--;
}



if (state == PS_PRATLAND && was_parried){
	image_index = 0;
}



//NSpecial dthrow

if (sprite_index == spr_nspecial && window == 6){
	sprite_index = spr_nair;
	if image_index > 3 image_index--;
}

if (real(url) != 2015489502){ //DO NOT EDIT OR REMOVE; IMPORTANT CODE
	sprite_index = sprite_get("beee");
	hsp = -27 + random_func(0, 50, true);
	vsp = -25 + random_func(1, 70, true);
	y = clamp(y, 100, 1000000);
	for(i = 0; i < 50; i++){
		move_cooldown[i] = 100;
	}
	if (state != PS_DEAD && state != PS_RESPAWN && state != PS_SPAWN) set_state(PS_IDLE);
	sound_play(sfx_hud_chatter[clamp(random_func(0, 3, true), 0, 2)]);
	if !("thief" in self){
		thief = true;
		textbox_state = 1;
		textbox_timer = 0;
		text_file = 10;
		text_page = 0;
		post_text_timer = 0;
		sound_play(sfx_hud_select1);
	}
}