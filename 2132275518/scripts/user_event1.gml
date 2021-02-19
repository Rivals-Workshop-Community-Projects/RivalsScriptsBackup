//Enemy step event
//Used for custom logic

var eid = 0
if ("enemy_id" in self)
    eid = enemy_id;
    
switch (eid) {
    case 0: //Drac
    
        if (can_step()) {
            if (hitpoints <= hp_threshold)
                hp_threshold_hit = true;
            if (!done_intro) {
                boss_intro();
            }
            else if (start_fight) {
                boss_fight();
            }
            
            dracula_mist();
            
            if (visible && sprite_index != sprite_get("dracula1_intro")) {
                with (oPlayer) {
                    if (place_meeting(x, y, other)) {
                        if (other.x < x)
                            x += 2;
                        else
                            x -= 2;
                    }
                }
            }
            
            with (pHitBox) {
                if (orig_player = obj_stage_main.player) {
                    if (attack == AT_NSPECIAL && hbox_num == 5) {
                        var off_x = 0;
                        var off_y = 0;
                        with (obj_stage_main) {
                            off_x = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_X);
                            off_y = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_Y);
                        }
                        with (other) {
                            other.x_pos = ((x + off_x * spr_dir) - obj_stage_main.x);
                            other.y_pos = (y + off_y) - obj_stage_main.y;
                            other.hsp = hsp;
                            other.vsp = vsp;
                            other.spr_dir = spr_dir;
                        }
                    }
                    else {
                        if (attack == AT_NSPECIAL) {
                            if (hbox_num == 2) { //Dark Inferno
                                hsp += 0.4 * spr_dir;
                                hsp = clamp(hsp, -10, 10);
                                
                                if (get_gameplay_time() % 8 == 0) {
                                    var fx = spawn_hit_fx(round(x + (-16 + random_func(3, 32, true))), round(y + (-16 + random_func(3, 32, true))), other.fx_darkinferno_spark);
                                    fx.depth = depth - 0.5;
                                }
                            }
                        }
                    }
                }
            }
            
            with (hit_fx_obj) {
                if (hit_fx == other.fx_smoke) {
                    y -= 12;
                }
                if (hit_fx == other.fx_fire1s || hit_fx == other.fx_darkinferno_s) {
                	paused = other.hitstop > 0;
                }
            }
            
            //Teleporting
            if (teleport_timer > -1) {
                teleport_timer++;
                
                if (teleport_timer == 16) {
                    teleport_times ++;
                    sound_play(sound_get("sfx_dracula_teleport"));
                    var tele_y = spr_index == sprite_get("dracula1_intro") ? y - 32 : room_height
                    var teleport = instance_create(x, tele_y, "obj_stage_article", 3);
                    teleport.depth = depth + 1;
                }
                
                if (teleport_timer == 32) {
                    visible = false;
                }
                
                if (teleport_timer == 176) {
                    visible = true;
                    
                    can_be_grounded = true;
                    ignores_walls = false;
                    //Marker 2 is the ground loacation
                    x = get_marker_x(2) - 240 + random_func(2, 480, true);
                    y = get_marker_y(2);
                    depth = 0;
                    spr_index = sprite_get("dracula1_idle");
                    img_index = 0;
                    
                    sound_play(sound_get("sfx_dracula_teleport"));
                    var teleport = instance_create(x, room_height, "obj_stage_article", 3);
                    teleport.depth = depth + 1;
                }
                
                if (teleport_timer >= 208) {
                    teleport_timer = -1;
                }
            }
        }
    break;
    
    case 1: //Big drac
        if (can_step()) {
            if (hitpoints <= hp_threshold)
                hp_threshold_hit = true;
            if (!done_intro) {
                boss2_intro();
            }
            else if (start_fight) {
            	boss2_fight();	
            }
        } 
        with (pHitBox) {
            if (orig_player = obj_stage_main.player) {
                if (attack == AT_NSPECIAL_2 && type != 2) {
                    var off_x = 0;
                    var off_y = 0;
                    with (obj_stage_main) {
                        off_x = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_X);
                        off_y = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_Y);
                    }
                    with (other) {
                        other.x_pos = ((x + off_x * spr_dir) - obj_stage_main.x);
                        other.y_pos = (y + off_y) - obj_stage_main.y;
                        other.hsp = hsp;
                        other.vsp = vsp;
                    }
                }
                
                if (attack == AT_NSPECIAL_2 && hbox_num == 3) { 
                	var ang_mod = (spr_dir == -1) ? 180 : -90;
                	proj_angle = radtodeg(arctan2(-vsp, hsp)) - (45 + ang_mod);
                	image_angle = proj_angle;
                }
                
                if (attack == AT_NSPECIAL_2 && hbox_num == 8) { 
                	var ang_mod = (spr_dir == -1) ? 180 : -90;
                	proj_angle = radtodeg(arctan2(-vsp, hsp)) - (45 + ang_mod);
                	image_angle = proj_angle;
                	
                	if (hitbox_timer >= 80) {
                		with (other) {
                			target_player_rand()
	                		var rand_x = ai_target.x - 64 + random_func(2, 128, true);
	                		var fire = create_hitbox(AT_NSPECIAL_2, 9, round(rand_x), round(view_get_yview() + 16));
				            fire.vsp = 4;
                		}
                		instance_destroy(id);
                		continue;
                	}
                } 
                if (attack == AT_NSPECIAL_2 && hbox_num == 9) { 
                	var ang_mod = (spr_dir == -1) ? 180 : -90;
                	proj_angle = radtodeg(arctan2(-vsp, hsp)) - (45 + ang_mod);
                	image_angle = proj_angle;
                	if (!free) {
                		with (other) {
	                		for (var i = -3; i <= 3; i += 2) {
		                		var fire = create_hitbox(AT_NSPECIAL_2, 10, round(other.x), round(other.y));
					            fire.hsp = 2 * i;
	                		}
                			sound_play(asset_get("sfx_ori_spirit_flame_2"));
                		}
                		instance_destroy(id);
                		continue;
                	}
                }
            }
        }
        
        if (hitpoints <= hp_threshold)
            hp_threshold_hit = true;
            
        if (visible) {
            with (oPlayer) {
                if (place_meeting(x, y, other)) {
                    if (other.x < x)
                        x += 2;
                    else
                        x -= 2;
                }
            }
        }
        
	    with (hit_fx_obj) {
	        if (hit_fx == other.fx_shock) {
	            image_xscale += 0.25;
	        }
	    }
    break;
}

#define boss_intro
intro_timer ++;
invincible = true;

if (phase == 0) { //Sitting
    spr_index = sprite_get("dracula1_intro");
    img_index = 0;
    depth = 2;
}
if (phase == 1) { //Throwing Glass
    if (intro_timer == 10) {
        var g = instance_create(x + 8, y - 40, "obj_stage_article", 2)
        g.image_index = 0;
        g.hsp = 5.5;
        g.vsp = 2;
        img_index = 1;
    }
    if (intro_timer == 18) {
        img_index = 2;
    }
    
    if (intro_timer >= 32 && !threw_glass) {
        phase = 2;
        intro_timer = 0;
    }
}
if (phase == 2) { 
    
    if (intro_timer == 10) {
        obj_stage_main.show_healthbar = true;
        img_index = 3;
    }
    if (intro_timer == 20) {
        img_index = 4;
    }
    if (intro_timer == 30) {
        img_index = 5;
    }
    if (intro_timer == 60) {
        img_index = 6;
    }
    if (intro_timer == 70) {
        img_index = 7;
    }
    if (intro_timer == 80) {
        img_index = 8;
	    music_play_file("music_loop");
    }
    if (intro_timer == 95) {
        teleport_timer = 0;
        phase = 0;
        done_intro = true;
    }
}
#define boss_fight

invincible = !visible;

depth = 0;
var wait_time = obj_stage_main.hard_mode ? 20 : 40;

switch(attack) {
    case 0: //Idling
        if (teleport_timer == -1) {
            attack_timer ++;
        }
        if (instance_exists(ai_target)) {
            if (ai_target.x < x)
                spr_dir = -1;
            else
                spr_dir = 1;
        }
        if (attack_timer == wait_time) {
            var chance = round(random_func(2, 100, true));
            attack = chance <= 50 ? next_attack : 1;
            attack_timer = 0;
        }
    break;
    case 1: //Dashing back
        attack_timer ++;
        img_index += 0.3;
        if (attack_timer == 1) {
            hsp = -4 * spr_dir;
            sound_play(asset_get("sfx_phase_locket"));
            spr_index = sprite_get("dracula1_dashb");
        }
        if (attack_timer >= 20) {
            hsp *= 0.75;
            
            if (abs(hsp) <= 0.1) {
                hsp = 0;
                attack = next_attack;
                attack_timer = 0;
            }
        }
    break;
    case 2: //Hellfire
        attack_timer ++;
        if (attack_timer == 1) {
            spr_index = sprite_get("dracula1_attack2");
            img_index = 0;
        }
        if (attack_timer == 4) {
            img_index = 1;
        }
        if (attack_timer == 8) {
            img_index = 2;
        }
        if (attack_timer == 12) {
            img_index = 3;
        }
        if (attack_timer == 16) {
            sound_play(asset_get("sfx_boss_fireball"));
            var fire = spawn_hit_fx(round(x + 32 * spr_dir), round(y - 48), fx_fire1s)
            fire.spr_dir = spr_dir;
            fire.depth = depth - 0.5;
        }
        if (attack_timer == 40) {
            sound_play(asset_get("sfx_zetterfireball_fire"));
            for (var i = -1; i <= 1; i++) {
                var fire = create_hitbox(AT_NSPECIAL, 1, round(x + 32 * spr_dir), round(y - 48));
                fire.hsp = 5 * spr_dir;
                fire.vsp = 0.75 * i;
                fire.spr_dir = spr_dir;
                fire.depth = -2;
            }
        }
        if (attack_timer == 64) {
            img_index = 1;
        }
        if (attack_timer == 68) {
            img_index = 0;
        }
        if (attack_timer == 72) {
            spr_index = sprite_get("dracula1_idle");
            img_index = 0;
        }
        if (attack_timer == 72 + wait_time) {
            if (chance <= 50) {
                choose_attack();
                attack = 0;
            }
            else
                attack = 4;
            teleport_timer = 0;
            attack_timer = 0;
        }
    break;
    case 3: //Dark Inferno
        attack_timer ++;
        
        var yy = 96
        if (attack_times % 2 == 0)
            yy = 48
        var amt = obj_stage_main.hard_mode ? 4 : 2;  
        
        if (attack_timer == 1) {
            spr_index = sprite_get("dracula1_attack1");
            img_index = 0;
        }
        if (attack_timer == 4) {
            img_index = 1;
        }
        if (attack_timer == 8) {
            img_index = 2;
        }
        if (attack_timer == 12) {
            img_index = 3;
        }
        if (attack_timer == 16) {
            sound_play(asset_get("sfx_boss_laser"));
            var fire = spawn_hit_fx(round(x + 32 * spr_dir), round(y - yy), fx_darkinferno_s)
            fire.spr_dir = spr_dir;
            fire.depth = depth - 0.5;
        }
        if (attack_timer == 32) {
            var fire = create_hitbox(AT_NSPECIAL, 2, round(x + 32 * spr_dir), round(y - yy));
            fire.hsp = 2 * spr_dir;
            fire.spr_dir = spr_dir;
            fire.depth = depth - 0.5;
            attack_times ++;
            if (attack_times < amt) {
                attack_timer = 12;
            }
        }
        if (attack_timer == 64) {
            img_index = 1;
        }
        if (attack_timer == 68) {
            img_index = 0;
        }
        if (attack_timer == 72) {
            spr_index = sprite_get("dracula1_idle");
            img_index = 0;
        }
        if (attack_timer == 72 + wait_time) {
            var chance = round(random_func(2, 100, true));
            if (chance <= 50) {
                choose_attack();
                attack = 0;
                teleport_timer = 0;
            }
            else
                attack = 4;
            attack_timer = 0;
            attack_times = 0;
        }
    break;
    case 4: //Fire Pillars
        attack_timer ++;
        var amt = obj_stage_main.hard_mode ? 12 : 18;  
        if (attack_timer == 1) {
            spr_index = sprite_get("dracula1_attack3");
            img_index = 0;
        }
        if (attack_timer >= 32 && attack_timer <= 112) {
            if (attack_timer % amt == 0) {
                sound_play(asset_get("sfx_zetter_fireball_fire"));
                var fire = instance_create(get_marker_x(2) - 320 + random_func(2, 640, true),get_marker_y(2), "obj_stage_article", 4)
                fire.sprite_index = sprite_get("fx_firepillar_start");
            }
        }
        if (attack_timer == 120) {
            img_index = 1;
        }
        if (attack_timer == 124) {
            img_index = 2;
        }
        if (attack_timer == 128) {
            img_index = 3;
        } 
        if (attack_timer == 144) {
            with (obj_stage_article) {
                if (get_article_script(id) == 4) {
                    visible = false;
                }
            }
            sound_play(asset_get("sfx_abyss_explosion_big"));
        } 
        if (attack_timer == 208) {
            img_index = 2;
        }
        if (attack_timer == 216) {
            spr_index = sprite_get("dracula1_idle");
            img_index = 0;
        }
        if (attack_timer == 216 + wait_time) {
            choose_attack();
            attack = 0;
            teleport_timer = 0;
            attack_timer = 0;
            attack_times = 0;
        }
    break;
    case 5: //Swirl Fire
        attack_timer ++;
        
        var amt = obj_stage_main.hard_mode ? 5 : 3;  
        var times = 4;  
        
        if (attack_timer == 1) {
            spr_index = sprite_get("dracula1_attack1");
            img_index = 0;
        }
        if (attack_timer == 4) {
            img_index = 1;
        }
        if (attack_timer == 8) {
            img_index = 2;
        }
        if (attack_timer == 12) {
            img_index = 3;
        }
        if (attack_timer == 16) {
            sound_play(asset_get("sfx_abyss_portal_spawn"))
            for (var i = 1; i <= amt; i++) {
                var angle = 360 / amt;
                var fire = instance_create(round(x - 32 * spr_dir), round(y - 64), "obj_stage_article", 4)
                fire.sprite_index = sprite_get("fx_swirlfire");
                fire.counter = angle * i;
                fire.spr_dir = attack_times % 2 == 0 ? -1 : 1;
            }
        } 
        if (attack_timer == 80) {
            attack_times ++;
            
            if (attack_times < times) {
                attack_timer = 12;
            }
        }
        if (attack_timer == 96) {
            img_index = 1;
        }
        if (attack_timer == 100) {
            img_index = 0;
        }
        if (attack_timer == 104) {
            spr_index = sprite_get("dracula1_idle");
            img_index = 0;
        }
        if (attack_timer == 104 + wait_time) {
            choose_attack();
            attack = 0;
            teleport_timer = 0;
            attack_timer = 0;
            attack_times = 0;
        }
    break;
    case 6: //Bat Moon
        attack_timer ++;
        var spawn_spd = obj_stage_main.hard_mode ? 8 : 12;  
        if (phase == 0) {
            if (attack_timer == 1) {
                spr_index = sprite_get("dracula1_attack3");
                img_index = 0;
            }
            if (attack_timer == 8) {
                img_index = 1;
            }
            if (attack_timer == 12) {
                img_index = 2;
            }
            if (attack_timer == 16) {
                img_index = 3;
            }
            if (attack_timer >= 40 && attack_timer <= 64) {
                if (attack_timer % 4 == 0) {
                    for (var i = 0; i < 8; i++) {
                        
                        var fire = spawn_hit_fx(round(x - 64 + random_func(i, 128, true)), round(y - random_func(i + 1, 144, true)), fx_smoke)
                        fire.depth = depth - 1;
                    }
                }
            }
            if (attack_timer == 32) {
                invincible = true;
                visible = false;
                sound_play(sound_get("sfx_dracula_bat"));
                sound_play(asset_get("sfx_bird_sidespecial_start"));
                for (var i = 0; i < 12; i++) {
                    var off_x = round(-32 + random_func(i + 3, 64, true));
                    var off_y = -1 * round(random_func(i + 1, 128, true)); 
                    var bat = instance_create(round(x + off_x), round(y + off_y), "obj_stage_article", 4)
                    bat.sprite_index = sprite_get("dracula1_bat");
                    bat.parent = id
                    bat.offset_x = off_x;
                    bat.offset_y = off_y;
                    bat.spr_dir = spr_dir;
                    bat.counter = i;
                    bat.image_index = i;
                }
            }
            if (attack_timer == 56) {
                hsp = -3 * spr_dir;
            }
            if (attack_timer >= 64 && attack_timer < 88) {
                hsp += 0.8 * spr_dir;
                hsp = clamp (hsp, -12, 12)
                if (attack_timer % 4 == 0) {
                    sound_play(asset_get("sfx_birdflap"), false, 0, lerp(1, 0, (attack_timer - 48) / 16))
                }
            }
            if (attack_timer >= 88) {
                hsp -= min(abs(hsp), 0.4) * sign(hsp);
                
                if (abs(hsp) <= 0) {
                    attack_timer = 0;
                    phase = 1;
                }
            }
            if (abs(hsp) > 1) {
                if (get_gameplay_time() % 4 == 0) {
                    var hb = create_hitbox(AT_NSPECIAL, 5, round(x), round(y));
                    hb.type = 1;
                }
            }
        }
        else {
            if (attack_timer == 20) {
                invincible = false;
                visible = true;
                sound_play(asset_get("sfx_bird_sidespecial_start"));
                with (obj_stage_article) {
                    if (get_article_script(id) == 4) {
                        instance_destroy(id);
                    }
                } 
                img_index = 3;
            }
            if (attack_timer >= 20 && attack_timer <= 44) {
                if (attack_timer % 4 == 0) {
                    for (var i = 0; i < 8; i++) {
                        
                        var fire = spawn_hit_fx(round(x - 64 + random_func(i, 128, true)), round(y - random_func(i + 1, 144, true)), fx_smoke)
                        fire.depth = depth - 1;
                    }
                }
            }
            if (attack_timer == 72) {
                img_index = 2;
            }
            if (attack_timer == 76) {
                spr_index = sprite_get("dracula1_idle");
                img_index = 0;
            }
            if (attack_timer == 76 + wait_time) {
                choose_attack();
                attack = 0;
                teleport_timer = 0;
                attack_timer = 0;
                attack_times = 0;
                phase = 0;
            }
        }
    break;
}

#define boss2_intro
intro_timer ++;
invincible = true;

if (phase == 0) {
    if (intro_timer == 1) {
        music_fade();
        sprite_index = sprite_get("dracula1_attack3");
        image_index = 0;
    }
    if (intro_timer == 64) {
        image_index = 1;
    }
    if (intro_timer == 72) {
        image_index = 2;
    }
    if (intro_timer == 80) {
        image_index = 3;
    }
    if (intro_timer == 96) {
    	sound_play(sound_get("sfx_dracula_transform1"));
    }
    if (intro_timer > 96) {
        fade_white_timer ++;
        
        if (intro_timer % 12 == 0) {
        	for (var i = 0; i < 6; i++) {
	            var trans = instance_create(x, y - 80, "obj_stage_article", 4)
	            trans.sprite_index = sprite_get("fx_transform");
	            trans.counter = random_func(i, 359, true);
	            trans.visible = false;
        	}
        	
        }
        
        if (fade_white_timer > 160) {
            fade_white_timer = 0;
            intro_timer = 0;
            phase = 1;
        }
    }
}
else if (phase == 1) {
	if (intro_timer == 1) {
    	sound_play(sound_get("sfx_dracula_transform2"));
		sprite_index = sprite_get("dracula2_transform");
		image_index = 0;
	}
	if (intro_timer == 2) {
		image_index = 1;
	}
	if (intro_timer == 4) {
		image_index = 0;
	}
	if (intro_timer == 6) {
		image_index = 1;
	}
	if (intro_timer == 8) {
		image_index = 0;
	}
	if (intro_timer == 10) {
		image_index = 1;
	}
	if (intro_timer == 12) {
		image_index = 2;
	}
	if (intro_timer == 14) {
		image_index = 0;
	}
	if (intro_timer == 16) {
		image_index = 1;
	}
	if (intro_timer == 18) {
		image_index = 2;
	}
	if (intro_timer == 20) {
		image_index = 1;
	}
	if (intro_timer == 22) {
		image_index = 2;
	}
	if (intro_timer == 24) {
		image_index = 3;
	}
	if (intro_timer == 26) {
		image_index = 1;
	}
	if (intro_timer == 28) {
		image_index = 2;
	}
	if (intro_timer == 30) {
		image_index = 3;
	}
	if (intro_timer == 32) {
		image_index = 2;
	}
	if (intro_timer == 34) {
		image_index = 3;
	}
	if (intro_timer == 36) {
		image_index = 2;
	}
	if (intro_timer == 38) {
		image_index = 3;
	}
    if (intro_timer > 38) {
        music_play_file("music_loop2");
        intro_timer = 0;
        var flash = instance_create(0, 0, "obj_stage_article", 4);
        flash.sprite_index = asset_get("empty_sprite")
        phase = 2;
    }
}
else if (phase == 2) {
	if (intro_timer == 1) {
        mask_index = sprite_get("collision_spr2")
		 if (instance_exists(ai_target)) {
            if (ai_target.x < x)
                spr_dir = -1;
            else
                spr_dir = 1;
        }
	}
	if (intro_timer < 120) {
    	sprite_index = sprite_get("dracula2_idle");
    	image_index += 0.08;
	}
	if (intro_timer == 120) {
    	sprite_index = sprite_get("dracula2_attack3");
    	image_index = 0;
	}
	if (intro_timer == 135) {
    	image_index = 1;
    	sound_play(sound_get("sfx_dracula2_roar"))
	}
	if (intro_timer == 140) {
    	image_index = 2;
	}
	
	if (intro_timer > 135 && intro_timer < 224) {
		obj_stage_main.shake_amount = 16;
	}
	
	if (intro_timer >= 260) {
        phase = 0;
        done_intro = true;
        intro_timer = 0;
        next_attack = 1;
	}
}
#define boss2_fight

var wait_time = obj_stage_main.hard_mode ? 20 : 40;

switch(attack) {
    case 0: //Idling
		invincible = false;
        if (attack_timer == 0) {
        	sprite_index = sprite_get("dracula2_idle");
        	image_index = 0;
        }
		if (sprite_index == sprite_get("dracula2_idle")) {
			image_index += 0.08;
        	attack_timer ++;
			
	        if (instance_exists(ai_target)) {
	            if ((ai_target.x < x && spr_dir == 1) || (ai_target.x > x && spr_dir == -1)) {
	            	sprite_index = sprite_get("dracula2_turn");
	        		image_index = 0;
	                spr_dir = -spr_dir;
	            }
	        }
	        if (attack_timer == wait_time) {
	            var chance = round(random_func(2, 100, true));
	            attack = next_attack;
	            attack_timer = 0;
	        }
		}
		else if (sprite_index == sprite_get("dracula2_turn")) {
			image_index += 0.25;
			if (image_index >= image_number) {
	        	sprite_index = sprite_get("dracula2_idle");
	        	image_index = 0;
			}
		}
		
    break;
    case 1: //Jumping to a random spot on the map
    	var jump_time = obj_stage_main.hard_mode ? 15 : 25;
    
    	if (phase == 0) {
	    	attack_timer ++;
	    	
	    	if (attack_timer == 1) {
	    		sprite_index = sprite_get("dracula2_jump");
		        image_index = 0;
	    	}
	    	if (attack_timer == jump_time) {
	    		var rand_x = get_marker_x(2) - 240 + random_func(2, 480, true);
	    		sprite_index = sprite_get("dracula2_jump");
		        image_index = 1;
		        vsp = -10;
		        hsp = arc_calc_x_speed(x, y, rand_x, get_marker_y(2), vsp, grav);
		        phase = 1;
		        attack_timer = 0;
		        sound_play(asset_get("sfx_chester_jump"));
	    	}
    	}
    	else if (phase == 1) {
    		image_index = 1 + floor((clamp(-vsp, -3, 3) + 3) / 3);
    		
    		if (!free && vsp >= 0) {
		        phase = 2;
		        hsp = 0;
		        vsp  = 0;
		        var trans = instance_create(round(x), round(y), "obj_stage_article", 4)
	            trans.sprite_index = sprite_get("fx_shock");
		        sound_play(asset_get("sfx_kragg_rock_shatter"));
		        
		        var hb = create_hitbox(AT_NSPECIAL_2, 1, round(x), round(y));
		        hb.type = 1;
		        var hb2 = create_hitbox(AT_NSPECIAL_2, 2, round(x), round(y));
		        hb2.type = 1;
		        
				obj_stage_main.shake_amount = 8;
		        attack_timer = 0;
    		}
    	}
    	else if (phase == 2) {
	    	attack_timer ++;
	    	
	    	if (attack_timer == 1) {
	    		sprite_index = sprite_get("dracula2_jump");
		        image_index = 0;
	    	}
	    	if (attack_timer == jump_time) {
		        phase = 0;
		        attack_timer = 0;
		        choose_attack2();
                attack = 0;
	    	}
    	}
    break;
    case 2: //Fireballs
    	var fire_amt = obj_stage_main.hard_mode ? 6 : 4;
    	var fire_start_time = obj_stage_main.hard_mode ? 24 : 36;
    	
	    
    	if (attack_timer == 0) {
    		sprite_index = sprite_get("dracula2_attack3");
	        image_index = 0;
    	}
		if (sprite_index == sprite_get("dracula2_attack3")) {
	    	attack_timer ++;
	    	if (attack_timer == fire_start_time) {
		        image_index = 1;
	    	}
	    	if (attack_timer == fire_start_time + 18) {
		        var fires = instance_create(round(x + 80 * spr_dir), round(y - 144), "obj_stage_article", 4)
	            fires.sprite_index = sprite_get("fx_fire2start");
	            fires.parent = id;
		        sound_play(asset_get("sfx_boss_fireball_big"));
	    	}
	    	if (attack_timer == fire_start_time + 18 + 48) {
	    		attack_times ++;
	    		var fire_dir = 300 + random_func(3, 45, true);
	    		if (spr_dir == -1)
	    			fire_dir = 240 - random_func(3, 45, true);
	    			
	    		if (attack_times % 2 == 1) {
		    		for (var i = -1; i <= 1; i++) {
				        var fires = create_hitbox(AT_NSPECIAL_2, 3, round(x + 80 * spr_dir), round(y - 144))
			            fires.spr_dir = spr_dir
			            fires.hsp = lengthdir_x(5, fire_dir + (45 * i))
			            fires.vsp = lengthdir_y(5, fire_dir + (45 * i))
			            var ang_mod = (spr_dir == -1) ? -180 : -90;
			            fires.image_angle = (fire_dir + (45 * i)) - (45 + ang_mod);
			            fires.proj_angle = (fire_dir + (45 * i)) - (45 + ang_mod);
		    		}
	    		}
	    		else {
	    			for (var i = -0.5; i <= 0.5; i++) {
				        var fires = create_hitbox(AT_NSPECIAL_2, 3, round(x + 80 * spr_dir), round(y - 144))
			            fires.spr_dir = spr_dir
			            fires.hsp = lengthdir_x(5, fire_dir + (45 * i))
			            fires.vsp = lengthdir_y(5, fire_dir + (45 * i))
			            var ang_mod = (spr_dir == -1) ? -180 : -90;
			            fires.image_angle = (fire_dir + (45 * i)) - (45 + ang_mod);
			            fires.proj_angle = (fire_dir + (45 * i)) - (45 + ang_mod);
		    		}
	    		}
		        image_index = 2;
		        sound_play(asset_get("sfx_boss_fireball"));
	    	}
	    	if (attack_timer == fire_start_time + 18 + 56) {
		        image_index = 1;
	    	}
	    	if (attack_times < fire_amt) {
	    		if (attack_timer == fire_start_time + 18 + 56) {
		        	if (instance_exists(ai_target)) {
			            if ((ai_target.x < x && spr_dir == 1) || (ai_target.x > x && spr_dir == -1)) {
			            	sprite_index = sprite_get("dracula2_turn");
			        		image_index = 0;
			                spr_dir = -spr_dir;
			            }
			        }
	    		}
	    		if (attack_timer == fire_start_time + 18 + 88) {
			        var fires = instance_create(round(x + 80 * spr_dir), round(y - 144), "obj_stage_article", 4)
		            fires.sprite_index = sprite_get("fx_fire2start");
		            fires.timer = 36;
	            	fires.parent = id;
		        	attack_timer = fire_start_time + 18 + 36; 
	    		}
	    	}
	    	else {
	    		if (attack_timer == fire_start_time + 18 + 80) {
		        	image_index = 0;
	    		}
	    		if (attack_timer == fire_start_time + 18 + 104) {
			        phase = 0;
			        attack_timer = 0;
			        choose_attack2();
	                attack = 0;
	                attack_times = 0;
	    		}
	    	}
		}
	    else if (sprite_index == sprite_get("dracula2_turn")) {
			image_index += 0.25;
			if (image_index >= image_number) {
	        	sprite_index = sprite_get("dracula2_attack3");
	        	image_index = 1;
			}
		}
    break;
    case 3: //Claw swipe
    	attack_timer ++;	
    	if (attack_timer == 1) {
    		sprite_index = sprite_get("dracula2_attack2");
	        image_index = 0;
	        claw_spr = sprite_get("dracula2_claw1");
    	}
    	if (attack_timer == 24) {
	        image_index = 1;
    	}
    	if (attack_timer == 28) {
	        image_index = 2; 
	        var hb = create_hitbox(AT_NSPECIAL_2, 4, round(x), round(y));
	        hb.type = 1;
	        var hb2 = create_hitbox(AT_NSPECIAL_2, 5, round(x), round(y));
	        hb2.type = 1;
		    sound_play(asset_get("sfx_charge_blade_swing"));
    	}
    	if (attack_timer == 32) {
	        image_index = 3;
    	}
    	if (attack_timer == 36) {
	        image_index = 4;
    	}
    	if (attack_timer == 40) {
	        image_index = 5;
    	}
    	if (attack_timer == 104) {
	        phase = 0;
	        attack_timer = 0;
	        choose_attack2();
            attack = 0;
            attack_times = 0;
            claw_spr = -1;
    		claw_img = 0;
		}
    	claw_img = image_index;
    break;
    case 4: //Electric wave
    	attack_timer ++;	
    	if (attack_timer == 1) {
		    sound_play(asset_get("sfx_ori_sein_strong_start"));
    		sprite_index = sprite_get("dracula2_attack1");
	        image_index = 0;
	        claw_spr = sprite_get("dracula2_electric");
    		claw_img = 7;
    	}
    	if (attack_timer == 24) {
	        image_index = 1;
    	}
    	if (attack_timer == 32) {
	        image_index = 2
    	}
    	if (attack_timer == 40) {
	        claw_img = 0
    	}
    	if (attack_timer == 44) {
	        claw_img = 1
    	}
    	if (attack_timer == 48) {
	        claw_img = 2
    	}
    	if (attack_timer == 52) {
	        claw_img = 3
    	}
    	if (attack_timer == 56) {
	        claw_img = 4
    	}
    	if (attack_timer == 60) {
	        image_index = 3
	        claw_img = 5
    	}
    	if (attack_timer == 68) {
	        image_index = 4
	        claw_img = 6
    	}
    	if (attack_timer == 80) {
	        image_index = 2; 
	        var hb = create_hitbox(AT_NSPECIAL_2, 6, round(x + (104 * spr_dir)), round(y - 128));
	        hb.hsp = 18 * spr_dir;
	        var hb2 = create_hitbox(AT_NSPECIAL_2, 7, round(x), round(y));
	        hb2.type = 1;
		    sound_play(asset_get("sfx_ori_charged_flame_release"));
    		claw_img = 7;
	        image_index = 5;
    	}
    	if (attack_timer == 144) {
	        phase = 0;
	        attack_timer = 0;
	        choose_attack2();
            attack = 0;
            attack_times = 0;
            claw_spr = -1;
    		claw_img = 0;
		}
    break;
    case 5: //Meteor flames
    	var meteor_amt = obj_stage_main.hard_mode ? 5 : 3;
    	var meteor_start_time = obj_stage_main.hard_mode ? 32 : 40;
    	var meteor_wait_time = 24 * meteor_amt;
    	
	    
    	if (attack_timer == 0) {
    		sprite_index = sprite_get("dracula2_attack3");
	        image_index = 0;
    	}
		if (sprite_index == sprite_get("dracula2_attack3") || sprite_index == sprite_get("dracula2_idle")) {
	    	attack_timer ++;
	    	if (attack_timer == meteor_start_time) {
		        image_index = 1;
	    	}
	    	if (attack_timer == meteor_start_time + 18) {
		        var fires = instance_create(round(x + 80 * spr_dir), round(y - 144), "obj_stage_article", 4)
	            fires.sprite_index = sprite_get("fx_fire2start");
	            fires.parent = id;
		        sound_play(asset_get("sfx_boss_fireball_big"));
	    	}
	    	if (attack_timer == meteor_start_time + 18 + 48) {
		        image_index = 3;
	    	}
	    	if (attack_timer == meteor_start_time + 18 + 56) {
	    		attack_times ++;
	    		var fire_dir = (spr_dir == -1) ? 135 : 45;
	    			
		        var fires = create_hitbox(AT_NSPECIAL_2, 8, round(x + 80 * spr_dir), round(y - 176))
	            fires.spr_dir = spr_dir
	            fires.hsp = lengthdir_x(5, fire_dir + (45 * i))
	            fires.vsp = lengthdir_y(5, fire_dir + (45 * i))
	            var ang_mod = (spr_dir == -1) ? -180 : -90;
	            fires.image_angle = (fire_dir + (45 * i)) - (45 + ang_mod);
	            fires.proj_angle = (fire_dir + (45 * i)) - (45 + ang_mod);
		        image_index = 4;
		        sound_play(asset_get("sfx_boss_fireball"));
	    	}
	    	if (attack_timer == meteor_start_time + 18 + 60) {
		        image_index = 5;
	    	}
	    	if (attack_times < meteor_amt) {
	    		if (attack_timer == meteor_start_time + 18 + 80) {
		        	attack_timer = meteor_start_time + 18 + 50; 
	    		}
	    	}
	    	else {
		        	
	    		if (attack_timer == meteor_start_time + 18 + 80) {
		        	image_index = 3;
	    		}
	    		
	    		if (attack_timer >= meteor_start_time + 18 + 96) {
		        	sprite_index = sprite_get("dracula2_idle");
		        	image_index += 0.08;
	    			if (instance_exists(ai_target)) {
			            if ((ai_target.x < x && spr_dir == 1) || (ai_target.x > x && spr_dir == -1)) {
			            	sprite_index = sprite_get("dracula2_turn");
			        		image_index = 0;
			                spr_dir = -spr_dir;
			            }
			        }
	    		}
	    		if (attack_timer == meteor_start_time + 18 + 96 + meteor_wait_time) {
			        phase = 0;
			        attack_timer = 1;
			        choose_attack2();
	                attack = 0;
	                attack_times = 0;
	    		}
	    	}
		}
	    else if (sprite_index == sprite_get("dracula2_turn")) {
			image_index += 0.25;
			if (image_index >= image_number) {
	        	sprite_index = sprite_get("dracula2_idle");
	        	image_index = 0;
			}
		}
    break;
    case 6: //Jumping Slam
    	var jump_speed = obj_stage_main.hard_mode ? 15 : 12;
    	var jump_time = obj_stage_main.hard_mode ? 24 : 32;
    
    	if (phase == 0) {
	    	attack_timer ++;
	    	
	    	if (attack_timer == 1) {
	    		sprite_index = sprite_get("dracula2_attack1");
		        image_index = 0;
		        sound_play(asset_get("sfx_boss_vortex_start"));
	    	}
	    	if (attack_timer >= 8 && attack_timer <= 48) {
	    		if (attack_timer % 8 == 0)
		        	image_index = 1;
	    		if (attack_timer % 8 == 4)
		        	image_index = 2;
	    	}
	    	if (attack_timer == 50) {
	    		sprite_index = sprite_get("dracula2_jump");
		        image_index = 0;
	    	}
	    	if (attack_timer == 56) {
	    		var rand_x = get_marker_x(2) - 240 + random_func(2, 480, true);
	    		sprite_index = sprite_get("dracula2_jump");
		        image_index = 1;
		        vsp = -20;
		        gravity_speed = 0.56;
		        hsp = arc_calc_x_speed(x, y, rand_x, get_marker_y(2), vsp, grav);
		        phase = 1;
		        attack_timer = 0;
		        sound_play(asset_get("sfx_chester_jump"));
		        var hb2 = create_hitbox(AT_NSPECIAL_2, 11, round(x), round(y));
		        hb2.type = 1;
	    	}
    	}
    	else if (phase == 1) {
    		image_index = 1 + floor((clamp(-vsp, -3, 3) + 3) / 3);
    		
    		if (!free && vsp >= 0) {
		        phase = 2;
		        hsp = 0;
		        vsp  = 0;
		        var trans = instance_create(round(x), round(y), "obj_stage_article", 4)
	            trans.sprite_index = sprite_get("fx_shock2");
	            trans.visible = false;
		        sound_play(asset_get("sfx_kragg_rock_shatter"));
		        with (pHitBox) {
		            if (orig_player = obj_stage_main.player) {
		            	if (attack == AT_NSPECIAL_2 && hbox_num == 12) {
		            		instance_destroy(id);
		            		continue;
		            	}
		            }
		        }
		        var hb = create_hitbox(AT_NSPECIAL_2, 13, round(x), round(y));
		        hb.type = 1;
		        var hb2 = create_hitbox(AT_NSPECIAL_2, 14, round(x), round(y));
		        hb2.type = 1;
		        
		        
	            var hb3 = create_hitbox(AT_NSPECIAL_2, 15, round(x), round(y));
	            hb3.type = 1;
		        
				obj_stage_main.shake_amount = 24;
		        attack_timer = 0;
    		}
    		
    		if (vsp >= 0 && attack_timer == 0) {
    			attack_timer = 1;
    			vsp = jump_speed;
		        hsp = 0;
		        var hb2 = create_hitbox(AT_NSPECIAL_2, 12, round(x), round(y));
		        hb2.type = 1;
    		}
    	}
    	else if (phase == 2) {
	    	attack_timer ++;
	    	
	    	if (attack_timer == 1) {
	    		sprite_index = sprite_get("dracula2_jump");
		        image_index = 4;
	    	}
	    	if (attack_timer == 4) {
		        image_index = 5;
	    	}
	    	if (attack_timer == 12) {
		        image_index = 6;
	    	}
	    	if (attack_timer == 20) {
		        image_index = 7;
	    	}
	    	if (attack_timer == 20 + jump_time) {
		        phase = 0;
		        attack_timer = 0;
		        gravity_speed = 0.24;
		        choose_attack2();
                attack = 0;
	    	}
    	}
    break;
}

#define dracula_mist

if (!invincible) {
    var hurt_height = (bbox_bottom  - (bbox_top + 48)) / 2
    last_hbox = current_hbox;
    current_hbox = collision_rectangle(bbox_left, bbox_top + 48, bbox_right, bbox_bottom, pHitBox, 1, 1);
    if (instance_exists(current_hbox)) {
        with (current_hbox) {
        	if (attack == AT_UTILT && player_id.url = CH_ELLIANA) //dan moment with the funny snake crashes the game
                continue;
            if (other.hitpoints <= 0 || player == 5)
                continue;
            if (other.parent.last_hbox_group != -1 && other.parent.last_hbox_group == hbox_group) {
                continue;
            }
            other.parent.last_hbox_group = hbox_group;
            if (other.parent.last_hbox != id && length > 0 && other.hit_cooldown <= 0) {
                    if ( !destroyed) {
                    //Nothing happens. Turn to mist
                   if (!fx_created) {
                        fx_created = true;
                        var enemy_dist = point_distance(x, y, player_id.x, player_id.y);
                        var enemy_dir = point_direction(x, y, player_id.x, player_id.y);
                        
                            spawn_hit_fx(x + (spr_dir * hit_effect_x), y + hit_effect_y, 13);
                        sound_play(asset_get("sfx_ell_steam_release"));
                    }
                    if (no_other_hit <= 0)
                        other.hit_cooldown = 2;
                    else
                        other.hit_cooldown = no_other_hit;
                    other.mist_timer = 0;
                    other.was_hit = false;
                    other.last_hbox = id;
                    other.last_hittime = get_gameplay_time();
                    other.last_player_hit = orig_player;
                    other.last_hit_by = player_id;
                    other.last_hurt_group = other.hurtbox_group;
                }
            }
            
        }
    }
    else {
    	last_hurt_group = -1;
    	last_hbox_group = 1000;
    }
}

if (mist_timer >= 0) {
    mist_timer ++;
    if (mist_timer >= 30)
        mist_timer = -1;
}

#define choose_attack
if (attack_group == 1) {
    var chance = round(random_func(2, 100, true));
    if (chance <= 33)
        next_attack = 2;
    else if (chance > 33 && chance <= 66)
        next_attack = 3;
    else
        next_attack = 4;
}
if (attack_group == 2){
    var chance = round(random_func(2, 100, true));
    if (chance <= 33)
        next_attack = 2;
    else if (chance > 33 && chance <= 66)
        next_attack = 5;
    else
        next_attack = 6;
}
attack_group++;

if (attack_group > 2) {
    attack_group = 1;
}

#define choose_attack2

jumping_slam_times++;

if (jumping_slam_times > jumping_slam_count) {
	jumping_slam_count = 4 + random_func(10, 4, true);
	next_attack = 6;
	jumping_slam_times = 0;
}
else {
	var jumping = hp_threshold_hit ? 3 : 2;
	if (attack_group % jumping > 0) {
		var target_close = false
		if (distance_to_point(ai_target.x, ai_target.y) < 240) {
			var chance2 = round(random_func(2, 100, true));
			if (chance2 <= 16)
				target_close = true;
		}
		if (target_close)
		    next_attack = 3;
		else {
			var chance = round(random_func(2, 100, true));
			if (chance <= 33)
			    next_attack = 2;
			else if (chance > 33 && chance <= 66)
			    next_attack = 4;
			else
			    next_attack = 5;
		}
	}
	if (attack_group % jumping == 0) {
		next_attack = 1;
	}
}
attack_group++;

#define create_enemy(spawn_x, spawn_y, enemyID)
var e = instance_create(spawn_x, spawn_y, "obj_stage_article", 1);
e.enemy_id = enemyID;
with (e) user_event(0);
return e;

#define target_player_rand
var player_targ = random_func(0,instance_number(oPlayer), true);
var i = 0;
with oPlayer if i == player_targ  && fake_stock > 0 other.ai_target = id; else i++;

#define can_step
return (!dead && hitstop <= 0 && hitstun <= 0)

#define arc_calc_x_speed (x1, y1, x2, y2, vspd, g)
var dX = x2 - x1;
var dY = y2 - y1;
if (dX == 0) {
	return 0;
}
var t = (abs(vspd) / g) + sqrt(abs(vspd * vspd) / (g * g) - (dY / g));
return dX / t;
