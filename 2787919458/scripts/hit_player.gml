if get_player_damage(hit_player_obj.player) == 69 + my_hitboxID.damage{
    sound_play(sound_get("nice"));
}
if("should_make_shockwave" in hit_player_obj && hit_player_obj.should_make_shockwave && !trigger_warning && get_player_damage(hit_player_obj.player) >= 69 + my_hitboxID.damage){
    killcam_timer = 80;
    sound_play(sound_get("killcam"))
}
if(my_hitboxID.attack == AT_BAIR){
    if(my_hitboxID.hbox_num == 1 && !instance_exists(grab_target) && hit_player_obj.hitstun > 0){
        set_attack_value(AT_BAIR,AG_CATEGORY,2)
        destroy_hitboxes();
        window = 4;
        window_timer = 0;
        grab_target = hit_player_obj;
        sound_play(sound_get("succ"))
    }
}
if(my_hitboxID.attack == AT_NSPECIAL){
    if(my_hitboxID.hbox_num == 1){
        my_hitboxID.hsp = -my_hitboxID.hsp;my_hitboxID.spr_dir = -my_hitboxID.spr_dir;
        if(my_hitboxID.vsp > 0){
            my_hitboxID.vsp = -my_hitboxID.vsp;
        }
        my_hitboxID.hitbox_timer = 0;
        my_hitboxID.dorito_hp-=1;
        sound_play(asset_get("sfx_leafy_hit3"))sound_play(asset_get("sfx_leafy_hit1"))
    }
}
if(my_hitboxID.attack == AT_DSPECIAL){
    if(my_hitboxID.hbox_num == 1){
        sound_play(sound_get("hit_marker"));
        var fx = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-30,fx_marker)fx.depth = depth -4;
        var fx2 = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-30,304)fx2.pause = 8.58   
        if(dspecial_hits == 2){
            sound_play(sound_get("triple"))
            dspecial_hits = 0;
        }else{
            dspecial_hits+=1;
        }
        hitpause = true;hitstop = my_hitboxID.hitpause;
        old_hsp = hsp;old_vsp = vsp;        
    }
}else{
    dspecial_hits = 0;
}
if(my_hitboxID.attack == AT_DATTACK){
    if(my_hitboxID.hbox_num == 1){
        sound_play (sound_get("spring"))
        spring.img_spd = .3;
        spring.launched = 30;
        var fx = spawn_hit_fx( spring.x +15*spr_dir, spring.y-0, 305 );fx.pause = 8.58;
        with(hit_player_obj){
            djumps = 0;has_airdodge = true;
            has_walljump = true;move_cooldown[AT_USPECIAL] = 0;
            if(state == PS_PRATFALL){
              state = PS_IDLE_AIR;
            }
            spr_dir = other.spring.spr_dir;
            if("is_Sanic" in self){
                sanic_uspec_count = 0;
                move_cooldown[AT_FSPECIAL] = 0;
                if(attack != AT_FSPECIAL){
                    vsp = -10;hsp = 10*other.spring.spr_dir;
                    fspec_launch = false;
                }else if(attack == AT_FSPECIAL){
                    if(window != 1){
                        window = 2;window_timer = 2;
                		for (var i = 0; i < 20; i++){
                			can_hit[i] = 1;
                		}                    
                        fspec_launch = true;
                    }
                    if(phone_attacking){
                        vsp = -8;hsp = 20*other.spring.spr_dir;
                    }else{
                        vsp = -10;hsp = 10*other.spring.spr_dir;
                    }
                }
            }else{
                vsp = -10;hsp = 10*other.spring.spr_dir;
            }
        }
    }
}
if(my_hitboxID.attack == AT_FSTRONG){
    if(my_hitboxID.hbox_num == 1){
        sound_play(asset_get("sfx_blow_heavy2"));
        shake_camera(6,8)
    }
}
if("should_make_shockwave" in hit_player_obj && hit_player_obj.should_make_shockwave){
    sound_play(sound_get("hit_marker"));
    var fx = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-30,fx_marker)fx.depth = depth -4;
}