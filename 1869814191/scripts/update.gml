//upda

if trummelcodecneeded {
    trummelcodec = 17;
    if (trummelcodec_id.codecfile == 17) {
	    if (trummelcodec_id.codecindex == 0){
			if (trummelcodec_id.currentcodecline == 1){
				sans_speech = 0;
			}
		}
		
		if (trummelcodec_id.codecindex == 9){
			if (trummelcodec_id.currentcodecline == 1){
				sans_speech++;
				if (sans_speech >= 4) {
					sound_play(sound_get("sfx_sans_talk"));
					sans_speech = 0;
				}
			}
		}
    }
    trummelcodecmax = 9;
    trummelcodecsprite1 = sprite_get("sansta");
    trummelcodecsprite2 = sprite_get("sansta");

    //Page 0
    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 1;

    trummelcodecline[0,1] = "Oh, that's Sans!";
    trummelcodecline[0,2] = "He-";
    trummelcodecline[0,3] = "";
    trummelcodecline[0,4] = "";
    
    //Page 1
    trummelcodecspeaker[1] = 2;
    trummelcodecexpression[1] = 0;

    trummelcodecline[1,1] = "samns";
    trummelcodecline[1,2] = "";
    trummelcodecline[1,3] = "";
    trummelcodecline[1,4] = "";
    
    //Page 2
    trummelcodecspeaker[2] = 1;
    trummelcodecexpression[2] = 2;

    trummelcodecline[2,1] = "Yes, Sans. His bones";
    trummelcodecline[2,2] = "are unique in that";
    trummelcodecline[2,3] = "they deal 1 damage";
    trummelcodecline[2,4] = "every other fr-";
    
    //Page 3
    trummelcodecspeaker[3] = 2;
    trummelcodecexpression[3] = 0;

    trummelcodecline[3,1] = "sands";
    trummelcodecline[3,2] = "";
    trummelcodecline[3,3] = "";
    trummelcodecline[3,4] = "";
    
    //Page 4
    trummelcodecspeaker[4] = 1;
    trummelcodecexpression[4] = 0;

    trummelcodecline[4,1] = "....frame, and he can";
    trummelcodecline[4,2] = "switch to blue bones,";
    trummelcodecline[4,3] = "which actually deal kn-";
    trummelcodecline[4,4] = "";
    
    //Page 5
    trummelcodecspeaker[5] = 2;
    trummelcodecexpression[5] = 0;

    trummelcodecline[5,1] = "sambs";
    trummelcodecline[5,2] = "";
    trummelcodecline[5,3] = "";
    trummelcodecline[5,4] = "";
    
    //Page 6
    trummelcodecspeaker[6] = 1;
    trummelcodecexpression[6] = 4;

    trummelcodecline[6,1] = "...Okay, I get it.";
    trummelcodecline[6,2] = "Can you stop now?";
    trummelcodecline[6,3] = "";
    trummelcodecline[6,4] = "";
    
    //Page 7
    trummelcodecspeaker[7] = 2;
    trummelcodecexpression[7] = 0;

    trummelcodecline[7,1] = "sanps";
    trummelcodecline[7,2] = "";
    trummelcodecline[7,3] = "";
    trummelcodecline[7,4] = "";
    
    //Page 8
    trummelcodecspeaker[8] = 1;
    trummelcodecexpression[8] = 0;

    trummelcodecline[8,1] = "...Okay, fine, let's";
    trummelcodecline[8,2] = "just fight him so you";
    trummelcodecline[8,3] = "stop acting like this.";
    trummelcodecline[8,4] = "";
    
    //Page 9
    trummelcodecspeaker[9] = 3;
    trummelcodecexpression[9] = 0;

    trummelcodecline[9,1] = "samps";
    trummelcodecline[9,2] = "";
    trummelcodecline[9,3] = "";
    trummelcodecline[9,4] = "";
}

/*

if (anti_op) {
	switch (get_gameplay_time()) {
		case 121:
		case 301:
		case 481:
		case 661:
		case 841:
		case 1021:
		case 1201:
		case 1381:
		case 1561:
		case 1741:
			sound_play(sound_get("sfx_sans_talk"));
			break;
		default:
			break;
	}
}

with (asset_get("oPlayer")) { //Anti-Ronalds

	if ("has_shake" in self && "has_apple" in self) { //ronald
		ronald_detected = true;
	}
	
	if (waveland_sound == sound_get("stick_flick")) { //fox
		accurate_detected = true;
	}
	
	if ("url" in self) {
	
		if (url == "1993556113" || url == "2003736618") { //cloud
			accurate_detected = true;
		}
		
		if (url == "1970731843" || url == "1978424932") { //meta knight
			accurate_detected = true;
		}
		
		if (url == "1867634411" || url == "1880727391") { //duane
			duane_detected = true;
		}
		
	}
	
	if (ronald_detected || accurate_detected || duane_detected) {
		other.anti_op = true;
		golden = false;
		cosmic = false;
		invincible = false;
		
		if (get_gameplay_time() < 1741) {
			hsp = 0;
			vsp = 0;
			state = PS_PRATLAND;
		}
	}
}

if (anti_op) {
	times_pressed = 0;
	set_victory_theme(sound_get("mus_win2_sans"));
}
*/

if (state == PS_SPAWN) {
	match_start += -1;
	if (match_start > 0) {
		if (special_pressed) {
			clear_button_buffer(PC_SPECIAL_PRESSED);
			times_pressed++;
		}
		if (times_pressed >= pressed_required) && (!deed_is_done) {
			trolled = true;
		}
	}
}
if (trolled) {
	guiltySprite = sprite_get("t_sansganronpa");
}

with (asset_get("oPlayer")){
	var sansgrabtime = 0;
	sansgrabtime++;
	
	if (sansgrabtime >= 70 || 
	state_cat == SC_GROUND_NEUTRAL ||
	state_cat == SC_AIR_NEUTRAL) {
		grabbed_id = noone;
	}
}

var bone_height = normal_height;
if state=PS_ATTACK_GROUND or state=PS_ATTACK_AIR {
    bone_height+=+56*(attack=AT_USTRONG);
    bone_height+=+28*(attack=AT_UAIR);
}
char_height+=(bone_height-char_height)/3

//dracula
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = sprite_get("dracula_portrait2");
var page = 0;
//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "You don't look to be from around here, my undead comrade, are you possibly lost?";
page++;
//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "it looks like i took a wrong turn on my way to grillby's, so yeah, i'd say so.";
page++;
//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "i sure am a real bonehead, right?";
page++;
//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "that aside, you're a vampire, right? i wouldn't know, i've never seen one before. unless i count dracula.";
page++;
//Page 4
dracula_speaker[page] = 1;
dracula_text[page] = "life sure is crazy. at this point, not even i know what will happen necks.";
page++;
//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "Enough with your insolent jokes! I regret welcoming you so politely.[glass] Leave my manor this moment, or I shall violently force you!";
page++;
//Page 6
dracula_speaker[page] = 1;
dracula_text[page] = "yeesh, tough crowd. if it's a fight with me you want, though...";
page++;
//Page 7
dracula_speaker[page] = 2;
dracula_text[page] = "I t ' s   a   b a d   t i m e   y o u ' l l   g e t .";
page++;

//sans kirby
if (swallowed == 1) {
	swallowed = 0;
	
	var ability_spr = sprite_get("kirb");
	var ability_hurt = sprite_get("kirb_hurt");
	var bone_spr = sprite_get("bone_horizontal");
	var myicon = sprite_get("sanskirbyicon")
	
	with enemykirby{
		newicon = myicon
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 5);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
                
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
                
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 9);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 3);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 2);
                
        set_num_hitboxes(AT_EXTRA_3, 1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 60);
        set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 45);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 304);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_IGNORES_PROJECTILES, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, bone_spr);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, bone_spr);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 302);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 12);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, 0.5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, 0.5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, false);
	}
}