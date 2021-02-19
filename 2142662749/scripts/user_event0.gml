var playerDistX = x - player_id.x;
var playerDistY = y - player_id.y;
var playerDistAbs = sqrt(playerDistX*playerDistX + playerDistY*playerDistY);

//attack update
if (attack == AT_FSPECIAL) {
    if (window == 1) {
        with player_id {
            reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
        }
        chainHit = false;
        if (window_timer < 10) {
            hsp *= 0.92;
        } else {
            hsp = 0;
        }
    }
    if (window == 2) {
        if (chainHit) && (!hitpause) {
            chainEndX -= spr_dir*10;
            with chainPlayerID {
                x -= other.spr_dir*10;
                y = other.chainY + 29;
            }
            if (abs(chainOriginX - chainEndX) < 25) {
                window = 4;
                window_timer = 0;
                with player_id {
                    set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
                }
            } else {
                window_timer = 1;
            }
        } else if (window_timer mod 5 == 0) && (!hitpause) {
            sound_play(asset_get("sfx_ell_utilt_loop"));
        }
    }
    
    if (window == 3) {
        chainEndX -= spr_dir*20;
    }
    
    if (window == 4) {
        chainEndX -= spr_dir*10;
        with chainPlayerID {
            if (other.window_timer == 1) {
                x = other.x + (60*other.spr_dir)
                y = other.y - 2;
            }
            if (other.window_timer > 3) {
                y -= 5;
            }
            
            if (other.window_timer >= 2) {
                x -= other.spr_dir*20;
            }
            
            
        }
        vsp = 0;
        with player_id {
            var _angle = 0;
            var _bkb = 0;
            if (up_down && !down_down) {
                _angle = 110;
                _bkb = 11;
            } else if (down_down && !up_down) {
                _angle = 145;
                _bkb = 8;
            } else {
                _angle = 130;
                _bkb = 10;
            }
            set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, _angle);
            set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, _bkb);
        }
    }
    
    if (window == 5) {
        if (window_timer <= 1) && (!hitpause) {
            with player_id {
                if (other.chainPlayerID == id) {
                    state = PS_IDLE_AIR;
                    hitstop = 0;
                    
                    var _hsp = 0;
                    var _vsp = 0;
                    if (up_down && !down_down) {
                        _hsp = 4;
                        _vsp = 14;
                    } else if (down_down && !up_down) {
                        _hsp = 12;
                        _vsp = 4;
                    } else {
                        _hsp = 8;
                        _vsp = 10;
                    }
                    
                    hsp = -_hsp*other.spr_dir;
                    vsp = -_vsp;
                }
            }
        }
        
    }
    chainY = y - 29 + vsp;
    chainOriginX = x + (40*spr_dir);
}

if (attack == AT_USPECIAL) {
    can_be_grounded = false;
    var ruSearch = false;
    if (window == 1) {
        if (window_timer == 1) {
            player_id.rocketTimer = 0;
        }
        ruSearch = true;
        hsp = 0;
        vsp *= 0.9;
        if (player_id.left_down && !player_id.right_down && !recovering) || (recovering && x > room_width/2) {
            image_angle += 3;
        } else if (!player_id.left_down && player_id.right_down && !recovering) || (recovering && x < room_width/2) {
            image_angle -= 3;
        }
        if (image_angle > 0) {
            spr_dir = 1;
        } else if (image_angle < 0) {
            spr_dir = -1;
        }
        /*
        var xMod = 70*dsin(image_angle);
        var yMod = -70*dcos(image_angle);
        print_debug(string(yMod))
        with player_id {
            set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, spr_dir*floor(xMod));
            set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, floor(yMod));
        }
        */
    }
    
    if (window == 2) {
        if (state_timer < 30) {
            ruSearch = true;
        }
        var speedMod = 0;
        if (player_id.onRocket) {
            speedMod = -10;
        } else {
            speedMod = -13;
        }
        vsp = speedMod*dcos(image_angle);
        hsp = speedMod*dsin(image_angle);
        
        var duration = 50;
        if (!player_id.special_down && !recovering) || (state_timer > duration) {
            window = 3;
            window_timer = 0;
        }
    }
    
    if (window == 3) {
        ruSearch = false;
        recovering = false;
    }
    
    if (ruSearch) && (playerDistAbs <= rocketDist) && (player_id.state != PS_HITSTUN) && (player_id.state != PS_HITSTUN_LAND) && (window == 1) && (window_timer == 1) {
        player_id.onRocket = true;
        with player_id {
            attack_end();
            if (!free) {
                state = PS_JUMPSQUAT;
                state_timer = 0;
            } else if (state != PS_AIR_DODGE) {
                state = PS_DOUBLE_JUMP;
                state_timer = 14;
                sound_play(djump_sound);
            }
        }
    } else if (window == 3) {
        player_id.onRocket = false;
    }
}

if (attack == AT_DSPECIAL_2) {
    hsp *= 0.92;
    vsp *= 0.85;
    if (window == 1) {
        drawTurret = true;
        spawnX = 0;
        spawnY = 0;
        turretAngle = 0;
        drawLightning = false;
    }
    if (window == 2) {
        if (window_timer == 0) {
            spawn_hit_fx(player_id.x, player_id.y - 18, 256);
        }
        player_id.hsp = 0;
        player_id.vsp = 0;
        
        var spawnX = 0;
        var spawnY = 0;
        if (player_id.up_down) {
            spawnY = -130;
        }
        if (player_id.left_down && !player_id.right_down) {
            spawnX = -130;
        } else if (!player_id.left_down && player_id.right_down) {
            spawnX = 130;
        }
        
        if (spawnX == 0 && spawnY == 0) {
            if (abs(turretAngle) > abs(spawnAngle)) {
                turretAngle -= spr_dir*7.5;
            }
        } else {
            var spawnAngle = darctan2(-spr_dir*spawnY, spr_dir*spawnX);
            print_debug(string(spawnAngle) + ", " + string(turretAngle));
            if (abs(turretAngle) < abs(spawnAngle)) {
                turretAngle += spr_dir*7.5;
            }
        }
    }
    if (window == 3) {
        if (window_timer == 0) {
            if !(player_id.up_down || player_id.left_down || player_id.right_down || player_id.down_down) {
                player_id.x = x;
                player_id.y = y;
                spawn_hit_fx(x, y - 18, 256);
            } else {
                player_id.x = x + spr_dir*130*dcos(turretAngle);
                player_id.y = y - spr_dir*130*dsin(turretAngle);
                spawn_hit_fx(x + spr_dir*130*dcos(turretAngle), y - spr_dir*130*dsin(turretAngle) - 18, 256);
                drawLightning = true;
            }
        }
        
        if (window_timer == 3) && (!hitpause) {
            with player_id {
                teleporting = false;
            }
            create_hitbox(AT_DSPECIAL_2, 1, player_id.x, player_id.y - 18);
        }
        
        if (window_timer < 16) {
            player_id.hsp = 0;
            player_id.vsp = 0;
        }
    }
    
    if (window == 4) {
        drawLightning = false;
    }
}

if (attack == AT_NSPECIAL) {
    depth = -2;
    if (window == 1) {
        turretAngle = 0;
        turretActive = false;
        if (window_timer <= 11) {
            if (player_id.right_down) && (!player_id.left_down) && (spr_dir == -1) && (turretTurning < 0) {
                spr_dir = 1;
                turretTurning = 0;
            }
            
            if (player_id.left_down) && (!player_id.right_down) && (spr_dir == 1) && (turretTurning < 0) {
                spr_dir = -1;
                turretTurning = 0;
            }
        }
        drawTurret = true;
    } else if (window == 2) {
        if (player_id.special_down) {
            turretActive = true;
        }
        if (player_id.special_pressed) {
            turretActive = false;
        }
        var playSound = false;
        if (player_id.up_down && !player_id.down_down) {
            turretAngle += spr_dir*2;
            playSound = true;
        } else if (!player_id.up_down && player_id.down_down) {
            turretAngle -= spr_dir*2;
            playSound = true;
        }
        
        var angleMax = 90;
        var angleMin = -7;
        if (spr_dir == 1) {
            if (turretAngle > angleMax || turretAngle < angleMin) {
                playSound = false;
            }
            turretAngle = clamp(turretAngle, angleMin, angleMax);
        } else if (spr_dir == -1) {
            if (turretAngle > -angleMin || turretAngle < -angleMax) {
                playSound = false;
            }
            turretAngle = clamp(turretAngle, -angleMax, -angleMin);
        }
        with player_id {
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 12*dcos(other.turretAngle));
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -12*other.spr_dir*dsin(other.turretAngle));
            
            set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, -6 + floor(40*dcos(other.turretAngle)));
            set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -23 - floor(other.spr_dir*40*dsin(other.turretAngle)));
        }
        
        if (playSound) && (window_timer == 0) {
            sound_play(asset_get("sfx_propeller_dagger_loop"));
        }
        
        if (!turretActive) {
            window = 3;
            window_timer = 0;
            turretTurning = -10;
        }
    } else if (window == 4) {
        turretAngle *= 0.8;
    }
    
    if (turretTurning >= 0) {
        turretTurning++;
    }
}

if (attack != AT_DSPECIAL_2) && (attack != AT_NSPECIAL) {
    drawTurret = false;
}
