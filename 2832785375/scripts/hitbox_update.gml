//hitbox_update

if attack == AT_NSPECIAL && hbox_num == 1 {
    //sprite rotation
    proj_angle = -darctan(vsp/hsp) - (spr_dir*90);
    
    //turn into article
    if !free {
        var spawn_y = ceil((y)/16)*16 - 6;
        var spawn_x = round(x);
        /*
        var can_spawn = false;
        while can_spawn == false {
            if position_meeting(spawn_x, spawn_y, asset_get("par_block")) || position_meeting(spawn_x, spawn_y, asset_get("par_jumpthrough")) {
                spawn_y--;
            } else {
                can_spawn = true;
            }
        }
        */
        var can_spawn = true
        if player_id.ground_seed_count >= 1 || was_parried {
            can_spawn = false
        }
        if can_spawn {
            var seed = instance_create(spawn_x, spawn_y, "obj_article1");
                seed.player_id = player_id;
                seed.age = age;
                seed.state = PS_SPAWN
            sound_play(asset_get("sfx_plant_ready"))
        }
        destroyed = true;
    } else {
        //player_id.seed_count++;
    }
    
    if y > room_height {
        destroyed = true;
    }
    
    if die {
        destroyed = true
    }
}

if attack == AT_DSPECIAL && hbox_num == 1 {
    //sprite rotation
    proj_angle = -darctan(vsp/hsp) - (spr_dir*90);
}

//marked proj visual
if attack == AT_EXTRA_1 && hbox_num == 1 {
    if !target.hitpause {
        x = lerp(x, target.x+70*spr_dir, 0.8)
        y = lerp(y, target.y-120, 0.8)
        proj_angle = lerp(proj_angle, point_direction(x, y, target.x, target.y - target.char_height/2)+270 + 360, 0.1)
        delay--

        with obj_article1 if player_id == other.player_id && state == PS_WRAPPED && mark_id == other.target {
            state = PS_DEAD
            state_timer = 0
        }
        
        if !has_played {
            has_played = true
            sound_play(asset_get("sfx_syl_nspecial_flowerhit"))
        }
    }
    
    if delay <= 0 {
        destroyed = true;
        var projbox = create_hitbox(AT_EXTRA_1, 2, floor(x), floor(y))
            projbox.target = target
        sound_play(asset_get("sfx_swipe_weak2"))
    }
    
    if target.state == PS_DEAD || target.state == PS_RESPAWN {
        destroyed = true;
    }
}

//marked proj
if attack == AT_EXTRA_1 && hbox_num == 2 {
    var dir = point_direction(x, y, target.x, target.y - target.char_height/2)
    var spd = 35
    hsp = spd*dcos(dir)
    vsp = spd*-dsin(dir)
    if target.state == PS_DEAD || target.state == PS_RESPAWN {
        destroyed = true;
    }
    
    //sprite rotation
    spr_dir = 1
    proj_angle = -darctan(vsp/hsp) + (spr_dir*90);
}