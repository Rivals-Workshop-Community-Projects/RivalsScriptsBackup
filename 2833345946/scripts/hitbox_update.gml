//hitbox_update


if attack == AT_NSPECIAL && hbox_num == 3 {
    if !instance_exists(owner) {
        instance_destroy();
        exit;
    }
    x = owner.x + owner.hsp;
    y = owner.y + owner.vsp;
}

if attack == AT_FTILT && hbox_num == 1 { //boomerang
    hsp = clamp(hsp - 0.20*spr_dir, -16, 16)
    
    
    if hitbox_timer > 10 {
        can_pickup = true
    }
    
    
    if hitbox_timer mod 8 == 0 && !was_parried {
        var _hbox = create_hitbox(AT_FTILT, 2, x, y)
            _hbox.owner = id
            _hbox.depth = -10
        pos_array[pos_index] = [x,y,1]
        pos_index++
    }
    
    for (var i = 0; i < array_length(pos_array); i++) {
        if pos_array[i][2] > 0 pos_array[@i][@2] -= 0.08
    }
    
    if x < -100 || x > room_width+100 {
        destroyed = true
    }
    
    if destroyed with player_id {
        sound_stop(sound_get("mantis_proj_loop"))
    }
}

if attack == AT_FTILT && hbox_num == 2 {
    if was_parried {
        owner.destroyed = true;
        destroyed = true
    }
}

if attack == AT_FSPECIAL && hbox_num == 1 {
    if was_parried && !reset_lifetime {
        hitbox_timer = 0
        reset_lifetime = true
    }
    var tminus = 30
    if has_hit {
        if hitbox_timer < tminus-16 hitbox_timer = tminus-16
        hsp = clamp(hsp, -8, 8)
    } else {
        if hitbox_timer mod 2 == 0 {
            var randx = random_func(0, 4, true) - 2
            var randy = random_func(1, 4, true) - 2
            spawn_hit_fx(x + randx, y + randy, player_id.vfx_smoke)
        }
    }
    
    if position_meeting(x, y, asset_get("par_block")) {
        destroyed = true
        var blade = instance_create(floor(x-hsp*0.4), floor(y-vsp*0.7), "obj_article1")
            blade.image_angle = spr_dir*90 + proj_angle
            blade.spawn_sfx = 1
    }
    
    if hitbox_timer == tminus {
        var _hbox = create_hitbox(AT_FSPECIAL, 2, x, y)
            _hbox.can_hit_self = was_parried
        with player_id {
            var _sfx = sound_get("explosion")
        }
        sound_play(asset_get("sfx_ell_uspecial_explode"))
        sound_play(_sfx)
        spawn_hit_fx(x, y, 143)
        destroyed = true
    }
    
    //curving
    if !has_hit {
        if player_id.up_down && !player_id.down_down {
            vsp -= 0.2
        } else if player_id.down_down && !player_id.up_down {
            vsp += 0.2
        }
    }
    proj_angle = darctan2(-vsp * spr_dir, hsp * spr_dir);
    
}

if attack == AT_NSPECIAL && hbox_num == 1 {
    proj_angle = darctan2(-vsp * spr_dir, hsp * spr_dir);
    if position_meeting(x, y, asset_get("par_block")) || position_meeting(x, y, asset_get("par_jumpthrough")) {
        destroyed = true
        if !was_parried {
            var blade = instance_create(floor(x-hsp*0.2), floor(y-vsp*0.7), "obj_article1")
                blade.image_angle = spr_dir*90 + proj_angle
                blade.spawn_sfx = 1
            sound_play(sound_get("trident_ground_impact1"))
        } else {
            spawn_hit_fx(x, y, 301)
        }
    }
    /*
    if ("is_uspecial" in self) && is_uspecial == true {
        if hitbox_timer mod 3 == 0 {
            pos_array[pos_index] = [x,y,1]
            pos_index++
        }
        
        for (var i = 0; i < array_length(pos_array); i++) {
            if pos_array[i][2] > 0 pos_array[@i][@2] -= 0.1
        }
    }
    */
}