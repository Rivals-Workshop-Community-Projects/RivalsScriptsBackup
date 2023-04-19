//update

//Image Mask
if(get_gameplay_time() > 100){
    if(!start_predraw){
    start_predraw = true;
    }
}

switch (state){
    case PS_FIRST_JUMP:
        if state_timer == 1 && !hitpause
            sound_play(sound_get("smb_jump"));
            if(voice_enabled == true){
    				snd_rng = random_func(0, 3, true);
    				if (snd_rng == 0) {
    				voice_id = "jump";
        			voice_volume = 2;
        			if state_timer == 1
        			    voice_play();
    				}
    				else if (snd_rng == 1) {
    				voice_id = "jump2";
        			voice_volume = 2;
        			if state_timer == 1
        			    voice_play();
    				}
    				else if (snd_rng == 2) {
    				voice_id = "jump4";
        			voice_volume = 2;
        			if state_timer == 1
        			    voice_play();
    				}

    		}
    break;
    
    case PS_DOUBLE_JUMP:
        if state_timer == 0 && !hitpause{
            sound_play(sound_get("smb_jump_higher"), 0, noone, 1, 1.25);
            sound_stop( sound_get("smb_jump"));
                        if(voice_enabled == true){
                            sound_stop( sound_get("voc_jump"));    
                            sound_stop( sound_get("voc_jump2"));    
                            sound_stop( sound_get("voc_jump4"));    
                                    
    				        snd_rng = random_func(0, 4, true);
    				        if (snd_rng == 0) {
    				        voice_id = "jumpdouble";
        			        voice_volume = 2;
        			        if state_timer == 0
        			            voice_play();
    				        }
    				        else if (snd_rng == 1) {
    				        voice_id = "jumpdouble2";
        			        voice_volume = 2;
        			        if state_timer == 0
        			            voice_play();
    				        
    				}

    		}
        }
    break;
    
    //case PS_WALL_JUMP:
    //    if state_timer == 0{
    //        sound_play(sound_get("smb_jump_higher"), 0, noone, 1, 1.1);
    //        sound_stop( sound_get("smb_jump"));
    //    }
}

fireballs_out = 0;

if fireballs_out>=2 {
    move_cooldown[AT_NSPECIAL] = 999;
    move_cooldown[AT_NSPECIAL_AIR] = 999;
}
else {
    move_cooldown[AT_NSPECIAL] = 0;
    move_cooldown[AT_NSPECIAL_AIR] = 0;
}

//fspecial and dair reset
if !free || state == SC_HITSTUN || state == PS_WALL_JUMP || state = PS_HITSTUN_LAND
|| state = PS_TUMBLE || state = PS_PRATFALL|| state = PS_PRATLAND{
    move_cooldown[AT_FSPECIAL_AIR] = 0;
    move_cooldown[AT_DAIR] = 0;
}

if !free || state == SC_HITSTUN || state = PS_HITSTUN_LAND
|| state = PS_TUMBLE || state = PS_PRATFALL|| state = PS_PRATLAND{
    bonked = false;
}

if (state = PS_IDLE && airtransitionwindow != 0) {
    set_attack( AT_NSPECIAL )
    window = airtransitionwindow
    airtransitionwindow = 0
    window_timer = airtransitiontimer
    airtransitiontimer = 0
}

if(attack == AT_DSPECIAL){
    if get_gameplay_time() % 8 == 0 {
        switch (window){
        case 2:
            if aerialdspec {
                after_image_timer++;
                if(after_image_timer == 10) after_image_timer = 0;
                after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y - 4, spr_dir:spr_dir, alpha:8, spr_angle:0, xscale:1, yscale:1};
            }
        break;
        
        case 8:
            if (window_timer > 14) {
                after_image_timer++;
                if(after_image_timer == 10) after_image_timer = 0;
                after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y - 4, spr_dir:spr_dir, alpha:8, spr_angle:0, xscale:1, yscale:1};
            }
        }
    }
    if get_gameplay_time() % 3 == 0 {
        switch (window){
        case 11:
            after_image_timer++;
            if(after_image_timer == 10) after_image_timer = 0;
            after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y - 4, spr_dir:spr_dir, alpha:8, spr_angle:0, xscale:1, yscale:1};
        }
    }
}

//fade handler
for (var i = 0; i < 10; i++){
   if(after_image[i] != -1 && get_gameplay_time() % 2 == 0){
       after_image[i].alpha--;
       if(after_image[i].alpha == 0){
           after_image[i] = -1;
       }
   } 
}

#define voice_play()
voice_playing_sound = sound_play(sound_get("voc_" + voice_id), false, noone, voice_volume);