//Mask logic

if (get_gameplay_time() <= 2) {
    masked = shield_down;
	var page = 0;
    if (!masked) {
    	page = 0;
		dracula_speaker[page] = 1;
		dracula_text[page] = "Now, when I said I needed a monster...";
		page++;
		dracula_speaker[page] = 1;
		dracula_text[page] = "I didn't think it'd come from someone like... you!";
		page++;
		dracula_speaker[page] = 0;
		dracula_text[page] = "Monster? You must be mistaken. My army isn't for hire by mere mortals. Now hurry along back to your planet, penguin.";
		page++;
		dracula_speaker[page] = 1;
		dracula_text[page] = "I came all the way here just for this?? C'mon, there's something we could work out-";
		page++;
		dracula_speaker[page] = 0;
		dracula_text[page] = "You dare defy me?[glass] If you aren't afraid to die, face me like a true king!";
		page++;
		dracula_speaker[page] = 1;
		dracula_text[page] = "Alright you old coot! It's time to show you...";
		page++;
		dracula_speaker[page] = 1;
		dracula_text[page] = "[taunt]";
		page++;
		dracula_speaker[page] = 2;
		dracula_text[page] = "The power of the Dedede Hammer!";
		page++;
    }
    else {
    	page = 0;
		dracula_speaker[page] = 2;
		dracula_text[page] = "Die monster! You don't belong in this world!";
		page++;
		dracula_speaker[page] = 0;
		dracula_text[page] = "Looks like we got ourselves a joker! Reveal yourself, before I smite you here and now.";
		page++;
		dracula_speaker[page] = 0;
		dracula_text[page] = "[taunt]";
		page++;
		dracula_speaker[page] = 1;
		dracula_text[page] = "You're standing right before King Dedede, comin' atcha!";
		page++;
		dracula_speaker[page] = 0;
		dracula_text[page] = "I like this...[glass]Let the battle of the kings commence!";
		page++;
    }
}

if (masked == !mask_on) {
    user_event(1);
    mask_on = masked;
}
if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
    max_fall = def_max_fall;
    if (has_rune("O")) {
        soft_armor = 8;
    }
}
		    
if ((state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) && fs_sound != noone) {
	sound_stop(fs_sound);
	fs_sound = noone;
}
current_sprite_set = masked ? 1 : 0;

//Drac special compatability
var in_dracula = false;
if (instance_exists(obj_stage_article)) {
	with (obj_stage_article) {
		if (num == 6 && ("char_name" in self) && ("sprite_name" in self)) {
			if (char_name == "Dracula" && sprite_name == "dracula1") {
				in_dracula = true;
			}
		}
		
	}
}
if (in_dracula) {
	if ("textbox_taunting" in obj_stage_main) {
		if (obj_stage_main.textbox_taunting && state == PS_ATTACK_GROUND && attack == AT_TAUNT) {
		    attack = AT_TAUNT_2;
		    if (!masked)
		        window = 1;
		    else
		        window = 4;
		}
	}
}


//Suck effect

with (hit_fx_obj) {
    if (player == other.player && hit_fx == other.nspecial_projeffect) {
        if !("ddd_nspecial_timer" in self) {
            ddd_nspecial_timer = 0;
        }
        ddd_nspecial_timer++;
        x = lerp(xstart, round(other.x + 32 * other.spr_dir), (ddd_nspecial_timer/16));
        y = lerp(ystart, round(other.y - 32), (ddd_nspecial_timer/16));
    }
    if (player == other.player && hit_fx == other.uspecial_fx1) {
        x = round(other.x + other.hsp);
        y = round(other.y + other.vsp);
        depth = other.depth - 1;
    }
}


var team_attack = get_match_setting(SET_TEAMATTACK);
with (pHitBox) {
    if (object_index == oPlayer) continue;
    //Windboxes
    if (player_id == other.id && ((attack == AT_NSPECIAL && hbox_num == 3) || (attack == 49 && hbox_num == 1)))
    {
        var player_list = collision_ellipse_list(bbox_left, bbox_top, bbox_right, bbox_bottom, oPlayer, 1, 1);
        if (player_list != noone) {
            for (var i = 0; i < ds_list_size(player_list); i++) {
                var hplayer = player_list[|i];
                var hbox_angle = 0;
                with (hplayer) hbox_angle = get_hitbox_angle(other)
            	if (hitbox_timer == 1 && instance_exists(hplayer) && hplayer.player != orig_player && hplayer.state != PS_RESPAWN && (get_player_team(hplayer.player) != get_player_team(orig_player) || team_attack) && !hplayer.invincible && !hplayer.hurtboxID.dodging && (groundedness == 0 || groundedness == hplayer.free+1)) {
        	   		hplayer.hsp += lengthdir_x(kb_value, hbox_angle);
            		hplayer.vsp += lengthdir_y(kb_value, hbox_angle);
            	}
            }
            ds_list_destroy(player_list);
        }
    }

    
    //Waddle Dees
    if ("follower_owner" in self && player_id == other.id && type == 1) {
        if (instance_exists(follower_owner)) {	
        	destroyed = false;
            var x_off = 0;
            var y_off = 0;
            with (player_id) {
                x_off = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_X);
                y_off = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_Y);
            }
            x_pos = ((follower_owner.x + x_off * follower_owner.spr_dir) - player_id.x);
            y_pos = ((follower_owner.y + y_off) - player_id.y);
            hsp = follower_owner.hsp;
            vsp = follower_owner.vsp;
            spr_dir = follower_owner.spr_dir;
            
            if ((player_id.has_hit || player_id.has_hit_player) && player_id.my_hitboxID == id) {
                follower_owner.has_hit_player = true;
                hitstop = player_id.hitstop;
                player_id.hitpause = false;
                player_id.hitstop = 0;
                player_id.has_hit = false;
                player_id.has_hit_player = false;
            }
            
            if (follower_owner.hitpause > 1 && follower_owner.has_hit_player) {
    	       hitbox_timer = max (hitbox_timer - 1, 0);
            }
            
        }
    }
}

//Drum Bouncing
//(I put it here so it can detect multiple instances of the object.)
if (drum_cooldown > 0) {
    drum_cooldown --;
}
    
if (drum_cooldown == 1) {
	if (free && state_cat != PS_HITSTUN && state != PS_WALL_JUMP)
		drum_cooldown ++
}

var rune_applied = has_rune("H");


with (oPlayer) {
	if ("ddd_respawn_protection" not in self)
		ddd_respawn_protection = 0;
		
	if (id == other.id) continue;
	if (state == PS_RESPAWN) {
		ddd_respawn_protection = 20;
	}
	else {
		if (ddd_respawn_protection > 0) {
			ddd_respawn_protection--;
		}
		
		if (!free) ddd_respawn_protection = 0;
	}
}

with (obj_article3) {
    if (object_index != obj_article3) continue;
    if (player_id == other.id && hitstop == 0 && state == 0) {
        var player_list = ds_list_create();
        with (oPlayer) {
			if (("ddd_respawn_protection" in self) && ddd_respawn_protection > 0) continue;
            var near = collision_line(other.collision_pos[0], other.collision_pos[1], other.collision_pos[2], other.collision_pos[3], id, 0, 0);
            ds_list_add(player_list, near);
        }
        for (var i = 0; i < ds_list_size(player_list); i++) {
            var player_near = player_list[|i]
            if (instance_exists(player_near)) {
                if (player_near.vsp > 0 && player_near.state_cat != PS_HITSTUN && player_near.visible && player_near.state != PS_DEAD && player_near.state != PS_RESPAWN && player_near.grav != 0 && (img_angle != 0 || player_near.free)) {
                    var jspd = bounce_speed;
                    with (player_near) jspd = jump_down || (up_down && can_tap_jump()) ? other.bounce_speed_max : other.bounce_speed;
                    
	                var new_dir = img_angle - 90;
	                if (!player_near.joy_pad_idle) {
	                    var di_diff = floor(angle_difference(img_angle - 90, player_near.joy_dir) / 90) * 90;
	                    var change = 15 * sign(di_diff);
	                    new_dir -= (sign(di_diff) * change)
	                }
	                if (img_angle - 90 != -90) {
	                    player_near.hsp = lengthdir_x(jspd, new_dir);
	                    player_near.vsp = lengthdir_y(jspd, new_dir);
	                }
	                else {
	                    player_near.vsp = jspd;
	                }
	                if (player_near.state == PS_PRATFALL) {
	                	with (player_near) set_state(PS_IDLE_AIR);
	                }
                    sound_play(sound_get("sfx_drum"))
                    state = rune_applied ? 2 : 1;
                    state_timer = 0;
                    with (player_id) {
                        var hfx = spawn_hit_fx(round(other.x + lengthdir_x(48, other.img_angle + 90)), round(other.y - 16 - lengthdir_y(24, other.img_angle - 90)), fx_drum_bounce);
                        hfx.draw_angle = other.img_angle
                    }
                }
                if (player_near.state_cat != PS_HITSTUN && player_near.visible && player_near.state != PS_DEAD && player_near.state != PS_RESPAWN && player_near.grav != 0 && player_near.state_cat != PS_HITSTUN && (img_angle != 0 || player_near.free)
                && (player_near.state == PS_ATTACK_AIR || player_near.state == PS_ATTACK_GROUND) && (player_near.attack == AT_USPECIAL || player_near.attack == AT_USPECIAL_2) && player_near.window == 4
                && (player_near.url == other.url && get_char_info(player_near.player, INFO_STR_NAME) == get_char_info(player, INFO_STR_NAME))) {
                    hitstop = 10;
                    
                    with (player_near) {
                        hitstop = 6;

                        hitstop_full = 6;
                        uspecial_hsp = lengthdir_x(other.bounce_speed/2, other.img_angle - 90);
                        vsp = 0;
						destroy_hitboxes();
            			set_attack(AT_USPECIAL_2);
            			hurtboxID.sprite_index = get_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE);
                    }
                    
                    
                    state = 2;
                    state_timer = 0;
                }
            }
        }
        ds_list_destroy(player_list);
    }
}


#define collision_ellipse_list(x1,y1,x2,y2,obj,prec,notme)
var dsid,i;
dsid = ds_list_create();
with (obj) {
    if (!notme || id != other.id) {
        i = collision_ellipse(floor(x1),floor(y1),floor(x2),floor(y2),id,prec,false);
        if (i != noone) ds_list_add(dsid,i);
    }
}
if (ds_list_size(dsid) == 0) {
    ds_list_destroy(dsid);
    dsid = noone;
}
return dsid;