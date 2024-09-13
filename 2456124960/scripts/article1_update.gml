

print(string(free));

if (objectType == 0) {
    obj_timer++;
    hit_lockout--;

    vsp = round(fake_vsp);
    hsp = round(fake_hsp);

    canDetonate = 1;

    if (size == 0) {
        sprite_index = sprite_get("crystalexp_small");
        mask_index = sprite_get("crystal_mask");
    } else {
        sprite_index = sprite_get("crystalexp_large");
        mask_index = sprite_get("crystal_mask_large");
    }

    if (player_id.in_adventure) {
        adventure_timer--;
        if (adventure_timer < 0) {
            player_id.crystalOut = 0;
            instance_destroy(hb);
            instance_destroy();
            exit;
        }
    } else {
        phone_blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);
        if (y > phone_blastzone_b + 500) {
            player_id.crystalOut = 0;
            instance_destroy(hb);
            instance_destroy();
            exit;
        }
    }
    
    if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
        sound_play(asset_get("sfx_clairen_hit_med"));
        spawn_hit_fx(floor(x), floor(y), 256);
        player_id.crystalOut = 0;
        instance_destroy(hb);
        instance_destroy();
        exit;
    }

    if (article_mode == 0) {
        if (free) {
            if (fake_vsp < 10) {
                fake_vsp += 0.4;
            } else {
                fake_vsp += 0.65;	
            }
        } else {
            fake_vsp = 2;
        }
        
        if (fake_hsp > 1) {
            fake_hsp -= 0.15;
        }
        if (fake_hsp < -1) {
            fake_hsp += 0.15;
        }

        if (free) {hasnt_landed = true;}
    
        if (hasnt_landed == true && !free && !onPlat) {
            sound_play(asset_get("sfx_shovel_hit_med2"), false, noone, 0.5, 0.9);
            spawn_base_dust(x, y + 20, "walk");
            hasnt_landed = false;
        }
        
        if (place_meeting(x, y + 10, asset_get("jumpthrough_32_obj")) || place_meeting(x, y + 10, asset_get("obj_stage_article_platform"))) {
            
        } else if (!free) {
            if (place_meeting(x, y + 10, asset_get("par_jumpthrough"))) {
                decay_timer = 0;
                free = false;
                //print("ball is on plat");
                onPlat = true;
            } else {
                onPlat = false;
            }
        }

        if obj_timer <= 1 {
            hb = create_hitbox(AT_NSPECIAL, 2, round(x + fake_hsp), round(y + fake_vsp));
        } else if (instance_exists(hb)) {
            hb.x = x + fake_hsp;
            hb.y = y + fake_vsp;
            if (hb.player != player) {canDetonate = 0;}
        }

        if (!instance_exists(hb)) {
            if (obj_timer > hitbox_lifetime && obj_timer - 2 < hitbox_lifetime) {

            } else {
                should_spawn_hb = 0;
            }
        }

        if (!free && obj_timer > 10) {
            decay_timer++;		
            fake_hsp *= 0.9;
            if (onPlat == false) {
                if (instance_exists(hb)) {instance_destroy(hb);}
            }
            
            if (decay_timer < 2 && !hasnt_landed) {
                fake_vsp = -6 + (4 * decay_timer) + (2 * onPlat);
            } else {           
                if (decay_timer % 5 > 2) { 
                    if (size == 0) {image_index = 11;} 
                    else {image_index = 12;}
                } else {
                    image_index = 0;
                }
            }	
            
            if (decay_timer > 80) {
                player_id.crystalOut = 0;
                instance_destroy(hb);
                instance_destroy();
                exit;
            }
        }
        
        
        with (asset_get("pHitBox")){
            if (place_meeting(x,y,other.id) && (other.player_id != player_id || attack != AT_NSPECIAL) && other.hit_lockout < 0) {
                if (type == 1) {
                    with (other) {
                        if (instance_exists(hb)) {instance_destroy(hb);} //i hope this makes trades less likely??
                    }
                    player_id.old_vsp = player_id.vsp;
                    player_id.old_hsp = player_id.hsp;
                    //maintains the attacking player's velocity through hitpause
                    
                    other.hitstop = 5; //Article freeze frames
                    if (type == 1) {
                        player_id.hitpause = true;   //Player freeze frames
                        player_id.hitstop = 5;      //Player freeze frames, cont.
                    }
                    player_id.has_hit = true;    //Does not incur whifflag on the player that hit the crystal
                    other.hitbox_hit = self;
                    sound_play(other.hitbox_hit.sound_effect);
                    with (other) {
                        var tempFX = spawn_hit_fx(x, y, player_id.buffChargeRing);                            
                        tempFX.depth = depth - 1;                          
                    }
                    
                    other.hitMode = 1; //telling the article it's time to take knockback
                    other.hitAngle = kb_angle; //storing data of the attack that was hit with
                    other.hitForce = kb_value; //''
                    other.hitDir = spr_dir; //''

                    other.hit_lockout = 10; //prevents the attacker from hitting again in hitpause
                    
                    other.decay_timer = 0; //resets the despawn timer when hit
                    other.image_index = 0; //''
                    other.free = true;
                    other.onPlat = false;
                    
                    other.gotParried = 0;
                    
                    other.hitPlayer = player;
                    
                    other.myOutlineColor = get_player_hud_color( player_id.player )
                    
                    if (player_id.nateFromPowervale == 1 && attack == AT_NSPECIAL) {
                        if (x < other.x) {
                            other.hitAngle = 70;
                        } else {
                            other.hitAngle = 110;
                        }
                    }
                    
                    if (other.player_id != player_id) {
                        //print_debug("hit by another player");
                        hitByOpponent = 1;
                    } else if (true) {
                        if (attack == AT_FAIR && false) {
                            if (player_id.old_vsp > -5) {
                                player_id.old_vsp = -5;
                            }
                            if (abs(player_id.old_hsp) > 4) {
                                player_id.old_hsp *= 0.8;
                            }
                        }
                        
                        if (attack == AT_BAIR) {
                            player_id.old_hsp += 7 * spr_dir;
                            if (player_id.old_vsp > -4) {
                                player_id.old_vsp = -4;
                            }
                            player_id.old_vsp -= 2;
                        }

                        if (attack == AT_DAIR) {
                            spawn_hit_fx( x, y+15, 14 );
                            if (hbox_num == 1) {
                                if (player_id.old_vsp > -12) {
                                    player_id.old_vsp = -12;
                                }
                                if (abs(player_id.old_hsp) > 3) {
                                    player_id.old_hsp *= 0.6;
                                }
                            } else {
                                if (player_id.old_vsp > -8) {
                                    player_id.old_vsp = -8;
                                }
                                if (abs(player_id.old_hsp) > 4) {
                                    player_id.old_hsp *= 0.9;
                                }
                            }
                        }
                    }
                } else if (plasma_safe == false && transcendent == false) {
                    //destroyed = true;
                }
            }
        }
        
        /*
        if (gotParried == 1) {
            if (instance_exists(hb)) {instance_destroy(hb);}
            
            hitstop = 5; //Article freeze frames
            
            var tempFX = spawn_hit_fx(x, y, player_id.buffChargeRing);                            
            tempFX.depth = depth - 1;                          
            
            hitMode = 1; //telling the article it's time to take knockback
            hitAngle = point_direction(x, y, parryTarget.x, parryTarget.y - 100); //storing data of the attack that was hit with
            hitForce = 25; //''
            hitDir = sign(x - parryTarget.x); //''

            hit_lockout = 10; //prevents the attacker from hitting again in hitpause
            
            decay_timer = 0; //resets the despawn timer when hit
            image_index = 0; //''
            free = true;
            onPlat = false;
            
            hitPlayer = parriedPlayer;
            
            myOutlineColor = get_player_hud_color( parriedPlayer )
            gotParried = 0;
        }
        */
        
        if (gotParried >= 1) {
            if (instance_exists(hb)) {instance_destroy(hb);}
            
            var tempFX = spawn_hit_fx(x, y, player_id.buffChargeRing);                            
            tempFX.depth = depth - 1;                          
            
            /*
            with (oPlayer) {
                if (id != other.parriedPlayer.id) {
                    if (other.parryTarget == noone) {
                        other.parryTarget = player;
                    } else {
                        if (point_distance(x, y - 30, other.x, other.y - 30) < point_distance(other.parryTarget.x, other.parryTarget.y - 30, other.x, other.y - 30)) {
                            other.parryTarget = player;
                        }
                    }
                }
            }
            print("parryTarget is player number " + string(parryTarget));
            */
            
            with (oPlayer) {
                if (player != other.parriedPlayer) {
                    other.fake_hsp = lengthdir_x(20, point_direction(other.x, other.y, x, y - 30));
                    other.fake_vsp = lengthdir_y(20, point_direction(other.x, other.y, x, y - 30));
                }
            }
            
            //fake_hsp = lengthdir_x(20, point_direction(x, y, parryTarget.x, parryTarget.y - 30));
            //fake_vsp = lengthdir_y(20, point_direction(x, y, parryTarget.x, parryTarget.y - 30));
                
            hb = create_hitbox(AT_NSPECIAL, 1, round(x + fake_hsp), round(y + fake_vsp));
            hb.player = parriedPlayer;

            hit_lockout = 10; //prevents the attacker from hitting again in hitpause
            
            decay_timer = 0; //resets the despawn timer when hit
            image_index = 0; //''
            free = true;
            onPlat = false;
            
            myOutlineColor = get_player_hud_color( parriedPlayer );
            gotParried --;
        }
        
        if (hitMode == 1) {
            if (hitAngle == 361) {hitAngle = 45;}
            if (hitAngle < 46 && hitAngle > 0) {hitAngle -= 5;}
            if (hitAngle < 41 && hitAngle > 0) {hitAngle -= 5;}
            
            if (hitAngle > 131 && hitAngle < 180) {hitAngle += 5;}
            if (hitAngle > 136 && hitAngle < 180) {hitAngle += 5;}
            if (hitAngle > 75 && hitAngle < 90) {hitAngle += 5;}
            if (hitAngle > 90 && hitAngle < 105) {hitAngle -= 5;}
            
            //print_debug("launching at angle " + string(hitAngle));
            fake_vsp = -1 * (2 + (hitForce * 1.6)) * dsin(hitAngle);
            fake_hsp = 1.2 * (2 + (hitForce * 1.6)) * (dcos(hitAngle)) * hitDir;
            hitMode = 0;
            instance_destroy(hb);
            hb = create_hitbox(AT_NSPECIAL, 1, round(x + fake_hsp), round(y + fake_vsp));
            hb.player = hitPlayer;
            hb.hit_effect = 1;
        }
        vsp = round(fake_vsp);
        hsp = round(fake_hsp);
    } else if (article_mode == 1) {
        if (empowered == 1) {
            if (obj_timer % 2 != 0) {
                obj_timer++;
            }
                
            player_id.actionMeterFill = 0;
            player_id.actionMeterStatus = 0;
        }
        if (obj_timer < 3) {
            instance_destroy(hb);
        }

        fake_vsp = 0;
        fake_hsp = 0;
        image_index = obj_timer / 2;
        if (obj_timer > 22) {
            player_id.crystalOut = 0;
            //instance_destroy(hb);
            instance_destroy();
            exit;
        }
        if (obj_timer == 4) {
            sound_play(asset_get("sfx_icehit_medium1"));
        }
        if (obj_timer == 12) {
            sound_play(asset_get("sfx_ice_shatter_big"));
        }
        if (obj_timer == 16) {
            if (size == 0) {hb = create_hitbox(AT_NSPECIAL, 4, x, y);}
            else {hb = create_hitbox(AT_NSPECIAL, 5, x, y);}
            if (gotParried > 0) {
                hb.player = parriedPlayer;
            }
        }
        if (obj_timer == 18 && empowered == 1) {
            if (size == 0) {
                for (i = 1; i < 9; i++) {
                    hb = create_hitbox(AT_NSPECIAL_2, i, x, y);
                    hb.spr_dir = 1;
                }
            } else {
                for (i = 11; i < 23; i++) {
                    hb = create_hitbox(AT_NSPECIAL_2, i, x, y);
                    hb.spr_dir = 1;
                }
            }
        }
        if (obj_timer < 10) {
            obj_timer+=0.5;
        }
        can_be_grounded = false;
        ignores_walls = true;
        
        if (obj_timer < 16) {
            with (asset_get("pHitBox")){
                if (place_meeting(x,y,other.id) && (other.player_id != player_id || attack != AT_NSPECIAL) && other.hit_lockout < 0 && other.empowered != 1) {
                    if (type == 1) {
                        player_id.old_vsp = player_id.vsp;
                        player_id.old_hsp = player_id.hsp;
                        //maintains the attacking player's velocity through hitpause
                        
                        other.hitstop = 5; //Article freeze frames
                        if (type == 1) {
                            player_id.hitpause = true;   //Player freeze frames
                            player_id.hitstop = 5;      //Player freeze frames, cont.
                        }
                        player_id.has_hit = true;    //Does not incur whifflag on the player that hit the crystal
                        other.hitbox_hit = self;
                        sound_play(other.hitbox_hit.sound_effect);
                        sound_play(asset_get("mfx_unstar"), false, noone);
                        with (other) {
                            var tempFX = spawn_hit_fx(x, y, player_id.buffChargeRing);                            
                            tempFX.depth = -10;
                        }
                        
                        other.article_mode = 2; //telling the article it's time to take knockback
                        other.decay_timer = 0; //resets the despawn timer when hit
                        other.image_index = 0; //''
                        other.free = true;
                        
                        if (other.player_id != player_id) {
                            //print_debug("hit by another player");
                            hitByOpponent = 1;
                        }
                    } else if (plasma_safe == false && transcendent == false) {
                        //destroyed = true;
                    }
                }
            }
        }
    } else if (article_mode == 2) {
        fake_hsp *= 0.9;
        fake_vsp *= 0.9;
        if (size == 0) {
            sprite_index = sprite_get("crystalfade_small");
        } else {
            sprite_index = sprite_get("crystalfade_large");        
        }
        if (decay_timer < 15) {
            image_index = decay_timer / 3;
        } else {
            image_index = 5;
            image_alpha = 1 - ((decay_timer - 15)/15);
            vsp = ((decay_timer - 15) * 0.5);
            ignores_walls = true;
        }
        decay_timer++;
        
        if (decay_timer > 30) {
            player_id.crystalOut = 0;
            instance_destroy(hb);
            instance_destroy();
            exit;
        }
    }
    
    if (player_id.state == PS_RESPAWN || player_id.was_parried == true) {
        var tempFX = spawn_hit_fx(x, y, player_id.buffChargeSparkle1);  
        tempFX.vsp = -4;
        player_id.crystalOut = 0;
        instance_destroy(hb);
        instance_destroy();
        exit;
    }
} else if (objectType == 1) {
    obj_timer++;
    hit_lockout--;

    vsp = round(fake_vsp);
    hsp = round(fake_hsp);

    canDetonate = 1;

    sprite_index = sprite_get("caltrop");
    mask_index = sprite_get("crystal_mask");
    image_index = size;

    if (player_id.in_adventure) {
        adventure_timer--;
        if (adventure_timer < 0) {
            instance_destroy(hb);
            instance_destroy();
            exit;
        }
    } else {
        phone_blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);
        if (y > phone_blastzone_b + 500) {
            instance_destroy(hb);
            instance_destroy();
            exit;
        }
    }
    
    if (free) {
        if (fake_vsp < 10) {
            fake_vsp += 0.4;
        } else {
            fake_vsp += 0.65;	
        }
    } else {
        fake_vsp = 0;
        fake_hsp = 0;
    }
    
    if (fake_hsp > 1) {
        fake_hsp -= 0.15;
    } else if (fake_hsp < -1) {
        fake_hsp += 0.15;
    } else {
        fake_hsp = 0;
    }
    
    if ((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_DSPECIAL && player_id.window == 2 && player_id.window_timer == 0) {
        if (size == 0) {
            var tempFX = spawn_hit_fx(x, y, player_id.buffChargeSparkle1);  
        } else {
            var tempFX = spawn_hit_fx(x, y, player_id.beamChargeSparkle1);              
        }
        tempFX.vsp = -4;
        instance_destroy(hb);
        instance_destroy();
        exit;
    }
    
    if (player_id.state == PS_RESPAWN || player_id.was_parried == true) {
        if (size == 0) {
            var tempFX = spawn_hit_fx(x, y, player_id.buffChargeSparkle1);  
        } else {
            var tempFX = spawn_hit_fx(x, y, player_id.beamChargeSparkle1);              
        }
        tempFX.vsp = -4;
        instance_destroy(hb);
        instance_destroy();
        exit;
    }
    
    if (free) {hasnt_landed = true;}
    
    if (hasnt_landed == true && !free) {
        sound_play(asset_get("sfx_shovel_hit_light1"), false, noone, 0.5, 1.2);
        spawn_base_dust(x, y + 20, "walk");
        hasnt_landed = false;
    }
    
    if (!free) {
        with (oPlayer) {
            if (id != other.player_id && (state == PS_LAND || state == PS_PRATLAND || state == PS_HITSTUN_LAND || state == PS_LANDING_LAG || (state == PS_WAVELAND && state_timer < 2)) && point_distance(x, y, other.x, other.y) < (30 + (10 * other.size))) {
                //print("ouchie");
                with (other) {
                    hb = create_hitbox(AT_DSPECIAL, 2 - size, other.x, other.y - 20);
                    
                    instance_destroy();
                    exit;
                }
            }
        }
    
        with (asset_get("pHitBox")) {
            if (place_meeting(x,y,other.id) && other.player_id != player_id && other.hit_lockout < 0) {
                if (type == 1) {
                    player_id.old_vsp = player_id.vsp;
                    player_id.old_hsp = player_id.hsp;
                    //maintains the attacking player's velocity through hitpause
                    
                    other.hitstop = 2; //Article freeze frames
                    if (type == 1) {
                        player_id.hitpause = true;   //Player freeze frames
                        player_id.hitstop = 2;      //Player freeze frames, cont.
                    }
                    player_id.has_hit = true;    //Does not incur whifflag on the player that hit the crystal
                    other.hitbox_hit = self;
                    sound_play(other.hitbox_hit.sound_effect);
                    sound_play(asset_get("sfx_icehit_medium1"), false, noone);
                    
                    other.fake_vsp = -6;
                    other.fake_hsp = -5 + (random_func(6, 10, false));
                    other.free = true;
                    
                    if (other.size == 0) {
                        other.can_be_grounded = false;
                        other.ignores_walls = true;
                    } else {
                        other.size = 0;
                        sound_play(asset_get("sfx_ice_shatter_big"));
                    }
                    
                    other.hit_lockout = 10;
                    
                } else if (plasma_safe == false && transcendent == false) {
                    //destroyed = true;
                }
            }
        }
        
        with (asset_get("pHitBox")) {
            if (place_meeting(x,y,other.id) && other.player_id == player_id && other.size == 0) {
                if (attack == AT_BAIR || attack == AT_FSTRONG || (attack == AT_FSPECIAL && hbox_num != 1 && hbox_num != 6 && hbox_num != 4) || attack == AT_FTILT || (attack == AT_JAB && hbox_num > 2 && hbox_num != 9)) {
                    player_id.old_vsp = player_id.vsp;
                    player_id.old_hsp = player_id.hsp;
                    //maintains the attacking player's velocity through hitpause
                    
                    other.hitstop = 2; //Article freeze frames
                    if (type == 1) {
                        player_id.hitpause = true;   //Player freeze frames
                        player_id.hitstop = 2;      //Player freeze frames, cont.
                    }
                    player_id.has_hit = true;    //Does not incur whifflag on the player that hit the crystal
                    other.hitbox_hit = self;
                    sound_play(other.hitbox_hit.sound_effect);
                    sound_play(asset_get("sfx_ice_fspecial_hit_ground"), false, noone);
                    spawn_hit_fx(other.x, other.y, 111)
                    
                    other.size = 1;
                    
                } else if (plasma_safe == false && transcendent == false) {
                    //destroyed = true;
                }
            }
        }
        
        with (asset_get("pHitBox")) {
            if (place_meeting(x,y,other.id) && other.player_id == player_id && other.hit_lockout < 0 && other.free == false && false) {
                if (attack == AT_USPECIAL_GROUND && hbox_num == 2) {
                    player_id.old_vsp = player_id.vsp;
                    player_id.old_hsp = player_id.hsp;
                    //maintains the attacking player's velocity through hitpause
                    
                    other.hitstop = 2; //Article freeze frames
                    if (type == 1) {
                        player_id.hitpause = true;   //Player freeze frames
                        player_id.hitstop = 2;      //Player freeze frames, cont.
                    }
                    player_id.has_hit = true;    //Does not incur whifflag on the player that hit the crystal
                    other.hitbox_hit = self;
                    
                    other.fake_vsp = -16;
                    other.free = true;
                    sound_play(asset_get("sfx_shovel_hit_heavy1"), false, noone, 0.5, 0.98);
                
                    other.hit_lockout = 10;
                    
                    with (other) {
                        hb = create_hitbox(AT_DSPECIAL, 3, x, y);
                    }
                    
                } else if (plasma_safe == false && transcendent == false) {
                    //destroyed = true;
                }
            }
        }
    }
    
    if (instance_exists(hb)) {
        hb.x = x + fake_hsp;
        hb.y = y + fake_vsp;
    }
    
    if (ignores_walls == true) {
        //image_alpha = 0.5;
        image_angle += 20;
    }
    
    if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
        sound_play(asset_get("sfx_clairen_hit_med"));
        spawn_hit_fx(floor(x), floor(y), 256);
        instance_destroy(hb);
        instance_destroy();
        exit;
    }
}

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;