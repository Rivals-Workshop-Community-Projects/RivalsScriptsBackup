//update.gml

//reset variables after attack is finished
if(state !=  PS_ATTACK_GROUND && state !=  PS_ATTACK_AIR){
    k_grab_id = noone;
    k_can_combo = false;
}

//timer countdowns and variable resets
if(k_stun_timer){
    k_stun_timer--;
}

if(!free){
    dthrows = 0;
    uthrows = 0;
    fthrows = 0;
}

if(fade_timer){
    fade_timer -= fade_rate;
}
else{
    death_ring_gal = false;
}

if(adrenaline_timer){
    //buff animation
    if(state_timer%3 == 0){
        var xpos = x - 40 + random_func(state_timer%24, 80, false);
        var ypos = y - random_func(state_timer%23, 60, false);
        spawn_hit_fx(xpos, ypos, combo_buff_fx);
    }
    adrenaline_timer--;
    if(adrenaline_timer == 1){
        sound_play(asset_get("mfx_result_expand"));
    }
    knockback_adj = 1.25;
    air_max_speed = 8;
}
else{
    dam_mult = 0;
    knockback_adj = 1.05;
    air_max_speed = 5;
}

if(debuff_hit_lockout){
    debuff_hit_lockout--;
}

//update other player variables
with(oPlayer){
    if(variable_instance_exists(self, "k_poison_timer") && player != other.player){
        if(poison_applier == other.player){
            if(k_poison_anim){
                k_poison_anim++;
                if(k_poison_timer == 0){
                    k_poison_anim = k_poison_anim_speed*(k_poison_anim_start[k_poison_tier - 1] + k_poison_anim_loop);
                    k_poison_timer--;
                }
                if(state_cat != SC_HITSTUN){
                    k_poison_timer--;
                }
                if(k_poison_anim > (k_poison_anim_end[k_poison_tier - 1] * k_poison_anim_speed) - 1){
                    k_poison_anim = 0;
                }
            }
            if(k_ring_debuff){
                for(var i = 0; i < 3; ++i){
                    k_hit_motes[i, 0] = ++k_hit_motes[@i][@0] % hit_mote_speed;
                    if(k_hit_motes[i, 0] == 0){
                        k_hit_motes[i, 1] *= -1;
                        k_hit_motes[i, 0] = 0;
                    }
                }
                if(spawn_destroy_effect){
                    var h_posX = ease_quadInOut(x - 60 * k_hit_motes[k_ring_debuff_hits - 1, 1], x + 60 * k_hit_motes[k_ring_debuff_hits - 1, 1], 
                    k_hit_motes[k_ring_debuff_hits - 1, 0], hit_mote_speed);
                    with(other_player_id){
                        if(variable_instance_exists(self, "mote_destroy_fx")){
                            spawn_hit_fx(h_posX, other.y - other.char_height/2, mote_destroy_fx);
                        }
                    }
                    k_ring_debuff_hits--;
                    spawn_destroy_effect = false;
                }
            }
            else{
                k_show_debuff = false;
            }
            
            if(k_poison_lockout){
                k_poison_lockout--;
            }
            if(other.dissipate_flag && !other.deathring.consume){
                k_ring_debuff = max (other.minimum_ring, other.deathring.kb_store[player - 1] * other.ring_modifier);
                k_ring_debuff_hits = 3;
            }
            if(!k_ring_debuff_hits){
                k_ring_debuff = 0;
            }
        }
        if(state == PS_RESPAWN){
            k_mark_anim = 0;
            k_poison_timer = 0;
            k_ring_debuff = 0;
            other.ring_despawn();
        }
    }
}

//animation for combo effects and hud
if(k_combo){
    //hud animation
    k_combo_timer++;
    if(k_combo_anim_timer < k_combo_anim_windows[k_combo-1] * k_combo_anim_speed){
        k_combo_anim_timer++;
    }
    if(k_combo_timer >= k_combo_maxtime && !k_combo_perm){
        k_combo_anim_timer = 0;
        k_combo_timer = 0;
        k_combo = 0;
        k_finish_timer = 0;
    }
}
if(k_finish_timer){
    k_finish_timer++;
}

//one time event when death ring dissipates
if(dissipate_flag){
    saved_time = get_gameplay_time();
    dissipate_flag = false;
}

if(instance_exists(deathring)){
    mote_max_speed = 3.2 + deathring.store_level * 1;
}

//move ring motes
//mote format: [type, x, y, [speed vector x, speed vector y], player]
for(var i = 0; i < max_motes; ++i){
    if(mote_list[i] != 0){
        switch(mote_list[@i][@0]){
            case 1: //store
                //calculate speed vector towards center of ring and add to x, y coords of mote
                if(instance_exists(deathring)){
                    move_mote(i, deathring.x, deathring.y);
                }
                break;
                
            case 2: //charge
                //translate motes from charge ball to affected player
                posX = 0;
                posY = 0;
                p = mote_list[@i][@4];
                pID = 0;
                with(oPlayer){
                     if(player == other.p){
                         other.posX = x;
                         other.posY = y - 30;
                         other.pID = id;
                     }
                }
                mote_list[@i][@1] = ease_quadIn(floor(mote_list[@i][@3][0]), floor(posX), get_gameplay_time() - saved_time, 30);
                mote_list[@i][@2] = ease_quadIn(floor(mote_list[@i][@3][1]), floor(posY), get_gameplay_time() - saved_time, 30);
                
                var v = [posX - mote_list[@i][@1], posY - mote_list[@i][@2]];
                if(v[0] == 0) v[0] = 1;
                if(v[1] == 0) v[1] = 1;
                var hyp = sqrt(sqr(v[0]) + sqr(v[1])); 
                if(hyp < 30){
                    mote_list[i] = 0;
                    if(variable_instance_exists(pID, "k_ring_debuff") && pID.k_ring_debuff){
                        pID.k_show_debuff = true;
                    }
                    else{
                    }
                }
                break;
            case 3:
                spawn_hit_fx(mote_list[i, 1], mote_list[i, 2], mote_destroy_fx);
                mote_list[i] = 0;
            default: break;
        }
    }
}

#define move_mote(i, destX, destY){
    //get vector from mote to destination
    var v = [destX - mote_list[@i][@1], destY - mote_list[@i][@2]];
    if(v[0] == 0) v[0] = 1;
    if(v[1] == 0) v[1] = 1;
    var sq_v = [sqr(v[0]), sqr(v[1])];
    var hyp = sqrt(sq_v[0] + sq_v[1]); 
    var scal = mote_acc / hyp; //number to scale x and y of vector to get desired magnitude
    
    //add scaled vector to mote vector
    mote_list[@i][@3][@0] += v[0] * scal;
    mote_list[@i][@3][@1] += v[1] * scal;
    
    //find scalar for max speed vector and check mote speed vector is not too high
    scal = mote_max_speed / hyp;
    mote_list[@i][@3][@0] = sign(mote_list[@i][@3][@0]) * min(abs(mote_list[@i][@3][@0]), abs(v[0]*scal));
    mote_list[@i][@3][@1] = sign(mote_list[@i][@3][@1]) * min(abs(mote_list[@i][@3][@1]), abs(v[1]*scal));
    
    ////finally add mote speed vector to mote position
    mote_list[@i][@1] +=  mote_list[@i][@3][@0];
    mote_list[@i][@2] +=  mote_list[@i][@3][@1];
}

#define ring_despawn(){
    if(instance_exists(deathring) && !deathring.dissipate){
        for(var i = 0; i < max_motes; ++i){
            if(mote_list[i] != 0){
                mote_list[i, 0] = MOTE_DIE;
            }
        }
        deathring.transfer = true;
        deathring.consume = true;
    }
}