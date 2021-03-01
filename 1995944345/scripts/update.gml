X_alpha = max(X_alpha-0.1, 0)

if !free or state_cat == SC_HITSTUN {
fspecial_dontcheese = 0;
}

if !selfstab_mode {
if selfstab_target && instance_exists(selfstab_target) && selfstab_target.state_cat == SC_HITSTUN {
	if is_special_pressed(DIR_NONE) {
		selfstab_mode = 1;
		selfstab_dist = point_distance(selfstab_x, selfstab_y, selfstab_target.x, selfstab_target.y - selfstab_target.char_height/2)
		selfstab_angle = point_direction(selfstab_x,selfstab_y,selfstab_target.x, selfstab_target.y - selfstab_target.char_height/2)
	}
} else {
	selfstab_target = noone;
}
}
/////////////////////////////

if runeM {
	runecloud++;
	if runecloud = 20 {
		runecloud = 0;
		newcloud = instance_create(x,y,"obj_article2");
		newcloud.timer = 10;
	}
}

if runeI && (state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD) && window == 1 && shield_down {
window_timer -= 0.5
}
/////////////////////////////////////////
if state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD {
	if window == 1 && window_timer == 0 spawn_hit_fx(x-round(hsp),y, fx_sprites[4])
	if window == 1 && window_timer mod 3 == 1 {
	var f = spawn_hit_fx(x+(sign(x-roll_x)*(24))-(x+window_timer) mod 8,y, roll_sprites[(x+window_timer) mod 3])
	f.depth = depth-1;
	}
}
else if state == PS_ROLL_BACKWARD or state == PS_TECH_BACKWARD {
var f;
	if window == 1 && window_timer == 0 {f = spawn_hit_fx(x-round(hsp),y, fx_sprites[5])
		f.depth = depth-1;
	}
	if window == 1 && window_timer mod 3 == 1 {
	f = spawn_hit_fx(x+(sign(x-roll_x)*(24))-(x+window_timer) mod 8,y, roll_sprites[(x+window_timer) mod 3])

	f.depth = depth-1;
	}
}
else {
	mush_time--;
	if mush_time <= 0 && !free && hsp != 0 {
	spawn_hit_fx(x,y,roll_sprites[(x) mod 3])
	mush_time = 7;
	}
}
if !hitpause blockcool -= (blockcool >= 0)
if state == PS_CROUCH && (block_cur == blocktime or blockcool == 0) && blocklimit > 0 {
var f = spawn_hit_fx(x,y, fx_sprites[6])
f.depth = depth-1
sound_play(asset_get("sfx_bubblepop"))
}
if state == PS_CROUCH && state_timer == 4 sound_play(asset_get("sfx_bubblepop"), 0, noone, 0.5, 1.2)

roll_x = x;


if state == PS_CROUCH && blocked {
	state_timer = max(state_timer, blocktime)
}

if state == PS_PARRY && state_timer == 9 {
	var ins = spawn_hit_fx(x, y, fx_sprites[1])
	ins.depth = depth-3
	ins = spawn_hit_fx(x, y, fx_sprites[2])
	ins.depth = depth+3
}

reflect_spin = (reflect_spin+3) mod 360


if (attack != AT_FSPECIAL && attack != AT_FSPECIAL_2) or (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) {
	fspecial_nodex = 0;
	if instance_exists(fspecial_box) instance_destroy(fspecial_box)

}



if selfstab {
	selfstab_image = (selfstab_image+ 0.1) mod 4
	if instance_exists(selfstab_hbox) {
		selfstab_x = selfstab_hbox.x+selfstab_hbox.hsp
		selfstab_y = selfstab_hbox.y+selfstab_hbox.vsp
		selfstab_angle = point_direction(0,0,selfstab_hbox.hsp, selfstab_hbox.vsp)
	} else {
	
		
		if !selfstab_target or !selfstab_mode {
			selfstab_sound--;
			if selfstab_sound <= 0 {
				sound_play(sound_get("towerclimb_cricket"));
				selfstab_sound = 120;
			}

			selfstab_x = lerp(selfstab_x, x - 40*spr_dir, 0.1)
			selfstab_y = lerp(selfstab_y, (y - 50 + selfstab_image*4) + (state == PS_CROUCH)*20, 0.1)
			if !(attack == AT_NSPECIAL_2 && (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND)) selfstab_angle = 270;
		} else if instance_exists(selfstab_target) {
	
	

			
			selfstab_dist -= selfstab_speed;
			
			if selfstab_dist <= 0 {
				
				create_hitbox(AT_NSPECIAL, 1, selfstab_target.x, selfstab_target.y)
				selfstab_mode = 0;
				/*
				if !selfstab_target.hitpause {
					selfstab_target.old_hsp = selfstab_target.hsp
					selfstab_target.old_vsp = selfstab_target.vsp
				}
				if !hitpause {
					old_hsp = hsp
					old_vsp = vsp
				}
				
				selfstab_target.hitpause = 1
				selfstab_target.hitstop = max(selfstab_target.hitstop, 3)
				selfstab_target.hitstop_full = max(selfstab_target.hitstop_full, 3)
				hitpause = 1
				hitstop_full = max(hitstop_full, 3)
				hitstop = max(hitstop, 3)
				*/

			} else {
			
				selfstab_speed += 1;
				selfstab_x = selfstab_target.x - lengthdir_x(selfstab_dist,selfstab_angle)
				selfstab_y = selfstab_target.y - lengthdir_y(selfstab_dist,selfstab_angle) - selfstab_target.char_height/2
				selfstab_angle -= angle_difference(selfstab_angle,point_direction(selfstab_x,selfstab_y,selfstab_target.x, selfstab_target.y - selfstab_target.char_height/2))+4
				
			}
		} else selfstab_target = noone;
	}
} else {selfstab_target = noone; selfstab_mode = 0}

if !(attack == AT_FSPECIAL_2 && window == 3) {
char_height = lerp(char_height,char_height_default,0.2)
soft_armor = 0
}

mushalpha = clamp(mushalpha - 0.05, 0,1)
blockalpha = clamp(blockalpha - 0.05, 0,1)

var spcl = obj_article2;

var maxsp = 20;
/*
with (oPlayer) {
	if id != other.id && !invincible && mycolich_spored {
		mycolich_sporetime++;
		if mycolich_sporetime >= maxsp {
			take_damage(player, other.player, 1)
			sound_play(asset_get("sfx_birdflap"))
			mycolich_sporetime = 0;
		}
	} else {
	mycolich_sporetime = maxsp;
	}
	mycolich_spored = 0;
}
*/

if free && state != PS_WALL_JUMP && state != PS_WALL_TECH && move_cooldown[AT_USPECIAL] > 0 {
move_cooldown[AT_USPECIAL] = max(move_cooldown[AT_USPECIAL],2)
}
var os = sendspores
sendspores -= sendrate+(sendspores*0.02);
if sendspores > 0 {
	if instance_exists(mushins) {
		if floor(sendspores) != floor(os) {
			var s = instance_create(floor(x),floor(y-70+((state_timer*18) mod 60)), "obj_article3");
			s.destx = mushins.x
			s.desty = mushins.y-20
		}
	} else sendspores = 0;

} else sendspores = 0;

healdraw = 0;
var spsn = sound_get("spore_breath")
var tsn = sound_get("healtick")
//var spsn = asset_get("sfx_waveland_fors")
with (oPlayer) {

	if id != other.id {
		if hitpause && mycolich_grabbed > noone && instance_exists(mycolich_grabbed) {
			
			var pl = mycolich_grabbed.player_id;
			var cd = 0;
			hitstop = 6
			if mycolich_grabbed.attack == AT_USTRONG {
				cd = mycolich_grabbed.y + bubble_y - 20
				if pl.hitpause {
					y = ease_quadOut(y, cd, pl.hitstop_full-min(pl.hitstop,pl.hitstop_full), floor(pl.hitstop_full))
				}else {
				y = cd
				}
			}
			if mycolich_grabbed.attack == AT_FSTRONG {
				cd = mycolich_grabbed.x - (bubble_x - 10) * mycolich_grabbed.spr_dir 
				if pl.hitpause {
					x = ease_quadOut(x, cd, pl.hitstop_full-min(pl.hitstop,pl.hitstop_full), floor(pl.hitstop_full))
				}else {
				x = cd
				}
			}
		} else {
			mycolich_grabbed = noone;
		}
	}

	if id != other.id && mycolich_player == other.player {
	
				if !hitpause{
					if state_cat == SC_HITSTUN && mycolich_spored && !invincible && state != PS_RESPAWN && state != PS_DEAD {
						mycolich_sporetick = min(mycolich_sporetick+1, other.sporecap)
						if mycolich_sporetick >= other.tick {
							mycolich_sporetick = 0;
							take_damage(player, other.player, 1)
							if !activated_kill_effect {
								hsp *= 0.9;//clamp(knockback_adj-0.1, 0.8, 1.0)
								vsp *= 0.9;//clamp(knockback_adj-0.1, 0.8, 1.0)
							}
							sound_play(spsn)
							//take_damage(other.player, 0, -1)
						}
					}
				}
				mycolich_spored = 0;
				
		switch(mycolich_type) {
			default: case 0:
			
			
			//{
				//Damage buffer
				/*
				if mycolich_spored && !mycolich_oldspored {
					mycolich_sporemin = get_player_damage(player)
				}
				
				if mycolich_spored {
					var d = get_player_damage(player);
					
					if d > mycolich_sporemin {
						set_player_damage(player, mycolich_sporemin)
						mycolich_sporebuffer += (d-mycolich_sporemin)
					} else {
						mycolich_sporemin = d;
					}
					
				}
				
				if !mycolich_spored && mycolich_oldspored {
					
					take_damage(player, -1, mycolich_sporebuffer)
					
					mycolich_sporebuffer = 0;
					mycolich_sporemin = 0;
				}
				*/
				//}
				//DoT
				

				
			break;
			case 1: //Temp-healed
			
			other.healdraw = mycolich_healed;
			
			if hitpause break;
			
			mycolich_sporetime -= 1;
			var t = 5+floor(mycolich_sporetime*0.1)

			//if floor(mycolich_sporetime) mod t == 1 {
			//sound_play(tsn)
			//}
			
			if mycolich_sporetime <= 0 {
			with (other) {
				create_hitbox(AT_FSPECIAL_2, 1, floor(other.x),floor(other.y-other.char_height/2))
			}
				set_player_damage( player, floor(get_player_damage(player) + mycolich_healed))
				//set_player_damage( other.player, max(get_player_damage(other.player) - mycolich_healed, 0))
				mycolich_healed = 0;
				mycolich_type = 0;
				mycolich_sporetime = 0;
			}
			
			
			break;
			case 2: //Lifesteal
				
			if hitpause break;
				
				if ceil(mycolich_sporetime/other.sporediv) != ceil((mycolich_sporetime+2)/other.sporediv) {
					take_damage(player, other.player, 1);
					take_damage(other.player, player, -1);
				}
				mycolich_sporetime -= 2;
				if mycolich_sporetime <= 0 {
					set_player_damage( player, get_player_damage(player) + mycolich_healed)
					set_player_damage( other.player, max(get_player_damage(other.player) - mycolich_healed, 0))
					mycolich_healed = 0;
					mycolich_type = 0;
					mycolich_sporetime = 0;
				}				
			break;
		}
		mycolich_oldspored = mycolich_spored
		mycolich_spored = 0;
		if state == PS_RESPAWN or state == PS_DEAD {mycolich_sporetime = 0; mycolich_type = 0;}
	}
	
	
}






if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 7;
    trummelcodecsprite1 = sprite_get("X");
    trummelcodecsprite2 = sprite_get("X");

    //Page 0
    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 0;

    trummelcodecline[0,1] = "Uh oh.";
    trummelcodecline[0,2] = "";
    trummelcodecline[0,3] = "";
	trummelcodecline[0,4] = "";

    //Page 1
    trummelcodecspeaker[1] = 2;
    trummelcodecexpression[1] = 0;

    trummelcodecline[1,1] = "'what";
    trummelcodecline[1,2] = "";
	trummelcodecline[1,3] = "";
	trummelcodecline[1,4] = "";

    //Page 2
    trummelcodecspeaker[2] = 1;
    trummelcodecexpression[2] = 0;

    trummelcodecline[2,1] = "We're fighting Mycolich.";
    trummelcodecline[2,2] = "Well, one of them. It";
    trummelcodecline[2,3] = "infests people and uses";
    trummelcodecline[2,4] = "them as tools.";
	
	//Page 3
    trummelcodecspeaker[3] = 2;
    trummelcodecexpression[3] = 0;

    trummelcodecline[3,1] = "spooky";
    trummelcodecline[3,2] = "";
    trummelcodecline[3,3] = "";
    trummelcodecline[3,4] = "";
	
	//Page 4
    trummelcodecspeaker[4] = 1;
    trummelcodecexpression[4] = 2;

    trummelcodecline[4,1] = "Indeed. Don't get too";
    trummelcodecline[4,2] = "creeped out, though.";
    trummelcodecline[4,3] = "It'll focus on trying to";
	trummelcodecline[4,4] = "pull you closer.";
	
	//Page 5
    trummelcodecspeaker[5] = 1
    trummelcodecexpression[5] = 2;

    trummelcodecline[5,1] = "My advice is to bait";
    trummelcodecline[5,2] = "it to spawn more of";
    trummelcodecline[5,3] = "its Sporelings. It hurts";
    trummelcodecline[5,4] = "itself to make those.";

	
	//Page 7
    trummelcodecspeaker[6] = 1
    trummelcodecexpression[6] = 2;

    trummelcodecline[6,1] = "As long as we hit it";
	trummelcodecline[6,2] = "before the Sporeling";
	trummelcodecline[6,3] = "bites us, we'll be able";
	trummelcodecline[6,4] = "to damage it more.";
	
	//Page 7
    trummelcodecspeaker[7] = 1
    trummelcodecexpression[7] = 0;

    trummelcodecline[7,1] = "As for that stubborn";
	trummelcodecline[7,2] = "Proxy mushroom...well,";
	trummelcodecline[7,3] = "just keep hitting the";
	trummelcodecline[7,4] = "main guy. Oh boy.";
}



if swallowed == 1{
	swallowed = 0
	
	var ki = sprite_get("k_icon")
	var sn = sound_get("towerclimb_larv")
	with enemykirby {
		sound_play(sound_get("copy"))
		mycolich_sporeling = noone;
		mycolich_sporeling_state = 0;
		newicon = ki
		
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("AT_NSPECIAL_INHALE"));
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("AT_NSPECIAL_INHALE_hurt"));

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 22);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 5);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 16);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("djump"));
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 4);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 69);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 26);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, sn);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 4);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 28);
	}
} if instance_exists(enemykirby) {
	with (enemykirby) {
		//if grabbedid != other.id break;
		//sound_play(asset_get("sfx_birdflap"))
		if attack == AT_EXTRA_3 && window == 2 && window_timer = 1 && !instance_exists(mycolich_sporeling) {
			var new;
			with (other) {
			new = instance_create(other.x,other.y-20, "obj_article3")
			new.sprite_index = sprite_get("sporemote");
			}
			mycolich_sporeling = new;
			mycolich_sporeling.player_id = id;
			mycolich_sporeling.player = player;
			mycolich_sporeling.orig_player = other.player;
			mycolich_sporeling.type = 1;
			mycolich_sporeling_state = 0;
			mycolich_sporeling.uppies = 20;
			set_player_damage(player, get_player_damage(player) + other.selfstab_damage)
			mycolich_sporeling.selfstab_damage = other.selfstab_damage
		}
		
		if has_hit_player && mycolich_sporeling_state == 0 && instance_exists(mycolich_sporeling) {
			mycolich_sporeling_state = 1;
			mycolich_sporeling.target = hit_player_obj;
			mycolich_sporeling.state = 1;
			hitstop += 10;
			hitstop_full += 10;
			hit_player_obj.hitstop += 10;
			hit_player_obj.hitstop_full += 10;
		}
	}
}



/*
with (oPlayer) {
	if id != other.id && mycolich_player == other.player {
	
	if  !invincible && mycolich_spored {
		
		if floor((mycolich_sporetime+1)/other.harvestmult) > floor(mycolich_sporetime/other.harvestmult) mycolich_sporetick = 1; else mycolich_sporetick = 0;
		
		mycolich_sporetime++;
		mycolich_sporetime = min(mycolich_sporetime, other.sporecap)
	}
	else {
		mycolich_sporetime = max(mycolich_sporetime, 0)}
		
		
		mycolich_spored = 0;
	
	}
	
}