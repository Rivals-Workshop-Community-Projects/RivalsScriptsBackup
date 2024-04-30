// if(player_id.sludge_geyser_id != self && state != 99){
//     state = 99;
//     state_timer = 0;
// }

switch(state){
    case 0: // spawn state
    // if(state_timer > 0) ignores_walls = true;
    image_index = state_timer/4;
    if(state_timer >= 8){
        state = 1;
        state_timer = 0;
        ignores_walls = true;
    }
    break;
    case 1: // active sate
    player_id.move_cooldown[AT_FSPECIAL] = max(90, player_id.move_cooldown[AT_FSPECIAL]);
    image_index = 2 + (state_timer%15)/3;
    
    // if(state_timer%10 == 1) create_hitbox(AT_FSPECIAL, 1, x - 8, y - 110);
    
    if((state_timer > 4 && self_enhanced) || (state_timer > 2 && !self_enhanced)){
        var p_list = [];
        var runeM = has_rune("M");
        var runeN = has_rune("N");
        with(pHurtBox){
            if(playerID != other.player_id && get_player_team(playerID.player) != get_player_team(other.player_id.player)){
                if(place_meeting(x, y, other)) array_push(p_list, self);
            }
        }
        for(var i = 0; i < array_length(p_list); i++){
            var damaging = false;
            var person = p_list[@i].playerID;
            with(person){
                if(!super_armor && !soft_armor && !hitpause && !invincible && !attack_invince && !hurtboxID.dodging){
                    if runeN && state != PS_PRATFALL && state != PS_PRATLAND && (state_cat != SC_HITSTUN || (state_cat == SC_HITSTUN && vsp > 0)) {
                        set_state(PS_PRATFALL);
                        was_parried = true;
                    }
                    do_a_fast_fall = false;
                    can_fast_fall = false;
                    if(fast_falling){
                        fast_falling = false;
                        vsp = min(max_fall, vsp);
                    }
                    if(free && diseased_id != noone && abs(hsp) > 1){
                        hsp -= (air_accel/1.5)*(abs(hsp)/hsp);
                    }
                    if(vsp > -5){
                        if(state_cat == SC_HITSTUN){
                            vsp -= hitstun_grav + (vsp > 0 ? 0.1 : 0.05);
                        } else {
                            vsp -= gravity_speed + (vsp > 0 ? 0.1 : 0.05);
                        }
                    }
                }
                if(other.state_timer%10 == 3 && !hitpause && !invincible && !attack_invince && !hurtboxID.dodging){
                    take_damage(player, other.player_id.player, 1);
                    if(diseased_id == noone && sludge_amount < sludge_max){
                        sludged_id = other.player_id;
                        sludge_amount += 100 - runeM * 40;
                        sludge_decay_lockout = 200;
                    }
                    if(sludge_amount >= sludge_max){
                    	sludged_id = noone;
                    	sludge_amount = 0;
                    	diseased_id = other.player_id;
                    	diseased_timer = diseased_timer_max;
                    }
                    damaging = true;
                }
            }
            if(damaging){
                spawn_hit_fx(person.x, person.y - person.char_height/2, player_id.vfx_sludge_smallest);
                sound_play(asset_get("sfx_waterhit_medium"));
            }
        }
    } else if(state_timer == 1){
        if(self_enhanced){
            create_hitbox(AT_FSPECIAL, 1, x - 8, y - 110);
            if("destroyed_puddle" in self && instance_exists(destroyed_puddle)){
                create_hitbox(AT_FSPECIAL, 2, destroyed_puddle.x, destroyed_puddle.y - 32);
            }
        } else {
            create_hitbox(AT_FSPECIAL, 3, x - 8, y - 110);
        }
    }
    
    if(state_timer >= 150 || was_parried || (!position_meeting(x, y + 1, asset_get("par_block")) && !position_meeting(x, y + 1, asset_get("par_jumpthrough")))){
        state = 99;
        state_timer = 0;
    }
    
    break;
    case 99: // dies of cringe
    if(state_timer == 1) sound_volume(water_sound, 0, 12);
    image_index = 8 + state_timer/4;
    if(state_timer >= 12){
        sound_stop(water_sound);
        instance_destroy(self);
        exit;
    }
    break;
}

state_timer++;
total_lifetime++;