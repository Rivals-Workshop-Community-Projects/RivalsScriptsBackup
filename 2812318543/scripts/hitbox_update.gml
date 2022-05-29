switch(attack){
    
    case AT_NSPECIAL_2:
        if(hbox_num == 1){
            
            if(THERE != 0){
                with(player_id){
                    var next = create_hitbox(AT_NSPECIAL_2, 2, other.x, other.y);
                    next.player = other.player;
                    next.can_hit_self = other.was_parried;
                    next.spr_dir = other.THERE;
                }
                destroy_fx = 1;
                destroyed = true;
                THERE = 0;
                phase = 4;
            }
            //anim timing
            if(get_gameplay_time() % 4 == 0 && !in_hitpause){
                frame++;
                if(phase == 1 && frame > 5) frame = 0;
                if(phase == 3 && frame > 11) frame = 10;
            }
            
            if(onhit_timer > 0){
                onhit_timer--;
            }
            
            //targetting
            if(phase < 3){
                hitstun_track = (targ_player.state == PS_HITSTUN);
                targ_x = lerp(targ_x, (hitstun_track? (targ_player.x + targ_player.hsp*4) : targ_player.x), (hitstun_track? 0.5 : 0.2));
                targ_y = lerp(targ_y, (hitstun_track? ((targ_player.y - 20) + targ_player.vsp*4) : targ_player.y - 20), (hitstun_track? 0.5 : 0.2));
                var dir = point_direction(x, y, targ_x, targ_y);
                var diff = angle_difference(dir, targ_angle);
                targ_angle += diff * (hitstun_track? 0.5 : 0.2);
                targ_dist = point_distance(x, y, targ_x, targ_y);
            }
            
            if(phase == 1){
                if(hitbox_timer % 30 == 0){
                    sound_play(asset_get("sfx_absa_singlezap1"), false, noone, 0.6, 1);
                    spawn_hit_fx( x, y, vfx_npulse);
                }
                if(vsp < 0) vsp += 1;
                
                if(hitbox_timer >= 180){
                    phase = 2;
                    frame = 0;
                }
            }else if(phase == 2){
                if(hitbox_timer % 10 == 0){
                    sound_play(asset_get("sfx_absa_singlezap1"), false, noone, 1.0, 1.1);
                    spawn_hit_fx( x, y, vfx_npulse);
                    
                    if(hitbox_timer >= 220){
                        with(player_id) sound_play(sound_get("sfx_slash_m"), false, noone, 1.0, 0.9);
                        phase = 3;
                        proj_break = true;
                        hit_priority = 1;
                        hsp = lengthdir_x(max(abs(hitstun_track? ((targ_dist)/10) : ((targ_dist)/15)), 16), targ_angle);
                        vsp = lengthdir_y(max(abs(hitstun_track? ((targ_dist)/10) : ((targ_dist)/15)), 16), targ_angle);
                    }
                }
            }else if(phase == 3){
                if(collision_circle(x, y, 40, asset_get("par_block"), false, true) || destroyed || was_parried || onhit_timer == 0){
                    sound_play(asset_get("sfx_absa_kickhit"));
                    spawn_hit_fx( x, y, vfx_nblast);
                    THERE = sign(hsp);
                    hsp = 0;
                    vsp = 0;
                }
            }
            
        }
        break;
    
    
    
    
    case AT_FSPECIAL_2:
        if(hbox_num == 1){
            
            //anim timing
            if(get_gameplay_time() % 4 == 0){
                frame++;
                if(frame > 1) frame = 0;
            }
            if((hitbox_timer-1) % 15 == 0){
                sound_play(asset_get("sfx_ori_stomp_spin"));
            }
        	
        	//motion
            if(phase == 1 && hitbox_timer >= 19){
                phase = 2;
            }else if(phase == 2){
                hsp += -2 * spr_dir;
                if(hsp >= 15 || hsp <= -15) phase = 3;
            }
            
            //hits
            if(phase < 3 && hitbox_timer % 5 == 0){
                with(player_id){
                    var next = create_hitbox(AT_FSPECIAL_2, 2, other.x, other.y);
                    next.hsp = other.hsp;
                    next.spr_dir = other.spr_dir;
                    next.player = other.player;
                    next.can_hit_self = other.was_parried;
                }
            }else if(phase == 3){
                with(player_id){
                    var next = create_hitbox(AT_FSPECIAL_2, 3, other.x, other.y);
                    next.hsp = other.hsp;
                    next.spr_dir = other.spr_dir;
                    next.player = other.player;
                    next.can_hit_self = other.was_parried;
                }
                phase = 4;
            }
            
            if(destroyed || hitbox_timer == length - 1){
                var vfx = spawn_hit_fx( x, y, vfx_fspecdis);
                vfx.spr_dir = spr_dir;
                vfx.hsp = hsp / 3;
            }
            
        }
        break;
    
    case AT_USPECIAL_2:
        if(hbox_num == 1){
            if(place_meeting(x, y + 10, asset_get("par_block"))){
                destroyed = true;
            }
            
            if(hitbox_timer % 2 == 0){
                spawn_hit_fx(x, y, player_id.vfx_uspecbolt);
            }
            //thunder
            with(asset_get("obj_article1")){
                if(player_id == other.player_id && "pandy_control" in self && state == 10 && other.was_parried == false && place_meeting(x, y -70, other)){
                    caught_uspec = true;
                    image_index = 5;
                    window_timer = 0;
                    uspec_vfx = spawn_hit_fx(x, y - 80, player_id.vfx_ublast);
                    other.destroy_fx = 1;
                    other.destroyed = true;
                    
                }
            }
        }
        break;
    
}