//Seasonal "Hat"
if wearing_hat == 1 {
    if state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE {
        wearing_hat = -1;
        var newfx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("summer_toss"), 20));
        newfx.depth = depth-1;
    }
} else if wearing_hat == -1 {
    if state == PS_RESPAWN or state == PS_SPAWN {
    wearing_hat = 1;
    }
}

//vsp = (spindash_loop * -1)

//Changing the portrait for GB alt.
//if you're a workshop dev and are asking "wait how tf did he do this?" then this is how i did it. Lol!
if (get_player_color( player ) == 7){
	set_victory_portrait( sprite_get( "portrait_ea" ));
	set_victory_sidebar( sprite_get( "result_small_ea" ));
} if (get_player_color( player ) == 17){
	set_victory_portrait( sprite_get( "portrait_gold" ));
	set_victory_sidebar( sprite_get( "result_small_gold" ));
} else if (get_player_color( player ) != 7 && (get_player_color( player ) != 17)){
	set_victory_portrait( sprite_get( "portrait" ));
	set_victory_sidebar( sprite_get( "result_small" ));
}

//Enabling Voiced Mode
if (state == PS_SPAWN && state_timer <= 100 && voiced == 0 && taunt_pressed){
	voiced = 1
	sound_play(sound_get("sfx_ring_total"));
	sound_play(sound_get("sfx_sonic_intro_normal"));
}

//dair
if (attack == AT_DAIR && !free){
	sound_stop(asset_get("sfx_ori_dtilt_perform"))
}


//Spawning Afterimages
aftertimer++;
if (afterimage == 1){
	instance_create(x, y, "obj_article1");
	aftertimer = 1
}

//Forcing Afterimages to not spawn when not attacking
if (state != PS_ATTACK_GROUND || state != PS_ATTACK_AIR){
	afterimage = 0
}

//Bouncing Off of Spring
//Disabled because this is buggy lol
if (ricegaming && didriceallowthespringtobejumpedon == true && springlockout == 0){
	if (y < springy){
		if (free && attack != AT_USPECIAL_2 && attack != AT_DAIR && attack != AT_DSPECIAL && vsp > 2){
			//set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 6);
			springlockout = 30
			springsfxbouncething++;
			//set_attack(AT_USPECIAL_2);
			//window = 4
			//window_timer = 0
			vsp = -12
			destroy_hitboxes();
			if(springsfxbouncething == 1){
				sound_play(sound_get("sfx_sonic_spring"));
			}
		}
		if (attack == AT_NSPECIAL){
			window = 4
			window_timer = 0
			vsp = -15
			destroy_hitboxes();
			//sound_play(sound_get("sfx_sonic_spring"));
		}
		if (attack == AT_DSPECIAL){
			window = 5
			window_timer = 0
			vsp = -11
			destroy_hitboxes();
			sound_play(sound_get("sfx_sonic_spring"));
		}
	}
}

if (springlockout > 0){
	springlockout--;
}

if (!place_meeting(x, y, obj_article2)){
	springsfxbouncething = 0
}

//Stopping Air Dodge Sound when Wavedashing
if (state == PS_WAVELAND){
	sound_stop(sound_get("airdodge"));
}

//Intro Animation Code
if (introTimer2 < 4) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

//Dash Start Sound Effect
if (state == PS_DASH_START) {
    if (state_timer == 1) {
        sound_play(sound_get("sfx_sonic_dashstart"));
    }
}

//Crouch Sound Effect
if (state == PS_CROUCH) {
    if (state_timer == 1) {
        sound_play(sound_get("crouch"));
    }
}

//Brake Sound Effect
if (state == PS_DASH_TURN && state_timer == 4){
	//This is where the jump sound effect changes depending on the alt
	if (get_player_color( player ) == 12){
		sound_play(sound_get("brake_retro"))
	} else if (get_player_color( player ) != 12){
		sound_play(sound_get("brake"))
	}
}

//Properly playing the jump sound effect
if (state == PS_FIRST_JUMP && state_timer == 1){
	//This is where the jump sound effect changes depending on the alt
	if (get_player_color( player ) == 1){
		sound_play(sound_get("sfx_sonic_doublejump"));
	} else if (get_player_color( player ) == 12){
		sound_play(sound_get("sfx_sonic_jump_retro"));
	} else if (get_player_color( player ) != 1 && get_player_color( player ) != 12){
		sound_play(sound_get("sfx_sonic_jump"));
	}
}

//Removing Cooldowns (?)
if (state == PS_WALL_JUMP || state == PS_HITSTUN || !free) {
	if (state_cat != SC_AIR_COMMITTED){
		move_cooldown[AT_FSPECIAL] = 0;
		move_cooldown[AT_USPECIAL] = 0;
		move_cooldown[AT_USPECIAL_2] = 0;
		move_cooldown[AT_DSPECIAL] = 0;
		runehoming = 1
	}
}

//homing attacc

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
	homing_x = -100000;
	homing_y = -100000;
}

if (move_cooldown[AT_NSPECIAL] == 1){
	//sound_play(sound_get("sfx_sonic_ring"));
	//spawn_hit_fx(x, y - 30, 301);
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if (attack == AT_NSPECIAL){
		var dirForHADust = point_direction(x, y, x + hsp, y + vsp);
		if (window == 2 && window_timer == 1 && !hitpause){
			spawn_base_dust( x - (0 * spr_dir), y - 20, "doublejump", spr_dir, dirForHADust + (270 * spr_dir));
		}
		if (window == 2 && window_timer >= 2 && window_timer mod 3 == 0 && !hitpause){
			spawn_base_dust( x - (0 * spr_dir), y - 20, "doublejump_small", spr_dir, dirForHADust + (270 * spr_dir));
		}
	}
}

//Making the Light Speed Particles animate
lightspeedeffecttimer++;
if (lightspeedeffecttimer >= 90){
	lightspeedeffecttimer = 0
}

//Hyper Alt Code
if (hypertimer == 6 && hyperyes == 1) {
	hypertimer = 0
	switch (hypercolor) {
		case 10:
			hypercolor = 1;
			set_color_profile_slot( 11, 0, 255, 255, 255 );
			break;
		case 1:
			hypercolor = 2;
			set_color_profile_slot( 11, 0, 255, 181, 181 );
			break;
		case 2:
			hypercolor = 3;
			set_color_profile_slot( 11, 0, 255, 255, 255 );
			break;
		case 3:
			hypercolor = 4;
			set_color_profile_slot( 11, 0, 222, 181, 222 );
			break;
		case 4:
			hypercolor = 5;
			set_color_profile_slot( 11, 0, 255, 255, 255 );
			break;
		case 5:
			hypercolor = 6;
			set_color_profile_slot( 11, 0, 141, 181, 255 );
			break;
		case 6:
			hypercolor = 7;
			set_color_profile_slot( 11, 0, 255, 255, 255 );
			break;
		case 7:
			hypercolor = 8;
			set_color_profile_slot( 11, 0, 222, 222, 74 );
			break;
		case 8:
			hypercolor = 9;
			set_color_profile_slot( 11, 0, 255, 255, 255 );
			break;
		case 9:
			hypercolor = 10;
			set_color_profile_slot( 11, 0, 222, 255, 181 );
			break;
	}
}

if (get_player_color( player ) == 11) {
	hypertimer++;
	init_shader();
}

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 11;
    trummelcodecsprite1 = sprite_get("soniccodec1");
    trummelcodecsprite2 = sprite_get("soniccodec2");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "oh look it ";
    trummelcodecline[page,2] = "sonc hoghege";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Yes, that's Sonic.";
    trummelcodecline[page,2] = "Sonic's one of the fastest";
    trummelcodecline[page,3] = "characters we've ever";
    trummelcodecline[page,4] = "faced, so be ready.";
    page++; 
	
	//Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Homing Attack has him";
    trummelcodecline[page,2] = "home in on us at light";
    trummelcodecline[page,3] = "speed, so we should try";
    trummelcodecline[page,4] = "to maintain some distance.";
    page++;
	
	//Page 3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "And Spin Dash...";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "God, why does he have";
    trummelcodecline[page,4] = "so many fast moves?!";
    page++; 

	//Page 4
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Even though he's fast,";
    trummelcodecline[page,2] = "Sonic can't take a hit";
    trummelcodecline[page,3] = "at all, as he's pretty";
    trummelcodecline[page,4] = "lightweight.";
    page++; 
	
	//Page 5
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Wait for when he's";
    trummelcodecline[page,2] = "vulnerable to be struck.";
    trummelcodecline[page,3] = "Feel free to be trigger-";
    trummelcodecline[page,4] = "-happy on your strongs.";
    page++; 
	
	//Page 6
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "he has no range";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "just abuse";
    trummelcodecline[page,4] = "everything we have";
    page++;

	//Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "...oh yeah, he's doesn't";
    trummelcodecline[page,2] = "really have disjoints on all";
    trummelcodecline[page,3] = "of his moves. I guess";
    trummelcodecline[page,4] = "we can exploit that.";
    page++; 
	
	//Page 8
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Looks like I've got some";
    trummelcodecline[page,2] = "fanboys around here.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
	
	//Page 9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Anything else we should";
    trummelcodecline[page,2] = "know about this guy?";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
	
	//Page 10
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "no";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "fight pls";
    page++; 
	
	//Page 11
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Finally decide to quit";
    trummelcodecline[page,2] = "talking, eh?";
    trummelcodecline[page,3] = "Alright, bring it on!";
    trummelcodecline[page,4] = "";
    page++; 
}

if (gay == true){
	jump_start_time = 10;
	dash_speed = 200;
	air_accel = 0.0002;
	knockback_adj = 10;
}

//Dracula support
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite")
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "You don't seem like you're from around here. What buisness do you have with me?";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "Hey old man! What's your castle doin' here on my home turf?";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "Manners, you filthy rat!";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "My castle is a sign of my neverending reign of this world. Soon, you and your little furry friends will bow down and join my ranks!";
page++;

//Page 4
dracula_speaker[page] = 1;
dracula_text[page] = "Neverending reign? That doesn't sound fun.";
page++;

//Page 5
dracula_speaker[page] = 1;
dracula_text[page] = "By the way, I'm not a rat. I'm a HEDGEHOG. Get your facts straight!";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "Your words run as fast as your attitude, you uncontrolled beast! [glass] I will make you eat your own words!";
page++;

//Page 7
dracula_speaker[page] = 1;
dracula_text[page] = "Hey! That's my line!";
page++;

//--------------------------------------------

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
// use this to be awesome
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

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
    
    //
    //bar-kun additions (note: idk how fg_sprite work)
    //
    case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
    case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": 
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;