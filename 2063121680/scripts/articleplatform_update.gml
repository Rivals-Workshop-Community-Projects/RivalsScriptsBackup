//article1_update

player_id.boxActive = true;
var spdMod = 3;

if (player_id.hitboxStasisPlayer == player_id.player) {
    sprite_index = sprite_get("box");
} else {
    sprite_index = sprite_get("box_enemy");
}

if player_id.runeN { //Box has a hitbox while being moved by Magnesis.
    with oPlayer {
        if (id == other.player_id) {
            if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_FSPECIAL) && (window == 3) {
                set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
                create_hitbox(AT_FSPECIAL, 1, other.x, other.y + 32);
            }
        }
    }
}


/*
if (vsp > 0) {
    with oPlayer {
        if (id == other.player_id) {
            set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
        }
    }
    
} else {
    var angle = darctan2(vsp, hsp);
    with oPlayer {
        if (id == other.player_id) {
            set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, angle);
        }
    }
}
*/

if (!inStasis) && (player_id.stasisID != id) {
    image_index = 0;
    if (player_id.magnesisReticleDraw) && !(player_id.magnesisSearch) {
        var xDif = player_id.reticleX - x;
        var yDif = player_id.reticleY - y;
        var minDist = 50;
        
        if (!free) && (!player_id.up_down) && (player_id.window == 3) {
            player_id.reticleY = y + 40;
        }
        if !(player_id.magnesisSearch) && (player_id.window != 4) {
            if (abs(xDif) >= 10) {
                player_id.reticleX -= xDif/5;
            }
            x = player_id.reticleX;
            y = player_id.reticleY - 40;
            vsp = 0;
            hsp = 0;
        }
        
    } else {
        var instancePlat1 = position_meeting(x+30, y+70, asset_get("par_jumpthrough"));
        var instancePlat2 = position_meeting(x-30, y+70, asset_get("par_jumpthrough"));
        if (instancePlat1 || instancePlat2) {
            vsp = prevVsp;
        } else {
            vsp += 0.5;
        }
        
        if (free) {
            hsp *= 0.99;
        } else {
            hsp *= 0.92;
            if !(instancePlat1 || instancePlat2) {
                vsp = 0;
            }
            
            if (abs(hsp) <= 0.01) {
                hsp = 0;
            }
            if (abs(vsp) <= 0.01) {
                vsp = 0;
            }
        }
        
        prevVsp = vsp + 0.5;
    }
    
    //keep opponents standing on cube
    
    with oPlayer {
        if (!inStasis) {
            var instance = instance_place(x, y+10, obj_article_platform);
            if (instance == other.id) && (instance.y > y-10) {
                if (abs(other.stasisEndHsp) > 0) {
                    hsp = floor(other.stasisEndHsp * spdMod);
                }
                if (abs(other.stasisEndVsp) > 0) {
                    vsp = -floor(other.stasisEndVsp * spdMod);
                }
            }
        }
    }
    
    stasisBoostTimer += 1;
    if (stasisBoostTimer == 2) {
        stasisEndHsp = 0;
        stasisEndVsp = 0;
    }
    
    //if !((player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && (player_id.attack == AT_FSPECIAL) && (player_id.window == 3)) {
    if (abs(stasisEndHsp) > 0) {
        hsp = stasisEndHsp * spdMod;
    }
    if (abs(stasisEndVsp) > 0) {
        vsp = -stasisEndVsp * spdMod;
    }
    //}
    
} else {
    stasisBoostTimer = 0;
    image_index = 1;
    hsp = 0;
    vsp = 0;
}

var _hitbox = place_meeting(x, y, pHitBox);
if _hitbox {
    var hitboxObj = instance_place(x, y, pHitBox);
    if ('boostedBox' in hitboxObj) && hitboxObj.player_id == player_id && hitboxObj.attack == AT_FSTRONG {
        if !hitboxObj.boostedBox {
            hitboxObj.boostedBox = true;
        }
        
        if hitboxObj.hbox_num == 2 { //explosion]
            hsp = hitboxObj.spr_dir*8;
            vsp = -12;
        }
    }
}

if (x > player_id.room_width + 100) || (x < -100) || (y > player_id.room_height + 100) {
    player_id.boxActive = false;
    if (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && (player_id.attack == AT_FSPECIAL) && (player_id.window != 4) {
        window = 4;
    }
    instance_destroy();
    exit;
}

var hitbox = instance_place(x, y, pHitBox);
if (hitbox != noone) {
    if (hitbox.player_id == player_id) && (hitbox.attack == AT_DSPECIAL) && (player_id.stasisType != "player") {
        if (hitbox.hbox_num == 1) {
            with oPlayer {
                if (id == other.player_id) {
                    //set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, (other.x - x) * spr_dir);
                    //set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, other.y - y + 32);
                    //create_hitbox(AT_DSPECIAL, 2, x, y);
                }
            }
            if playSoundVar == 1 {
                playSoundVar = 0;
                sound_play(sound_get("stasis_start"));
                player_id.chainTimer = 0;
                player_id.stasisType = "box";
                sound_stop(sound_get("rune_search_start"));
                player_id.stasisActive = true;
                player_id.stasisID = id;
                player_id.stasisHitPlayer = true;
            } else {
                playSoundVar += 1;
            }
            
        }
    }
} else {
    playSoundVar = 0;
    //box hitbox
    var boxSpd = sqrt(hsp*hsp + vsp*vsp);
    var boxAngle = darctan2(vsp, hsp);
    if (boxSpd >= 6) {
        with oPlayer {
            if (id == other.player_id) && !((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_FSPECIAL) && (window != 4)) {
                if (boxAngle < -45 && boxAngle > -135) {
                    set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
                    set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5 + boxSpd/3);
                } else {
                    reset_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE);
                    set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, boxSpd/3);
                }
                reset_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING);
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4 + boxSpd);
                create_hitbox(AT_FSPECIAL, 1, other.x, other.y + 32);
            }
        }
    } else if !(player_id.stasisActive) && (stasisBoostTimer >= 2)  {
        player_id.hitboxStasisPlayer = player_id.player;
    }
}

if (hitbox != noone) && (hitbox.player_id == player_id) && (hitbox.attack == AT_USTRONG) && (hitbox.hbox_num == 1) && (!inStasis) {
    vsp = -player_id.ustrongDrawHeight/12;
    player_id.hitboxStasisPlayer = player_id.player;
}