if (state == PS_SPAWN) {
    if (introTimer < 21 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if(state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP){
    sprite_index = asset_get("empty_sprite");
}

if(state == PS_FIRST_JUMP && superjump and image_index <=5){
    sprite_index = sprite_get("superjump");
}

if(sprite_index == sprite_get("jump")){
    if(image_index >= 4 and jump_frame == -1){
        jump_frame = 4;
    }
    if(jump_frame != -1){
        image_index = jump_frame;
    }
} else {
    jump_frame = -1
}

//Voice
{
if (voice_cooldown > 0) voice_cooldown--;
var random_voice;
if (!hitpause){
    if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
    	if (window_timer == 0 && voice_cooldown == 0 && 
    	((attack == AT_FTILT && window == 2)
         || (attack == AT_UTILT && window == 2)
         || (attack == AT_DAIR && window == 2)
         || (attack == AT_FAIR && window == 2)
         || (attack == AT_NAIR && window == 2))){
    			random_voice = random_func( 0, 10, true);
    			if (random_voice < 3){
    				voice_cooldown = 30;
    	    		sound_play(voice_attack[random_voice+1]);
    			} 
    		}
    	if (window_timer == 0 && voice_cooldown == 0 && 
    	((attack == AT_BAIR && window == 2)
         || (attack == AT_UAIR && window == 4)
         || (attack == AT_DTILT && window == 2)
         || (attack == AT_USPECIAL && window == 1))){
    			random_voice = random_func( 0, 8, true);
    			if (random_voice < 2){
    				voice_cooldown = 40;
    	    		sound_play(voice_attack_long[random_voice+1]);
    			} 
    		}
    	if(window_timer == 0 and 
    	((attack == AT_USTRONG and window == 2)
    	or (attack == AT_DSTRONG and window == 2)
    	|| (attack == AT_DSPECIAL && window == 1)
    	)){
    	    	random_voice = random_func( 0, 2, true);
    			if (random_voice < 2){
    				voice_cooldown = 60;
    	    		sound_play(voice_attack_long[random_voice+1]);
    			} 
    		}
    	if(window_timer == 0 and
    	((attack == AT_USTRONG and window == 1)
    	or (attack == AT_DSTRONG and window == 1)
    	|| (attack == AT_DSPECIAL_AIR && window == 1)
    	or (attack == AT_FSTRONG and window == 3)
    	|| (attack == AT_DATTACK && window == 1)
    	or (attack == AT_NSPECIAL && window == 1))){
    	    	random_voice = random_func( 0, 3, true);
    			if (random_voice < 3){
    				voice_cooldown = 20;
    	    		sound_play(voice_attack[random_voice+1]);
    			} 
    		}
    	if(window_timer == 0 and
    	((attack == AT_TAUNT and window == 1)
    	or (attack == AT_TAUNT and window == 2)
    	or (attack == AT_TAUNT and window == 3))){
    	    	sound_play(voice_taunt[1]);
    	    	voice_cooldown = 20
    		}
        }
        if(window_timer == 0 and
    	((attack == AT_TAUNT and window == 4)
    	//or (attack == AT_EXTRA_1 and window == 4)
    	)){
    	    	sound_play(voice_taunt[2]);
    	    	voice_cooldown = 20
    		}
        if(state_timer == 15 and (state == PS_AIR_DODGE)){
            voice_cooldown = 40
            sound_play(voice_fly[1])
        }
    }
}