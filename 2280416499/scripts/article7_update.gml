// screen

var the_screen = self;

if !instance_exists(phone_user_id) || !phone_user_id.phone_practice{
	phone_user_id = noone;
	obj_stage_main.phone_user_id = noone;
}

/*
if "practice" in obj_stage_main && obj_stage_main.practice{
	if phone_user_id == noone{
		var found = false;
		
		with oPlayer if !found && ("muno_char_id" in self && "phone" in self && phone_practice){
			found = true;
			phone.stage_id = other.stage;
			other.phone_user_id = self;
			other.stage.phone_user_id = self;
			obj_stage_main.phone_user_id = self;
			if ("phone_lightweight" not in self) phone_lightweight = 0;
			
			with phone{
				i = 0;
				stage_settings = [];
				
				loadAllSettings();
				
				initAbout("About Training Town", "Training Town
	
				by Muno
				    @munomario777
				
				[More Mods] tinyurl.com/muno-collection
				[Community] discord.gg/yhchvBB
				
				Add the MunoPhone to your character: see ''Sandbert with a Phone'' in the Muno Collection")
				
				apps[6].array = stage_settings;
				side_bar.sprite_index = the_screen.spr_big_screen;
				
				side_bar.screen_w += 44;
				// side_bar.screen_h += 8;
				
				// screen_w: 555-16, // 1 less than actual value, for use in rectangles etc
				// screen_h: 325-16,
			}
			
			if phone.firmware < 6 with other{
				other.phone.spr_pho_idle = sprite_get("_pho_idle");
				other.phone.spr_pho_roundtangle_small = sprite_get("_pho_roundtangle_small");
				other.phone.spr_pho_bar = sprite_get("_pho_bar");
				other.phone.spr_pho_digits = sprite_get("_pho_digits");
				other.phone.spr_pho_app_icons = sprite_get("_pho_app_icons");
				other.phone.spr_pho_cursor = sprite_get("_pho_cursor");
				other.phone.spr_pho_slider = sprite_get("_pho_slider");
				other.phone.spr_pho_side_mask = sprite_get("_pho_side_mask");
				other.phone.spr_pho_wallpaper = sprite_get("_pho_wallpaper");
				other.phone.spr_pho_arrow = sprite_get("_pho_arrow");
				
				other.sfx_pho_close1 = sound_get("_pho_close1");
				other.sfx_pho_close2 = sound_get("_pho_close2");
				other.sfx_pho_move = sound_get("_pho_move");
				other.sfx_pho_open1 = sound_get("_pho_open1");
				other.sfx_pho_open2 = sound_get("_pho_open2");
				other.sfx_pho_select1 = sound_get("_pho_select1");
				other.sfx_pho_select2 = sound_get("_pho_select2");
			}
		}
	}
	
	else{
		
		var phn = phone_user_id.phone;
		
		if phn.state == 2{
			low_fps = fps_real < 50;
		}
		
		switch(phn.state){
			case 1:
			case 6:
				x = ease_backInOut(center_x, active_x, phn.state_timer, 20, 1);
				depth = active_depth;
				break;
			case 3:
			case 4:
				x = ease_backInOut(active_x, center_x, phn.state_timer, 20, 1);
				depth = center_depth;
				break;
			case 2:
				x = active_x;
				depth = active_depth;
				break;
			case 0:
			case 5:
				x = center_x;
				depth = center_depth;
				break;
		}
		
		with phn.side_bar{
			x = the_screen.x;
			y = the_screen.y;
			if state with obj_stage_article if num == 1{
				if !has_changed_layouts{
					current_layout = village_index;
				}
			}
		}
	}

	user_event(10);
	
}
*/



#define loadAllSettings

var click_msg = "[ Click to Activate ]";

// For damage

var nums = []
var num_strings = [];

for (var i = 0; i < 301; i++){
	nums[i] = i;
	num_strings[i] = (i == 69) ? "nice" : string(i);
}

// For sound test - 0 local - 1 base game - 2 silence - enter char ID as "type" to pull file from the char

temp_song_names = [];
temp_song_indexes = [];

initSong("Star Light Zones to Study To", "music_loop", 0);
initSong("Training Stage", "roa_training", 0);
initSong("Rivals Theme [Jazzy Ver.]", "roa_jazzy", 0);
initSong("Forensic Funk",				"muno_mollusk_dock", 0);
initSong("Swingin' in the Observatory", "muno_observatory", 0);
initSong("Ghosts, Goblins, & Bees", 	"muno_cool_table", 0);
initSong("Lemon-Cloud Rock",			"muno_athletic", 0);
initSong("Shredded Sands",				"muno_desert", 0);
initSong("Sweden [Muno Mix]",			"muno_village", 0);
initSong("Silence", "h", 2);

for (var i = 0; i < array_length(temp_song_names); i++){
	array_push(temp_song_indexes, i);
}

// Training Utilities

// initStageSetting("Jump to Layout Select", "st_st_layout", [0], [click_msg], "Jump to the stage layout + background grid select menu, which normally opens when you crouch in the center of the stage.");
initStageSetting("Combo Counter", "st_st_combo", [0, 1], ["Off", "On"], "Enable a combo counter that tracks whether or not a hit enemy exits hitstun (including the missed tech state).

	NOTE: An unknown bug causes hits that galaxy to not sometimes increment the combo counter. If ''1 HIT'' does not appear upon landing such a move, the combo was true.
	
	Also, hits which do not cause hitpause will not increment the combo counter.");
initStageSetting("Set Own Damage", "st_st_damage", nums, num_strings, "Set the damage of the player using the phone, independently from other characters.");
initStageSetting("Save Position and Damage", "st_st_save", [0], [click_msg], "Save the position and damage of all characters.");
initStageSetting("Load Position and Damage", "st_st_load", [0], [click_msg], "Load the position and damage saved by the previous setting.");
initStageSetting("CPU Behavior Changes", "st_st_cpu", [0, 1], ["Off", "On"], "Makes changes to some base-game CPUs to make them better training dummies, removing annoying side effects when recovering.

	Zetterburn, Maypul, and Ranno cannot inflict their status.
	
	Kragg and Forsburn cannot create a pillar or clone.
	
	Shovel Knight's FSpecial and USpecial have no hitbox (no gems), and he doesn't drop bags of gems on death.");
	
// Fun & Games

initStageSetting("Greenscreen", "st_st_greenscreen", [0, 1], ["Off", "On"], "Enable a greenscreen that covers up all stage elements, but is drawn underneath fighters.");
initStageSetting("Sound Test", "st_st_music", temp_song_indexes, temp_song_names, "Play various music tracks, from Muno's other stages as well as the base Rivals game. Doesn't work if you have music turned off ingame.

Select the last option to disable background music.

More base game tracks will come whenever the devs add support for playing base game songs directly.");



#define initStageSetting(st_name, st_cmd, st_opt, st_opt_name, st_desc)

stage_settings[i] = {
	name: st_name,
	command: st_cmd,
	options: st_opt,
	option_names: st_opt_name,
	description: st_desc,
	on: 0
};

variable_instance_set(obj_stage_main, st_cmd, i);
obj_stage_main.cur_settings[i] = st_opt[0];
obj_stage_main.settings_loaded = true;

i++;



#define initAbout(obj_name, obj_text)

var para = {
	type: 0,
	text: obj_text,
	align: fa_left,
	color: c_white,
	indent: 0,
	gimmick: 0,
	side_by_side_exempt: false
};

var tip = {
	name: obj_name,
	objs: [para]
};

array_push(abouts, tip);



#define initSong(title, filename, songtype)

var song = {
	name: title,
	file: filename,
	type: songtype
};

array_push(obj_stage_main.songs, song);

array_push(temp_song_names, title);