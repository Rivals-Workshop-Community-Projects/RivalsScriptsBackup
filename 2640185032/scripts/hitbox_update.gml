switch(attack){
    
    case AT_NSPECIAL:
    case AT_FTILT:
        //rocc check
        if(hit_priority == 1) exit;
        
        if(freeze > 0){
            freeze--;
            hit_priority = 0;
            hsp = 0;
            vsp = 0;
            img_spd = 0;
            hitbox_timer--;
            transcendent = true;
            proj_break = 1;
            projectile_parry_stun = true;
            if(attack == AT_FTILT){
                player_id.ftilt_knife_cd = 2;
            }else{
                player_id.move_cooldown[attack] = 2;
            }
            if(freeze == 60){
                sound_play(sound_countdown);
            }
            //dair bounce
            /*with(pHitBox){
                with(other){
                    if(player_id == other.player_id && other.attack == AT_DAIR && player_id.has_hit == false && place_meeting(x, y, other)){
                        player_id.has_hit = true;
                        spawn_hit_fx(x, y, 301 );
                        with(player_id) sound_play(sound_get("sfx_knifehit_m"));
                        //destroyed = true;
                    }
                }
            }*/
            
            //uspec grab
            with(pHitBox){
                //forgive me for what i must do
                with(other){
                    if(player_id.uspec_can_grab && player_id.uspec_knives == 0 && player_id == other.player_id && other.attack == AT_USPECIAL && other.type == 1 && player_id.has_hit == false && place_meeting(x, y, other)){
                        spawn_hit_fx(x, y, 301 );
                        with(player_id){ 
                            sound_play(sound_get("sfx_knifehit_m"));
                            hitpause = true;
                            hitstop = 10;
                        }
                        //im dyin
                        with(pHitBox){
                            if("freeze" in self && player_id == other.player_id && attack == other.attack && freeze > 0){
                                player_id.uspec_knives++;
                                destroyed = true;
                            }
                        }
                    }
                }
            }
            
            
        }else if(timer > 0){
            focus = false;
            timer--;
            hit_priority = 0;
            hsp = 0;
            vsp = 0;
            img_spd = 0;
            hitbox_timer--;
            transcendent = false;
            proj_break = 0;
        }else if(timer == 0){
            focus = false;
            timer--;
            hit_priority = 2;
            hsp = orig_hsp;
            vsp = orig_vsp;
            img_speed = .25
            transcendent = false;
            proj_break = 0;
            sound_play(sound_whoosh);
        }
        
        if(!free && hit_priority == 2) destroyed = true;
        break;
        
    case AT_USPECIAL:
        if(freeze > 0){
            freeze--;
            hit_priority = 0;
            hsp = 0;
            vsp = 0;
            img_spd = 0;
            hitbox_timer--;
            transcendent = true;
            proj_break = 1;
            projectile_parry_stun = true;
            player_id.move_cooldown[AT_NSPECIAL] = 2;
            if(freeze == 60){
                sound_play(sound_countdown);
            }
        }else if(timer > 0){
            focus = false;
            timer--;
            hit_priority = 0;
            hsp = 0;
            vsp = 0;
            img_spd = 0;
            hitbox_timer--;
            transcendent = false;
            proj_break = 0;
        }else if(timer == 0){
            focus = false;
            timer--;
            hit_priority = 2;
            hsp = orig_hsp;
            vsp = orig_vsp;
            img_speed = .25
            transcendent = false;
            proj_break = 0;
            sound_play(sound_whoosh);
        }
        
        if(!free && hit_priority == 2) destroyed = true;
        break;
}