// got_hit is a script that is called when you get hit.
var hb = enemy_hitboxID;
var hit_pid = hit_player_obj;

// refresh fspec
fspec_used = false;

// give back memory
if array_length(grabbed) > 0 { grabbed = []; }

// soft counter
if state = clamp(state, 5, 6) {
    if attack == AT_DSPECIAL && window == 2 && hb.type = 1 {
        if orig_knock < 11 { // i don't think you can compare against soft_armor directly because of port priority
            dspec_countered = true;
            
            invincible = true;
            invince_timer = 2;
            
            djumps = 0;
            has_airdodge = true;
            
            //hitstop += 5;
            //hitstop_full += 5;
            //hitpause = true;
            hit_pid.hitstop += 10;
            hit_pid.hitstop_full += 10;
            hit_pid.hitpause = true;
            
            force_depth = true;
            depth = -6;
            
            spawn_hit_fx(x, y - 10, 306)
            
            sound_play(asset_get("sfx_shovel_hit_heavy1"));
            sound_play(asset_get("mfx_wave_complete"));
        }
    }
}



// just in case
if nspec_sound != noone {
    sound_stop(nspec_sound)
    nspec_sound = noone;
}