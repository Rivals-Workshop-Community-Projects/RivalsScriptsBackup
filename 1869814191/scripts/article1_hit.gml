//article2_hit
/*
//i wrote all of this in a sleep deprived state
if (enemy_hitboxID.hit_priority > 0 && hit_player_obj.hitstop) {
    state = 2;
    var angle = get_hitbox_angle(enemy_hitboxID);
    var lockout = clamp(enemy_hitboxID.hitpause + enemy_hitboxID.damage * enemy_hitboxID.hitpause_growth * 0.05, 0, 20);
    floor(lockout);
    
    //var knock = (enemy_hitboxID.kb_value + enemy_hitboxID.damage * enemy_hitboxID.kb_scale * 0.02);
    
    //print_debug("SANS???????????????");
    hit_player_obj.soul_id = "bone";
    sansID = hit_player_obj.id;
    sansID_player = hit_player_obj.player;
    with (enemy_hitboxID) {
        //var hitp = clamp(hitpause + damage * hitpause_growth * 0.05, 0, 20);
        var hitp = get_hitstop_formula(0, 0, hitpause, hitpause_growth, 0);
        if (type == 1) player_id.hitstop = hitp;
        other.sansLockout = hitp;
        sound_play(sound_effect);
        spawn_hit_fx(hit_effect_x + other.x, hit_effect_y + other.y - 16, hit_effect);
    }
    
    switch(enemy_hitboxID.attack) {
        case AT_FSPECIAL:
            switch(enemy_hitboxID.hbox_num) {
                case 1:
                    state = 1;
                    sansLockout = 8;
                    x = sansID.x+sansID.spr_dir*60;
					y = sansID.y-(sansID.char_height/2)-6;
                    hsp = 0;
                    vsp = 0;
                    with (sansID) {
                        hitstop = 0;
                        //destroy_hitboxes();
                        window = 8;
                        window_timer = 0;
                    }
                    //print_debug("lol");
                break;
                case 4:
                    state = 2;
                    state_timer = 0;
                    spr_dir = sansID.spr_dir;
                    old_hsp = lengthdir_x(bone_speed, angle);
                    old_vsp = lengthdir_y(bone_speed, angle);
                    //hsp = (dcos(sansID.dspecJoyDir)*bone_speed);
        			//vsp = (dsin(sansID.dspecJoyDir)*bone_speed);
                    with (sansID) {
                        hitstop = 0;
                        //destroy_hitboxes();
                        soul_id = noone; 
                    }
                    //sansID = noone;
                    //print_debug("lmao");
                break;
            }
        break;
        
        default:
            //spr_dir = sansID.spr_dir;
            old_hsp = lengthdir_x(bone_speed, angle);
            old_vsp = lengthdir_y(bone_speed, angle);
        break;
    }
}

if get_player_team(get_instance_player(hit_player_obj)) != get_player_team(get_instance_player(self)) {
    spawn_hit_fx(x, y, 301);
    sound_play(sound_get("sfx_soul_break"));
    instance_destroy();
    exit;
}

*/