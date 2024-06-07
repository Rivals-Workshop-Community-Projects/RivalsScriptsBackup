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
        var old_spr_dir = player_id.spr_dir
        player_id.spr_dir = spr_dir
        var plasmabox = create_hitbox(AT_FSPECIAL, 1, x + spr_dir*50, y - 40);
        player_id.spr_dir = old_spr_dir
        
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
    
    //trail location code
    var drawAngle = darctan2(-vsp*spr_dir, hsp * spr_dir);
    proj_angle = drawAngle;
    for (var i = 1; i < array_length(trailArray); i += 1) {
        trailArray[i - 1] = trailArray[i];
    }
    projSpeed = sqrt(power(abs(hsp), 2) + power(abs(vsp),2));
    trailArray[array_length(trailArray)-1] = [x - spr_dir*11*dsin(angle),y - 11*dcos(angle),projSpeed,drawAngle,spr_dir];
}

if (attack == AT_NSPECIAL) && (hbox_num == 1) {
    depth = -1
    uses_shader = false;
    var has_hitbox = place_meeting(x, y, pHitBox)
    if has_hitbox {
        with pHitBox {
            if instance_place(x, y, other) {
                var hitbox = id;
            }
        }
    } else {
        var hitbox = noone;
    }
    
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
                    var fx = spawn_hit_fx(other.x, other.y - 15, 141);
                    fx.pause = 10
                }
                var boom = create_hitbox(AT_NSPECIAL, 2, x, y - 10);
                    boom.can_hit_self = false;
                player_id.cubeCooldown = 0;
                destroyed = true;
                exit;
            } else {
                var spawnX = x;
                
                if !hasHit && player_id.attack != AT_DTHROW {
                    var nearLedge = false;
                    /*
                    print(position_meeting(x, y+20, asset_get("par_block")))
                    if !position_meeting(x, y+5, asset_get("par_block")) {
                        
                    }
                    */
                    if !nearLedge {
                        while position_meeting(spawnX, y, pHurtBox) {
                            var hurtbox = place_meeting(spawnX, y, pHurtBox);
                            if hurtbox != noone && hurtbox != undefined && hurtbox.x < x {
                                spawnX -= 10;
                            } else {
                                spawnX += 10;
                            }
                        }
                    }
                }
                
                if hasHit {
                    var junk = instance_create(x, y, "obj_article1");
                        junk.player_id = player_id;
                        junk.power = power;
                        junk.scraped = true;
                    sound_play(asset_get("sfx_may_root"))
                    player_id.cubeCooldown = 0;
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
        if hitbox != noone && ((hitbox.hit_priority != 0 && hitbox.kb_value != 0) || hitbox.player_id == player_id) {
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
                    var fx = spawn_hit_fx(other.x, other.y - 20, 143);
                    fx.pause = 10
                }
                var explosion = create_hitbox(AT_NSPECIAL, 3, x, y - 20);
                    explosion.spr_dir = hitbox.spr_dir;
                player_id.cubeCooldown = 0;
                destroyed = true;
                exit;
            } else if ("isWalle" in hitbox.player_id) && hitbox.hbox_num == 1 && hitbox.attack == AT_DSPECIAL { //dspecial absorb cube
                with hitbox.player_id {
                    window = 4;
                    window_timer = 0;
                    absorbedCube = true;
                    compactTimer = other.power;
                    heldExplode = other.willExplode;
                    heldExplodeTimer = other.explodeTimer + compactTimer*7;
                    heldExplodeThreshhold = other.explodeThreshhold;
                    sound_play(asset_get("sfx_ell_utilt_fire"));
                }
                instance_destroy()
                exit;
            } else if (variable_instance_exists(hitbox.player_id, "isWalle") && hitbox.attack == AT_FTILT) { //ftilt explosion
                sound_play(asset_get("sfx_ell_fist_explode"));
                with player_id {
                    var fx = spawn_hit_fx(other.x, other.y - 15, 141);
                    fx.pause = 10
                }
                var boom = create_hitbox(AT_NSPECIAL, 2, x, y - 10);
                    boom.can_hit_self = false;
                player_id.cubeCooldown = 0;
                destroyed = true;
                exit;
            } else if free && !hasMoved && !(variable_instance_exists(hitbox.player_id, "isWalle") && hitbox.attack == AT_NSPECIAL) && !(prevHitbox != undefined && prevHitbox == hitbox.id) {
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
                    
                    if was_grounded {
                        oldHsp *= 0.75
                        oldVsp *= 0.75
                    }
                    
                    hitbox.player_id.has_hit = true;
                    
                    in_hitpause = true;
                    hasMoved = true;
                    hitCooldown = 8;
                    movePlayerID.hitpause = true;
                    with movePlayerID {
                        if hitstop <= 0 {
                            hitstop = 8;
                            hitstop_full = 8;
                            sound_play(hitbox.sound_effect);
                            var hitfx = hitbox.hit_effect;
                            if hitfx == 0 hitfx = 301;
                            var fx = spawn_hit_fx(other.x, other.y, hitfx);
                            fx.pause = 10
                            
                            other.prevHitbox = hitbox;
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
        
        
        if hitCooldown <= 0 { //available to hit a player
            hit_priority = 3;
            if instance_exists(self) && hasMoved { //if has been hit in the air prior
                with oPlayer {
                    if id != other.movePlayerID {
                        other.can_hit[player] = true;
                    }
                }
                hasMoved = false;
            }
        } else {
            with oPlayer {
                other.can_hit[player] = false;
            }
            if !hasMoved {
                hit_priority = 0;
            }
            if !in_hitpause {
                was_grounded = false;
                hitCooldown--;
            }
        }
    }
    
    //angle changing code
    if abs(hsp) < 1 { //vertical
        if vsp <= 0 { //upwards
            kb_angle = 90;
        } else { //spike
            kb_angle = -90;
        }
    } else if hsp > 0 {
        kb_angle = 90 - 45*spr_dir;
    } else {
        kb_angle = 90 + 45*spr_dir;
    }
    
    if (x > player_id.room_width + 100) || (x < -100) || (y > player_id.room_height + 100) {
        destroyed = true;
        exit;
    }
    if place_meeting(x, y, asset_get("plasma_field_obj")) {
        sound_play(asset_get("sfx_ell_fist_explode"));
        with player_id {
            var fx = spawn_hit_fx(other.x, other.y - 15, 141);
            fx.pause = 10
        }
        var boom = create_hitbox(AT_NSPECIAL, 2, x, y - 10);
            boom.can_hit_self = false;
        player_id.cubeCooldown = 0;
        destroyed = true;
        exit;
    }
    
    if has_rune("M") {
        can_hit_self = false;
    }
}

if attack == AT_USPECIAL && hbox_num == 6 {
    hsp *= 0.9;
    vsp *= 0.9;
}