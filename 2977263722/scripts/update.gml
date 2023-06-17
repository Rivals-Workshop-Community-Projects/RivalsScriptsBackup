// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

//floppos directional hfx rotation fix!
with(hit_fx_obj) {
	if player == other.player && draw_angle != 0 {
	spr_dir = 1;
	}
}

//infinite jablock prevention timer
with oPlayer {
    if "bully_from_mario_jablock_cooldown" not in self bully_from_mario_jablock_cooldown = 0; //failsafe for clones and such
    if bully_from_mario_jablock_cooldown > 0 && !hitpause bully_from_mario_jablock_cooldown--;
}

//idk what the glitch was but ok xoxo thank u zard
//Shoulder Bash Glitch Possible Fix
if !((state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND) && attack = AT_FSPECIAL) {
	fspecial_hit = 0;
}

//RAINBOW ==========================================================================
if alt = 14 {
if !("hue" in self) hue = 0
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(253, 252, 255);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(14,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	
		color_rgb=make_color_rgb(215, 196, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(14,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(255, 92, 239);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(14,2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(186, 35, 171);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(14,3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(146, 92, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv = make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(14,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(215, 196, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv = make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(14,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(175, 135, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(14,6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(146, 92, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(14,7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    
	nspecial_glow_colour = color_hsv;
	
	init_shader();
}



//SPAWNING =========================================================================

if introTimer != 21 {
    if (introTimer2 < 2) {
        introTimer2++;
    } else {
        introTimer2 = 0;
        introTimer++;
    }
}

if was_reloaded || object_index == oTestPlayer{
introTimer = 21;

switch alt {
case 1:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css_chill" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait_chill" ));
		set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results_chill" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud_chill" ));
	    set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt_chill" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen_chill" ));
	break;
    case 2:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css_scuttle" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait_scuttle" ));
		set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results_scuttle" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud_scuttle" ));
	    set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt_scuttle" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen_scuttle" ));
	break;
    case 12:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css_bandage" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait_bandage" ));
		set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results_bandage" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud_bandage" ));
	    set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt_bandage" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen_bandage" ));
	break;
	case 13:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css_puffer" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait_puffer" ));
		set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results_puffer" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud_puffer" ));
	    set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt_puffer" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen_puffer" ));
	break;
}
}

//this increments introTimer every few frames, depending on the number entered
if introTimer < 21 {
    draw_indicator = false;
	if introTimer2 = 0 {
	switch introTimer {
	    case 20:
		    sound_play(sound_get("sm64_clonk"), false, noone, 2);
		    sound_play(sound_get("sm64_clonk"), false, noone, 2, 0.9);
		    sound_play(sound_get("sm64_clonk"), false, noone, 2, 1.1);
			
			shake_camera( 20, 20);
	    break;
	}
	}
} else {
    draw_indicator = true;
}

//SMOKE TRAIL ======================================================================

var smoke_fxlol = smoke_trail
var no_thank_you_actually = false;
if phone_cheats[CHEAT_BURNLESS] no_thank_you_actually = true;

with oPlayer {
    if get_gameplay_time()%6 = 0 && hitstun > 0 && !hitpause && state_cat = SC_HITSTUN && ( (burnt_id = other && burned) || (last_player = other.player && (last_attack = AT_NSPECIAL || last_attack = AT_DSTRONG || last_attack = AT_FSTRONG || last_attack = AT_NAIR || last_attack = AT_USPECIAL || last_attack = AT_DSTRONG)) ) {
		with other spawn_hit_fx(other.x, other.y, smoke_fxlol);
	}
	
    if burnt_id = other && burned && no_thank_you_actually {
	    burn_timer = 150;
	    burned = false;
	}
}

//RESPAWN PLAT =====================================================================
if state = PS_RESPAWN || respawn_taunt {


    if !respawn_taunt plat_x = x;
	if !respawn_taunt plat_y = y;
	plat_y_offset = 0;
	plat_y_offset2 = 0;
	
	
	if visible || get_match_setting(SET_PRACTICE) {
	    plat_on = 10;
	} else {
	    plat_on = 0;
	}
	
	if alt = 17 { plat_dir = 1 } else if !respawn_taunt { plat_dir = spr_dir; }

	if "article_starticle" not in self {
	    article_starticle = instance_create(x,y,"obj_article1")
	}
	
} else if plat_on > 0 {
    if plat_y_offset%80 = 0 plat_y_offset2++;
	if plat_y - plat_y_offset < get_stage_data(SD_TOP_BLASTZONE_Y) plat_on--;
    plat_y_offset += 2;
}