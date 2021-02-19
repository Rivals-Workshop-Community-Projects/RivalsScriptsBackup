//hitbox_update

if (attack == AT_FSPECIAL) && (hbox_num == 2) {
    if hitbox_timer == 1 {
        sound_play(asset_get("sfx_ori_ustrong_charge"))
        disabled = false;
    }
    var w = 25;
    var h = 40;
    var hitboxCollision = collision_ellipse(x-w, y-40-h, x+w, y-40+h, pHitBox, true, true);
    if hitbox_timer >= 12 && hitboxCollision != noone && hitboxCollision.player_id != player_id && hitbox_timer < 76 {
        hitbox_timer = 76;
        image_index = 19;
        disabled = true;
        sound_play(asset_get("sfx_ori_energyhit_medium"))
    }
    
    if hitbox_timer == 9 {
        sound_play(asset_get("sfx_swipe_weak1"))
    }
    
    if hitbox_timer == 19 {
        sound_play(asset_get("sfx_ell_utilt_retract"))
    }
    
    if hitbox_timer == 31 {
        sound_play(sound_get("cannon_shoot"))
        hsp = spr_dir*-5;
        create_hitbox(AT_FSPECIAL, 1, x + spr_dir*50, y - 40);
    }
    
    if hitbox_timer == 54 {
        sound_play(sound_get("cannon_reload"), false, noone, 0.4)
    }
    
    if hitbox_timer == 87 {
        sound_play(asset_get("sfx_swipe_medium1"))
        var exitHitbox = create_hitbox(AT_FSPECIAL, 3, x - spr_dir*10, y - 74);
        if disabled {
            exitHitbox.damage = 0;
            exitHitbox.kb_value = 0;
            exitHitbox.kb_scale = 0;
        }
    }
}

if (attack == AT_FSPECIAL) && (hbox_num == 1) {
    var wall = instance_place(x, y, asset_get("par_block"));
    if (wall != noone) && (!variable_instance_exists(wall, "player_id") || wall.player_id != player_id) {
        destroyed = true;
    }
}

if (attack == AT_NSPECIAL) && (hbox_num == 1) {
    depth = -1
    uses_shader = false;
    var hitbox = instance_place(x, y, pHitBox);
    
    if power >= player_id.compactThreshhold {
        var freq = floor(10 * 60/power);
        if get_gameplay_time() mod freq == 1 {
            var xMod = random_func_2((get_gameplay_time() + id) mod 200, 30, true) - 15;
            var yMod = random_func_2(((get_gameplay_time() + id)*2) mod 200, 30, true) - 15;
            with player_id {
                var fx = spawn_hit_fx(other.x + xMod, other.y + yMod, smoke_vfx);
                    fx.depth = -4;
            }
        }
    }
    
    if power >= player_id.compactThreshhold && hasHit && explodeTimer > explodeThreshhold {
        explodeTimer = explodeThreshhold;
    }
    
    //print_debug(string(player))
    
    if getting_bashed || ((variable_instance_exists(self, "kirby_thrown") && kirby_thrown == true)) {
        hasHit = true;
        was_bashed = true;
        player = orig_player;
        kirby_thrown = false;
    } else {
        if willExplode {
            explodeTimer--;
        }
        
        if was_bashed {
            player = orig_player;
            was_bashed = false;
            hitCooldown = 10;
            can_hit_self = true;
        }
        
        if !free || (willExplode && explodeTimer <= 0) {
            if willExplode && explodeTimer < explodeThreshhold {
                sound_play(asset_get("sfx_ell_fist_explode"));
                with player_id {
                    spawn_hit_fx(other.x, other.y - 15, 141);
                }
                create_hitbox(AT_NSPECIAL, 2, x, y - 10);
                destroyed = true;
                exit;
            } else {
                var spawnX = x;
                
                if !hasHit && player_id.attack != AT_DTHROW {
                    while position_meeting(spawnX, y, pHurtBox) {
                        var hurtbox = place_meeting(spawnX, y, pHurtBox);
                        if hurtbox != noone && hurtbox != undefined && hurtbox.x < x {
                            spawnX -= 10;
                        } else {
                            spawnX += 10;
                        }
                    }
                }
                
                if hasHit {
                    var junk = instance_create(x, y, "obj_article1");
                        junk.player_id = player_id;
                        junk.power = power;
                        junk.scraped = true;
                    sound_play(asset_get("sfx_may_root"))
                } else {
                    var cube = instance_create(spawnX, y, "obj_article_solid");
                        cube.player_id = player_id;
                        cube.hsp = 0;
                        cube.vsp = 0;
                        cube.power = power;
                        cube.explodeTimer = explodeTimer;
                        cube.explodeThreshhold = explodeThreshhold;
                        cube.willExplode = willExplode;
                }
                    
                sound_play(asset_get("sfx_kragg_rock_land"));
                destroyed = true;
                exit;
            }
        }
        
        if (in_hitpause) {
            if (hitPlayerID != undefined && !hitPlayerID.hitpause) || (movePlayerID != undefined && !movePlayerID.hitpause) {
                in_hitpause = false;
                hasHit = true;
                
                if !hasMoved {
                    hsp = spr_dir*bounceHsp;
                    vsp = bounceVsp;
                } else {
                    hsp = oldHsp;
                    vsp = oldVsp;
                }
            }
        }
        
        if hitbox != noone {
            if variable_instance_exists(hitbox.player_id, "isWalle") {
                player_id = hitbox.player_id;
                player = hitbox.player;
            } else {
                player = player_id.player;
            }
            if hitbox.player_id != player_id {
                can_hit_self = true;
            } else {
                can_hit_self = false;
            }
            if (variable_instance_exists(hitbox.player_id, "isWalle") && hitbox.attack == AT_FSPECIAL && hitbox.hbox_num == 1) { //fspecial proj explosion
                hitbox.destroyed = true;
                sound_play(asset_get("sfx_ell_fist_explode"));
                with player_id {
                    spawn_hit_fx(other.x, other.y - 20, 143);
                }
                create_hitbox(AT_NSPECIAL, 3, x, y - 20);
                destroyed = true;
                exit;
            } else if (variable_instance_exists(hitbox.player_id, "isWalle") && hitbox.attack == AT_FTILT) { //ftilt explosion
                sound_play(asset_get("sfx_ell_fist_explode"));
                with player_id {
                    spawn_hit_fx(other.x, other.y - 15, 141);
                }
                create_hitbox(AT_NSPECIAL, 2, x, y - 10);
                destroyed = true;
                exit;
            } else if free && !hasMoved && !(variable_instance_exists(hitbox.player_id, "isWalle") && hitbox.attack == AT_NSPECIAL) {
                movePlayerID = hitbox.player_id;
                with movePlayerID {
                    var hitboxBKB = get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_BASE_KNOCKBACK);
                }
                
                if hitboxBKB > 0 {
                    if hitbox.player_id == player_id && hitbox.attack == AT_DAIR { //sourspot of dair will act as same as sweetspot
                        var angle = 270;
                    } else {
                        var angle = get_hitbox_angle(hitbox);
                    }
                    if angle > 180 {
                        angle -= 360;
                    }
                    var oldSpeed = 10;
                    if angle >= -45 && angle <= 45 {
                        oldHsp = oldSpeed;
                        oldVsp = -2;
                    } else if angle >= 135 || angle <= -135 {
                        oldHsp = -oldSpeed;
                        oldVsp = -2;
                    } else if angle >= 80 && angle <= 100 {
                        oldHsp = 0;
                        oldVsp = -oldSpeed;
                    } else if angle >= -100 && angle <= -80 {
                        oldHsp = 0;
                        oldVsp = oldSpeed;
                    } else {
                        oldHsp = oldSpeed*(dcos(round(angle/45)*45));
                        oldVsp = -oldSpeed*(dsin(round(angle/45)*45));
                    }
                    
                    hitbox.player_id.has_hit = true;
                    
                    in_hitpause = true;
                    hasMoved = true;
                    hitCooldown = 10;
                    movePlayerID.hitpause = true;
                    with movePlayerID {
                        if hitstop <= 0 {
                            hitstop = 8;
                            hitstop_full = 8;
                            sound_play(get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_HIT_SFX));
                            spawn_hit_fx(other.x, other.y, get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_VISUAL_EFFECT));
                        }
                    }
                    with movePlayerID {
                        old_hsp = hsp;
                        old_vsp = vsp;
                        //print_debug(string(old_vsp))
                    }
                    movePlayerID.hsp = 0;
                    movePlayerID.vsp = 0;
                }
            }
        }
        
        
        if hitCooldown <= 0 {
            hit_priority = 3;
            if instance_exists(self) && hasMoved {
                with oPlayer {
                    if id != other.movePlayerID {
                        other.can_hit[player] = true;
                    }
                }
            }
            hasMoved = false;
        } else {
            if !hasMoved {
                hit_priority = 0;
            }
            if !in_hitpause {
                hitCooldown--;
            }
        }
    }
    
    if (x > player_id.room_width + 100) || (x < -100) || (y > player_id.room_height + 100) {
        destroyed = true;
        exit;
    }
    if place_meeting(x, y, asset_get("plasma_field_obj")) {
        sound_play(asset_get("sfx_ell_fist_explode"));
        with player_id {
            spawn_hit_fx(other.x, other.y - 15, 141);
        }
        create_hitbox(AT_NSPECIAL, 2, x, y - 10);
        destroyed = true;
        exit;
    }
    
    if has_rune("M") {
        can_hit_self = false;
    }
}

if attack == AT_USPECIAL && hbox_num == 5 {
    hsp *= 0.9;
    vsp *= 0.9;
}