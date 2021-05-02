//Intro anim

if (state == PS_SPAWN && false){
    var frame_dur = 6;
    var amt_frames = 14;
    var dur = frame_dur * amt_frames;
    var delay = 10;
    var s_t = state_timer - delay + player * 5;
    
    visible = s_t >= frame_dur;
    
    if (s_t < dur){
        sprite_index = sprite_get("intro");
        image_index = max(lerp(-1, amt_frames, s_t / dur), 0);
    }
    else if (s_t == dur){
        image_index = 0;
    }
    
    bike = (s_t < frame_dur * 7);
    
    if (s_t == 1) sound_play(sfx_rev[0]);
}

//125



//char_height - round smoothly

if (char_height != stat_char_height[bike]){
    char_height = round(lerp(char_height, stat_char_height[bike], 0.5));
}



//Make it so wheels don't clip the ground

if (bike && state == PS_FIRST_JUMP && state_timer == 1){
    y -= 4;
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
    }else if (sprite_index == spr_walljump[0] && image_index > 1){
        sprite_index = spr_jump[1];
        image_index -= 2;
    }else if (sprite_index == spr_pratfall[0]){
        sprite_index = spr_pratfall[1];
    }else if (sprite_index == sprite_get("phone_open")){
        sprite_index = spr_idle[1];
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
    }
    // else if (sprite_index == spr_jumpstart[1] && state != PS_AIR_DODGE){
    //     var frames = 2;
    //     var frame_dur = 3;
    //     image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
        
    //     if fix_jumpsquat{
    //         image_index = 1;
    //         fix_jumpsquat = false;
    //     }
        
    //     fix_jumpsquat = (state_timer == 3);
        
    // }
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



if (state == PS_PRATLAND && was_parried){
	image_index = 0;
}