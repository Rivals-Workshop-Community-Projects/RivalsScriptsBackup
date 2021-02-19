//hitbox_update

if (attack == AT_NSPECIAL) && (hbox_num == 1) {
    if (!free) || (groundedTimer > 0) {
        hsp = 0;
        vsp = 0;
        groundedTimer += 1;
        if (groundedTimer >= 10) {
            destroyed = true;
        }
    } else {
        angle = darctan2(-vsp * spr_dir, hsp * spr_dir);
    }
    
    proj_angle = angle
    
    with oPlayer {
        if id == other.player_id {
            if (stasisID != undefined) {
                if (stasisID.hitStasis == true) {
                    if (stasisID.hitboxStasisAttack == AT_NSPECIAL) {
                        other.destroyed = true;
                    }
                }
            }
        }
    }
}

if (attack == AT_FSTRONG) && (hbox_num == 1) {
    if (!free) || (place_meeting(x, y, asset_get("par_block"))) {
        destroyed = true;
        with oPlayer {
            if (id == other.player_id) {
                create_hitbox(AT_FSTRONG, 2, other.x, other.y);
                spawn_hit_fx(other.x, other.y, fstrongExplosionVfx);
                sound_play(sound_get("explosion"));
            }
        }
    }
}

var instance = instance_place(x, y, oPlayer);
if (instance != undefined) {
    player_id.instanceID = instance;
}

if (attack == AT_BAIR) && (hbox_num == 1) {
    if (!free) || (place_meeting(x, y, asset_get("par_block"))) {
        destroyed = true;
        with oPlayer {
            if (id == other.player_id) {
                spawn_hit_fx(other.x, other.y, bairExplosionVfx);
                sound_play(sound_get("explosion"));
            }    
        }
        
    }
}

if (attack == AT_FSPECIAL) && (hbox_num == 1) {
    player = player_id.hitboxStasisPlayer;
}