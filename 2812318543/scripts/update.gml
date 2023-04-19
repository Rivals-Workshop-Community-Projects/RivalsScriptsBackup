//spawn pandoria
if(pandoria == noone){
    init_shader();
    var x_spawn;
    for(var m = x-(75*spr_dir); m != 0; m += (15 * spr_dir)){
        if(place_meeting(m, get_stage_data(SD_Y_POS) + 5, asset_get("par_block"))){
            x_spawn = m;
            break;
        }
    }
    pandoria = instance_create(m+(15*spr_dir), get_stage_data(SD_Y_POS), "obj_article1");
    pandoria.spr_dir = spr_dir;
    pandoria.can_tap_jump = can_tap_jump();
    
    set_victory_portrait(sprite_get("zportrait_alts"));
    sprite_change_offset("zportrait_alts", 0, 350 * get_player_color(player));
    set_victory_sidebar( sprite_get("zresult_alts"));
    sprite_change_offset("zresult_alts", 0, 350 * get_player_color(player));
    
    if(va_enabled){
        va_type = 0;
        user_event(0);
    }
}

if(prev_state == PS_ATTACK_AIR && free && attack == AT_NSPECIAL && nspec_fresh){
    nspec_fresh = false;
}
if(!free){
    nspec_fresh = true;
}

//AFFINITY MOVEMENT BUFF
var in_max_affinity = (pandoria.affinity_level == 2 && in_affinity);

initial_dash_speed = aff_init_dash_speed[in_max_affinity];
dash_speed = aff_dash_speed[in_max_affinity];
walk_speed = aff_walk_speed[in_max_affinity];
max_jump_hsp = aff_max_jump_hsp[in_max_affinity];
air_max_speed = aff_air_speed[in_max_affinity];
air_accel = aff_air_accel[in_max_affinity];
airdodge_speed = aff_airdodge_speed[in_max_affinity];



//sword throw logic
for(var k = 0; k < 2; k++){
    if(dspec_sword_handler[k] != -1){
        if(dspec_sword_handler[k].lifetime % dspec_sword_handler[k].anim_timer == 0){
            dspec_sword_handler[k].anim_frame++;
        }
        dspec_sword_handler[k].lifetime++;
        dspec_sword_handler[k].y -= dspec_sword_handler[k].type * 8;
        if(dspec_sword_handler[k].lifetime >= dspec_sword_handler[k].lifemax){
            //spawn returning sword
            if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL && dspec_sword_handler[k].type == 1){
                var target = (dspec_sword_handler[k].from == 0? pandoria : self)
                dspec_sword_handler[1] = {from:dspec_sword_handler[k].from, type:-1, x:target.x, y:target.y-174, 
                    spr_dir:target.spr_dir, anim_frame:0, anim_timer:2, lifetime:1, lifemax:12};
            }
            
            dspec_sword_handler[k] = -1;
        }
    }
}


if((state == PS_AIR_DODGE) && (state_timer == 2) && (abs(hsp) > 3 || abs(vsp) > 3)){
    var dodgeflash = spawn_hit_fx( x, y - (char_height/2), vfx_dirflash );
    dodgeflash.draw_angle = point_direction(0, 0, hsp * spr_dir, vsp * spr_dir);
    
}else if((state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD) && (state_timer == 3)){
    var dodgeflash = spawn_hit_fx( x, y - (char_height/2), vfx_dirflash );
    dodgeflash.draw_angle = point_direction(0, 0, hsp * spr_dir, vsp * spr_dir);
}


//afterimage instance
if(pandoria.affinity_level == 2  && in_affinity && !hitpause && get_gameplay_time() % 8 == 0 && !hitpause){
    after_image_timer++;
    if(after_image_timer == 10) after_image_timer = 0;
    after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y, spr_dir:spr_dir, alpha:8};
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



//vfx
with hit_fx_obj if player_id == other {
    if hit_fx == other.hfx_elecbig || hit_fx == other.vfx_cancelring || hit_fx == other.hfx_spark_hit ||
    hit_fx == other.vfx_kanji || hit_fx == other.vfx_nblast || hit_fx == other.vfx_ublast {
        depth = player_id.depth-5;
    }
}


//pandoria----------------------------------------------------------------------
with(pandoria){
    //player within total affinity radius?
    if(state != 0 && other.hurtboxID == collision_circle(x, y - 35, affinity_radius[affinity_level], other.hurtboxID, true, false)){
        other.in_affinity = true;
        other.affinity_countdown = 30;
    }else{
        other.in_affinity = false;
        other.affinity_countdown--;
    }
    //close on X axis?
    if(abs(x - player_id.x) < (affinity_radius[affinity_level] * 0.6)){
        player_near_x = true;
    }else{
        player_near_x = false;
    }
    //close on Y axis?
    if(abs(y - player_id.y) < (affinity_radius[affinity_level] * 0.6)){
        player_near_y = true;
    }else{
        player_near_y = false;
    }
    
    //MOVEMENT
    if(pandy_control){
        player_id.depth = -6;
        player_id.force_depth = true;
        switch(state){
            
            //idle
            case 1:
                //dashstart
                if(player_id.left_hard_pressed xor player_id.right_hard_pressed){
                    spr_dir = (player_id.right_hard_pressed - player_id.left_hard_pressed);
                    state = 2; //dashstart
                    state_timer = 0;
                }
                //walk
                else if(player_id.left_down xor player_id.right_down){
                    if(player_id.right_down - player_id.left_down == spr_dir){
                        state = 6; //walk
                        state_timer = 0;
                    }else{
                        state = 7; //walkturn
                        state_timer = 0;
                    }
                }
                //crouch
                else if(player_id.down_down){
                    state = 17;
                    state_timer = 0;
                }
                break;
            
            //dashstart
            case 2:
                //dashdance
                if(state_timer > 1 && (player_id.left_pressed || player_id.right_pressed) && (player_id.right_pressed - player_id.left_pressed == spr_dir * -1)){
                    spr_dir = (player_id.right_pressed - player_id.left_pressed);
                    state = 2; //dashstart
                    state_timer = 0;
                }
                //stop
                if(state_timer == player_id.initial_dash_time && ((player_id.right_down - player_id.left_down) == 0 && (!player_id.right_down && !player_id.left_down))){
                    state = 1;
                    state_timer = 0;
                }
                //normal dash
                else if(state_timer == player_id.initial_dash_time){
                    if(spr_dir == 1 && player_id.right_down){
                        state = 3;
                        state_timer = 0;
                    }else if(spr_dir == -1 && player_id.left_down){
                        state = 3;
                        state_timer = 0;
                    }
                }
                break;
                
            //dash
            case 3:
                //turn
                if((player_id.right_down - player_id.left_down) == spr_dir * -1){
                    state = 5;
                    state_timer = 0;
                }
                //stop
                if((player_id.right_down - player_id.left_down) == 0 && (!player_id.right_down && !player_id.left_down)){
                    state = 4;
                    state_timer = 0;
                }
                //crouch
                if(player_id.down_down){
                    state = 17;
                    state_timer = 0;
                }
                break;
            
            //dashturn
            case 5:
                //dash
                if(state_timer >= 8 && (player_id.left_hard_pressed xor player_id.right_hard_pressed)){
                    spr_dir = (player_id.right_hard_pressed - player_id.left_hard_pressed);
                    state = 2; //dashstart
                    state_timer = 0;
                }
                //idle
                else if(state_timer >= 8){
                    state = 1;
                    state_timer = 0;
                }
                break;
            
            //walk
            case 6:
                //dashstart
                if(player_id.left_hard_pressed xor player_id.right_hard_pressed){
                    spr_dir = (player_id.right_hard_pressed - player_id.left_hard_pressed);
                    state = 2; //dashstart
                    state_timer = 0;
                }
                //walk
                else if(player_id.right_down - player_id.left_down != spr_dir){
                    if(player_id.right_down - player_id.left_down == spr_dir * -1){
                        state = 7; //walkturn
                        state_timer = 0;
                    }else{
                        state = 1; //stop
                        state_timer = 0;
                    }
                }
                break;
            
            //jump
            case 14:
                if(vsp > 0 && player_id.down_pressed){
                    fastfall = true;
                    vsp = player_id.fast_fall;
                }
                if(has_djump && (player_id.jump_pressed || (player_id.tap_jump_pressed && can_tap_jump))){
                    state = 14;
                    state_timer = 0;
                    vsp = -player_id.djump_speed + 0.5;
                    has_djump = false;
                    clear_button_buffer(PC_JUMP_PRESSED);
                    if((player_id.right_hard_pressed - player_id.left_hard_pressed) == sign(hsp) * -1) hsp = 3 * (sign(hsp) * -1);
                }
                fall_through = player_id.down_down;
                ignores_walls = fall_through;
            	if(fall_through && place_meeting(x, y + vsp, asset_get("par_block"))){
                    fall_through = false;
                    ignores_walls = false;
                }
            	break;
            
            //crouch
            case 17:
                if(player_id.down_down && state_timer > 3 && state_timer < 6){
                    state_timer = 4;
                }
                break;
                
        }
        
        if(free) hsp += player_id.air_accel * (player_id.right_down - player_id.left_down);
        //jump
        if(state <= 7 || state == 17){
            if(!free && (player_id.jump_pressed || (player_id.tap_jump_pressed && can_tap_jump))){
                state = 13;
                state_timer = 0;
                clear_button_buffer(PC_JUMP_PRESSED);
            }
            //dropthrough
            if(!free && player_id.down_hard_pressed && !place_meeting(x, y + 5, asset_get("par_block"))){
                y += 5;
                state = 14;
                state_timer = 0;
            }
        }
        //attacks
        if(can_attack){
            var atk_input = (player_id.special_pressed || player_id.attack_pressed);
            //dspecial switch back
            if(((atk_input && player_id.down_down) || player_id.down_strong_pressed) && player_id.window > 2){
                fall_through = false;
                state = 12;
                state_timer = 0;
                window_timer = 0;
                //other.dspec_sword_handler[1] = {type:-1, x:player_id.x, y:player_id.y-206, spr_dir:player_id.spr_dir, anim_frame:0, anim_timer:3, lifetime:1, lifemax:19};
                //with(other) sound_play(asset_get("sfx_clairen_swing_weak"));
            }
            //uspec lightning force
            else if(((atk_input && player_id.up_down) || player_id.up_strong_pressed) && player_id.window > 2){
                if (player_id.right_down xor player_id.left_down) spr_dir = (player_id.right_down - player_id.left_down);
                state = 10;
                state_timer = 0;
                window_timer = 0;
                has_djump = true;
                if(other.va_enabled > 0){
                    with(other){
                        if(va_cd <= 0 && random_func(0, 1, false) > (1 - va_freq_spec)){
        					va_type = 18;
        			        user_event(0);
        			    }
                    }
                }
            }
            //fspec electric circus
            else if(((atk_input && (player_id.left_down xor player_id.right_down)) || (player_id.left_strong_pressed xor player_id.right_strong_pressed)) && player_id.window > 2){
                if(player_id.left_strong_pressed xor player_id.right_strong_pressed){
                    spr_dir = (player_id.right_strong_pressed - player_id.left_strong_pressed);
                }else{
                    spr_dir = (player_id.right_down - player_id.left_down);
                }
                state = 9;
                state_timer = 0;
                window_timer = 0;
                if(other.va_enabled > 0){
                    with(other){
                        if(va_cd <= 0 && random_func(0, 1, false) > (1 - va_freq_spec)){
        					va_type = 17;
        			        user_event(0);
        			    }
                    }
                }
            }
            //nspec thunder doom
            else if(atk_input && player_id.window > 2){
                if (player_id.right_down xor player_id.left_down) spr_dir = (player_id.right_down - player_id.left_down);
                state = 8;
                state_timer = 0;
                window_timer = 0;
                if(other.va_enabled > 0){
                    with(other){
                        if(va_cd <= 0 && random_func(0, 1, false) > (1 - va_freq_spec)){
        					va_type = 16;
        			        user_event(0);
        			    }
                    }
                }
            }
        }
    }
}
//------------------------------------------------------------------------------


//affinity loss/gain
if(in_affinity){
    if(get_gameplay_time() % 40 == 0) pandoria.affinity++;
}else{
    if(move_cooldown[AT_DSPECIAL] < 2) move_cooldown[AT_DSPECIAL] = 2;
    if(affinity_countdown == 0){
        if(get_gameplay_time() % 60 == 0) pandoria.affinity--;
        affinity_countdown++;
    }
}

//affinity test in practice mode
if(get_match_setting( SET_PRACTICE )){
    if(taunt_down && up_down){
        pandoria.affinity += 2;
    }else if(taunt_down && down_down){
        pandoria.affinity -= 2;
    }
}

pandoria.affinity = clamp(pandoria.affinity, 0, pandoria.affinity_max);

//voice lines
if(va_enabled){
    if(va_cd > 0){
        va_cd--;
    }
}