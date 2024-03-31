//article1_update.gml

anim_time = state_timer/anim_speed;

if(anim_time >= endframe){
    instance_destroy();
    exit;
}


if(gas_type != "norm" && gas_type != "uspec2b" && gas_type != "dspec"){
    //each window is a shorter version, this skips to next window if not interrupted
    for(var i = 0; i < array_length(anim_windows); i += 2){
        if(anim_time >= anim_windows[i] && anim_time <= anim_windows[i] + 1 && !interrupt){
            state_timer = endframe * anim_speed;
            anim_time = endframe;
            endframe = anim_windows[i + 1];
        }
    }
}



//check collision with enemy
with(pHurtBox){
    if(player != other.player && (!playerID.k_poison_lockout || other.tier != playerID.k_poison_tier) && 
    !instance_exists(other.player_id.deathring) && !playerID.k_ring_debuff && place_meeting(x, y, other)){
        playerID.k_poison_timer = other.player_id.poison_maxtime;
        playerID.k_max_poison_time = other.player_id.poison_maxtime;
        playerID.k_poison_tier = other.tier;
        playerID.k_poison_lockout = 200;
        playerID.k_poison_anim = 1;
        playerID.poison_applier = other.player;
        other.playsound = true;
    }
}

if(playsound){
    sound_play(sound_get("ignite"));  
    playsound = false;
}

//interrupt if hitting or jumping off wall
with(player_id){
    if((attack == AT_FSPECIAL && window >= 4) || (attack == AT_FSPECIAL_2 && window >= 2) ||
    (attack == AT_USPECIAL && window >= 4) || (attack == AT_USPECIAL_2 && window >= 2)){
        if(wall_jump_timer || (hsp == 0 && !hitpause)){
            other.interrupt = true;
	    }
    }
    if(state == PS_HITSTUN){
    	other.interrupt = true;
    }
}

image_index = floor(anim_time);
if(!player_id.hitpause){
	state_timer++
}
else if(player_id.state_cat == SC_HITSTUN){
	state_timer++;
}
