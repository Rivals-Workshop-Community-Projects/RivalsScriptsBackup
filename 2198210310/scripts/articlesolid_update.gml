//articlesolid_update
timer++;

if free {
    vsp += 1;
} else {
    vsp = 0;
}

/*
var topCube = instance_place(x, y - 2, obj_article_solid);
if variable_instance_exists(topCube, "isTrash") {
    topCube.hsp = hsp;
    topCube.vsp = vsp;
}
*/
//player = orig_player;
//print_debug(string(player_id) + ", " + string(player))
if getting_bashed {
    was_bashed = true;
    mask_index = asset_get("empty_sprite");
    sprite_index = sprite_get("block_grey");
} else {
    if was_bashed {
        var cubeHitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
            cubeHitbox.hsp = hsp;
            cubeHitbox.vsp = vsp;
            cubeHitbox.bounceHsp = -abs(hsp/2);
            cubeHitbox.bounceVsp = vsp/2;
            cubeHitbox.power = power;
            cubeHitbox.willExplode = willExplode;
            cubeHitbox.explodeTimer = explodeTimer;
            cubeHitbox.explodeThreshhold = player_id.heldExplodeThreshhold;
            cubeHitbox.hitCooldown = 5;
            cubeHitbox.can_hit[bashed_id.player] = false;
            cubeHitbox.can_hit_self = true;
            cubeHitbox.was_bashed = true;
            cubeHitbox.was_grounded = false
        player_id.cubeCooldown = 0;
        instance_destroy();
        exit;
    }
    var hitbox = instance_place(x, y, pHitBox);
    
    if hitbox != noone && ((hitbox.hit_priority != 0 && hitbox.kb_value != 0) || hitbox.player_id == player_id) {
        var hitboxOwner = hitbox.player_id;
        if hitbox.kb_value > 0 && !(hitbox.player_id == player_id && hitbox.attack == AT_NSPECIAL && hitbox.hbox_num == 1) {
            with hitboxOwner {
                if !has_hit_cube {
                    if hitbox.type == 1 {
                        hitpause = true;
                        hitstop = 10;
                        hitstop_full = 10;
                        has_hit = true;
                    }
                    has_hit_cube = true
                    other.was_hit = true;
                    sound_play(hitbox.sound_effect);
                    var vfx = hitbox.hit_effect;
                    if vfx == 0 vfx = 301;
                    var fx = spawn_hit_fx(other.x, other.y, vfx);
                        fx.pause = 10
                }
            }
        } else if ("isWalle" in hitbox.player_id) && hitbox.hbox_num == 1 && hitbox.attack == AT_DSPECIAL { //dspecial absorb cube
            with hitbox.player_id {
                window = 4;
                window_timer = 0;
                absorbedCube = true;
                //compactTimer = other.power;
                //heldExplode = other.willExplode;
                //heldExplodeTimer = other.explodeTimer + compactTimer*7;
                //heldExplodeThreshhold = other.explodeThreshhold;
                sound_play(asset_get("sfx_ell_utilt_fire"));
            }
            instance_destroy()
            exit;
        }
        if hitboxOwner.has_hit_cube {
            if (variable_instance_exists(hitboxOwner, "isWalle") && hitbox.attack == AT_FSPECIAL && hitbox.hbox_num == 1) { //fspecial proj explosion
                hitbox.destroyed = true;
                sound_play(asset_get("sfx_ell_fist_explode"));
                with player_id {
                    var fx = spawn_hit_fx(other.x, other.y - 20, 143);
                        fx.pause = 10
                }
                var boom = create_hitbox(AT_NSPECIAL, 3, x, y - 20);
                    boom.spr_dir = hitbox.spr_dir
                player_id.cubeCooldown = 0;
                instance_destroy();
                exit; 
            } else if (variable_instance_exists(hitboxOwner, "isWalle") && hitbox.attack == AT_FTILT) { //ftilt explosion
                sound_play(asset_get("sfx_ell_fist_explode"));
                with player_id {
                    var fx = spawn_hit_fx(other.x, other.y - 15, 141);
                        fx.pause = 10
                }
                var boom = create_hitbox(AT_NSPECIAL, 2, x, y - 10);
                    boom.can_hit_self = false;
                    boom.spr_dir = hitbox.spr_dir
                player_id.cubeCooldown = 0;
                instance_destroy();
                exit;
            } else if !(variable_instance_exists(hitboxOwner, "isWalle") && 
                    ((hitbox.attack == AT_FSPECIAL && (hitbox.hbox_num == 2 || hitbox.hbox_num == 3)) || 
                    (hitbox.attack == AT_NSPECIAL))) { //hit by other hitbox
                var cubeHitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
                    cubeHitbox.hsp = 0;
                    cubeHitbox.spr_dir = hitboxOwner.spr_dir;
                    cubeHitbox.vsp = -1;
                    cubeHitbox.bounceHsp = 0;
                    cubeHitbox.bounceVsp = 0;
                    cubeHitbox.power = power;
                    cubeHitbox.willExplode = willExplode;
                    cubeHitbox.explodeTimer = explodeTimer;
                    cubeHitbox.explodeThreshhold = player_id.heldExplodeThreshhold;
                    cubeHitbox.hitCooldown = 4;
                    cubeHitbox.was_grounded = true;
                    with oPlayer {
                        cubeHitbox.can_hit[player] = false;
                    }
                instance_destroy();
                exit;
                //junked = true;
            }
        }
    }
    
    if junked {
        if power >= player_id.compactThreshhold {
            willExplode = true;
            explodeTimer = 0;
        } else {
            var junk = instance_create(x, y, "obj_article1");
                junk.player_id = player_id;
                junk.power = power;
            sound_play(asset_get("sfx_may_root"))
            var destroyID = player_id;
            player_id.cubeCooldown = 0;
            instance_destroy();
            with destroyID {
                user_event(0);
            }
            exit;
        }
    }
    
    if power >= player_id.compactThreshhold {
        var freq = floor(10 * 60/power);
        if get_gameplay_time() mod freq == 1 {
            var xMod = random_func_2((get_gameplay_time() + id) mod 200, 30, true) - 15;
            var yMod = random_func_2(((get_gameplay_time() + id)*2) mod 200, 30, true) - 15;
            with player_id {
                var fx = spawn_hit_fx(other.x + xMod, other.y + yMod, smoke_vfx);
                    fx.depth = -2;
            }
        }
    }
    
    if willExplode {
        if explodeTimer <= 0 {
            sound_play(asset_get("sfx_ell_fist_explode"));
            with player_id {
                var fx = spawn_hit_fx(other.x, other.y - 15, 141);
                    fx.pause = 10
            }
            var boom create_hitbox(AT_NSPECIAL, 2, x, y - 10);
                boom.can_hit_self = false;
                boom.hit_flipper = 3;
            player_id.cubeCooldown = 0;
            instance_destroy();
            exit;
        }
        explodeTimer --;
    }
    
    if (x > player_id.room_width + 100) || (x < -100) || (y > player_id.room_height + 100) {
        player_id.cubeCooldown = 0;
        instance_destroy();
        exit;
    }
    
    if free && timer > 1 {
        var cubeHitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
            cubeHitbox.hsp = hsp;
            cubeHitbox.vsp = vsp;
            cubeHitbox.bounceHsp = -abs(hsp/2);
            cubeHitbox.bounceVsp = vsp/2;
            cubeHitbox.power = power;
            cubeHitbox.willExplode = willExplode;
            cubeHitbox.explodeTimer = explodeTimer;
            cubeHitbox.explodeThreshhold = player_id.heldExplodeThreshhold;
            cubeHitbox.hitCooldown = 5;
            cubeHitbox.can_hit_self = true;
            cubeHitbox.was_grounded = false;
        instance_destroy();
        exit;
    }
}