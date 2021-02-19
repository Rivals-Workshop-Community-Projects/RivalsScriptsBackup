//hitbox_update

if player_id.time_frozen and array_find_index(exceptions, attack) == -1{
    is_frozen = true;
    in_hitpause = true;
    return;
} else{
    if is_frozen{
        is_frozen = false;
        in_hitpause = false;
    }
}

// Hamburger
if (attack == AT_NSPECIAL){
    if (!free){
        spawn_hit_fx(x, y, 0);
        instance_destroy();
        return;
    }
}

// Giant hamburger
if (attack == AT_NSPECIAL_2){
    
    if !hamburger_destroyed{
        var spin_speed = clamp(vsp, 0, 999) + roll_speed
        
        proj_angle -= (3 + spin_speed) * spr_dir
        
        if has_hit or !free or (1 - (hsp > 0) * 2 != init_dir){
            sound_play(sound_get("bighit"));
            
            if !has_hit{
                spawn_hit_fx( x, y, hitsparkheavy );
            }
            
            hamburger_destroyed = true;
            timer = 0;
            for (var i = 0; i < 4; ++i){
                gib = instance_create(x, y,"obj_article3")
                gib.player_id = player_id;
                gib.player = player_id.player;
                gib.spr_dir = 1;
                gib.type = "hamburger_gib"
                gib.sprite = i;
                gib.angle = proj_angle
            }
        }
        
    } else{
        visible = false;
        if timer == 2{
            sound_play(sound_get("shock2"));
            sound_play(sound_get("counterhit"));
        }
        hsp = 0;
        vsp = 0;
        
        var rand1 = -80 + random_func(10, 160, true);
        var rand2 = -80 + random_func(11, 160, true);
        spawn_hit_fx( x + rand1, y + rand2, hitsparkheavy );
        
        if timer >= 12{
            instance_destroy();
            return;
        }
    }
}

timer += 1;