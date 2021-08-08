// attack_update

var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DATTACK) {
    if window == 1 && window_timer == 1 {
        sound_played = false;
    }
    can_move = false;
    if has_hit || has_hit_player {
        can_jump = true;
    }
    
    if has_rune("H") {
        can_jump = true;
        can_attack = true;
    }
    
    if window == 3 && !sound_played && !free {
        sound_played = true;
        sound_play(asset_get("sfx_land"))
    }
}

if (attack == AT_DTILT) {
    if (has_hit || has_hit_player) && window == 3 && (up_down || left_down || right_down) {
        can_attack = true;
    }
}

if attack == AT_NSPECIAL {
    //near cube, pickup
    if (window == 1) && window_timer <= 1 {
        user_event(0);
    }
    
    if (window == 1) && window_timer < 12 && (cubeDist < 60 || (cubeDist < 70 && cubeNearest.y < y && abs(cubeNearest.x - x) < 50)) {
        window = 9;
        window_timer = 0;
        holdingCube = true;
        sound_play(asset_get("sfx_kragg_rock_pull"))
        //find nearest cube
        heldPower = cubeNearest.power;
        heldExplode = cubeNearest.willExplode;
        heldExplodeTimer = cubeNearest.explodeTimer;
        instance_destroy(cubeNearest);
    } else if (window == 1 || window == 2) && !special_down && !special_pressed {
        window = 3;
        window_timer = 0;
    }
    
    if window == 1 {
        if compactTimer >= compactMax {
            window = 3;
            window_timer = 0;
        }
    }
    
    if window == 2 {
        if has_rune("N") {
            compactTimer += 2;
        } else {
            compactTimer++;
        }
        
        compactTimer = clamp(compactTimer, 0, compactMax);
        if compactTimer >= compactMax {
            window = 4;
            window_timer = 0;
        }
        can_shield = true;
    }
    
    if window == 3 {
        sound_stop(sound_get("compact"));
        var max_cubes = 1;
        if has_rune("L") {
            max_cubes = 3;
        }
        if cubeCounter < max_cubes && cubeCooldown >= cubeCooldownMax {
            if window_timer == 1 {
                sound_play(asset_get("sfx_ell_utilt_fire"));
            }
            if window_timer == 3 {
                var cube = create_hitbox(AT_NSPECIAL, 1, x, y - 25);
                    cube.hsp = 4*spr_dir + hsp;
                    cube.vsp = -2 + vsp;
                    cube.bounceHsp = -1;
                    cube.bounceVsp = -4;
                    cube.power = compactTimer;
                    cube.willExplode = heldExplode;
                    cube.explodeTimer = heldExplodeTimer - compactTimer*8;
                    cube.explodeThreshhold = heldExplodeThreshhold;
                    cube.hitCooldown = 0;
                    cube.was_grounded = false;
                compactTimer = 0;
            }
            outline_color = [0, 0, 0];
            init_shader();
        } else {
            if window_timer == 3 && !hitpause {
                create_hitbox(AT_NSPECIAL, 4, x, y);
            }
        }
    }
}

if attack == AT_BAIR {
    if window == 3 && !has_rune("B") {
        hsp = clamp(hsp, -9, 9);
    }
}

if attack == AT_DSPECIAL {
    can_move = false;
    hsp *= 0.96;
    vsp *= 0.96;
    if window == 1 {
        counterDmg = get_player_damage(player);
        super_armor = false;
    }
    
    if window == 2 {
        if window_timer == 1 {
            sound_play(asset_get("sfx_zetter_shine"))
            hsp *= 0.2
            vsp *= 0.2
        } else if window_timer < 20 {
            hsp *= 0.9
            vsp *= 0.9
        }
        if (window_timer <= 12 && !has_rune("F")) || (window_timer <= 18 && has_rune("F")) {
            super_armor = true;
            if (hitpause) { //got hit
                set_player_damage(player, counterDmg);
                set_attack(AT_DSPECIAL_2);
                hurtboxID.sprite_index = get_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE);
                /*
                attack = AT_DSPECIAL_2;
                window = 0;
                window_timer = 0;
                */
                //state_timer = 0;
            }
        } else {
            super_armor = false;
        }
        if window_timer > 20 && !special_down {
            window++;
            window_timer = 0;
        }
    } else {
        super_armor = false;
    }
    
    if window == 4 {
        if window_timer == get_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH) {
            window++;
            window_timer = 0;
        }
        has_breversed = false;
        if window_timer <= 10 && !has_breversed{
            if (spr_dir == 1 && left_pressed) || (spr_dir == -1 && right_pressed) {
                spr_dir *= -1
                has_breversed = true
            }
        }
    }
    
    if window == 5 {
        if window_timer == get_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH) {
            window = 2;
            window_timer = 12;
            reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_INVINCIBILITY);
        }
        
        if absorbedCube && window_timer == 3 {
            
            sound_play(asset_get("sfx_ell_strong_attack_explosion"))
            var cube = create_hitbox(AT_NSPECIAL, 1, x, y - 25);
                cube.hsp = 12*spr_dir + hsp;
                cube.vsp = -3;
                cube.bounceHsp = -1;
                cube.bounceVsp = -4;
                cube.power = 60;
                cube.willExplode = true;
                cube.explodeTimer = 30;
                cube.explodeThreshhold = 30;
                cube.hitCooldown = 0;
                cube.was_grounded = false;
                
            compactID = undefined; //id of player being compacted
            compactTimer = 0; //level of compactness until cube is full
            compactThreshhold = 30; //above value, cubes will explode
            compactMax = 60; //max level of compactness
            compactJunk = false; //true if hit junk, speeds up compacting time
            cubeDist = 100000000000; //distance to nearest cube
            cubeNearest = undefined; //id of nearest cube
            holdingCube = false; //true if holding cube
            throwHsp = 0; //hsp of throwing cube
            throwVsp = 0;
            bounceHsp = 0; //hsp of cube when bounce of enemy
            bounceVsp = 0;
            
            heldPower = 0; //power of held cube
            heldExplode = false; //inherits willExplode
            heldExplodeMax = 600;
            heldExplodeTimer = 600; //inherits explodeTimer
            heldExplodeThreshhold = 120; //number of frame as which ticking starts
            
            absorbedCube = false;
            outline_color = [0, 0, 0];
            init_shader();
        }
    }
    
    if window == 2 && special_down {
        //absorb projectiles
        with pHitBox {
            hasCompacted = false;
            if player_id != other.id && type == 2 && point_distance(x, y, other.x + 10*other.spr_dir, other.y - 30) < 40 {
                if ((variable_instance_exists(id, "no_absorb") && no_absorb == 1) || plasma_safe) {
                    with other {
                        set_window_value(AT_DSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 0);
                    }
                } else {
                    with other {
                        create_hitbox(AT_DSPECIAL, 1, x, y - 30);
                        if (other.damage > 0 && !other.plasma_safe && !other.hasCompacted) {
                            var dmgCap = 8;
                            compactTimer += clamp(other.damage/dmgCap, 0, 1)*compactMax;
                            compactTimer = clamp(compactTimer, 0, compactMax);
                            other.hasCompacted = true;
                            other.destroyed = true;
                            sound_play(asset_get("sfx_ell_utilt_fire"));
                        }
                        window = 4;
                        window_timer = 0;
                    }
                }
            } 
        }
    }
}

if attack == AT_DSPECIAL_2 {
    super_armor = false;
    if window == 1 && window_timer == 10 {
        if compactID == undefined {
            window = 4;
            window_timer = 0;
        }
    }
    if window == 2 {
        if window_timer == 1 {
            if compactID == undefined {
                window = 4;
                window_timer = 0;
            } else {
                take_damage(compactID.player, player, 1);
            }
        }
        if state_timer == 70 {
            window++;
            window_timer = 0;
            compactID.visible = true;
            compactID.invincible = false;
            compactID = undefined;
        }
    }
}

if attack == AT_USPECIAL {
    can_wall_jump = true;
    if window == 1 {
        vsp *= 0.95;
        uspec_window_counter = 0
    }
    if window == 2 || window == 3 {
        hsp *= 0.95;
        vsp -= 1;
        vsp = clamp(vsp, -8, 8);
    }
    
    if window == 3 && window_timer == window_length {
        uspec_window_counter += 1
    }
    
    if window == 3 && ((uspec_window_counter == 2 && !has_rune("E")) || (uspec_window_counter == 3 && has_rune("E"))) {
        window++;
        window_timer = 0;
        //sound_stop(sound_get("extinguisher3"));
    }
    
    if window == 3 && has_rune("K") {
        can_attack = true;
    }
    
    if window == 3 || window == 2 {
        if window_timer == 0 || window_timer == 4 || window_timer == 8 {
            attack_end();
        }
        
        var randvar = random_func_2((get_gameplay_time()+(2*id)) mod 200, 3, false);
        var randvar2 = random_func_2((get_gameplay_time()+id) mod 200, 4, false);
        
        if window_timer mod 2 == 0 {
            var hitbox = create_hitbox(AT_USPECIAL, 6, x - 8*spr_dir, y - 20);
                hitbox.vsp = randvar + 2;
                hitbox.hsp = randvar2 - 2;
        }
    }
}

if attack == AT_FTHROW {
    throwCube(AT_FTHROW, 0, -60);
}

if attack == AT_UTHROW {
    throwCube(AT_UTHROW, 0, -80);
}

if attack == AT_DTHROW {
    throwCube(AT_DTHROW, 0, -20);
}

if attack == AT_TAUNT {
    if !hitstun {
        if window_timer == 28 {
            sound_play(sound_get("taunt1"));
        }
        if window_timer == 80 {
            sound_play(sound_get("taunt2"));
        }
    }
}

if attack == AT_TAUNT_2 {
    if taunt_type == 2 {
        if window_timer == 18 {
            sound_taunt = false;
            sound_stop(taunt_sound);
        }
        
        if window_timer == 20 {
            sound_taunt = false;
        }
    }
    
    if window_timer == 19 {
        sound_taunt = !sound_taunt;
    }
}

#define throwCube
var throwDir = argument[0];
var throwXOffset = argument[1];
var throwYOffset = argument[2];

if heldExplode {
    heldExplodeTimer--;
}
if window == 1 && window_timer == get_window_value(throwDir, 1, AG_WINDOW_LENGTH) {
    var cubeHitbox = create_hitbox(AT_NSPECIAL, 1, x + throwXOffset, y + throwYOffset);
        cubeHitbox.hsp = throwHsp*spr_dir;
        cubeHitbox.vsp = throwVsp;
        cubeHitbox.throwDir = throwDir;
        cubeHitbox.bounceHsp = bounceHsp;
        cubeHitbox.bounceVsp = bounceVsp;
        cubeHitbox.power = heldPower;
        cubeHitbox.willExplode = heldExplode;
        cubeHitbox.explodeTimer = heldExplodeTimer;
        cubeHitbox.explodeThreshhold = heldExplodeThreshhold;
        cubeHitbox.hitCooldown = 0;
        cubeHitbox.was_grounded = false;
    holdingCube = false;
    heldExplode = false;
    heldExplodeTimer = heldExplodeMax;
    has_airdodge = true;
}