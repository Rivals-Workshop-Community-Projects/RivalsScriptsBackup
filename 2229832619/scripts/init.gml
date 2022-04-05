

/*

Reality has come in sight

What did you see?
What did you hear?
What did you think?
What did you seek?

What did you do?

*/








hurtbox_spr = sprite_get("na_hurtbox");
crouchbox_spr = sprite_get("na_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 38;
idle_anim_speed = .09; //.11
crouch_anim_speed = .05;
walk_anim_speed = .08;
dash_anim_speed = .12;
pratfall_anim_speed = .25;

walk_speed = 2; //2
walk_accel = 0.1;
walk_turn_time = 10;
initial_dash_time = 8;
initial_dash_speed = 6.5; //6.5
dash_speed = 4.7; //4.7
dash_turn_time = 8;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .2;
moonwalk_accel = 1.25;

jump_start_time = 5;
jump_speed = 11.8;
short_hop_speed = 7.5;
djump_speed = 10.4;
leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3.8; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .5; //multiplier of air_accel while in pratfall
//air_friction_orig = 0.017;
air_friction = 0.03;//0.017
//air_friction_hitstun = 0.04;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4.7;
walljump_vsp = 10.8;
walljump_time = 36;
max_fall = 7.5; //maximum fall speed without fastfalling //10.5
fast_fall = 12.7; //fast fall speed //14.7
gravity_speed = .45; //.45
hitstun_grav = .51;
knockback_adj = 1.05;//1.09 //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 11;
wave_land_time = 6;
wave_land_adj = 1.18; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .3; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 2;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 9.6;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 9; //7.5

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 8.6; //roll speed
roll_backward_max = 8.6;

//walljump animation frames
wall_frames = 3;

//land_sound = asset_get("sfx_land_med");
land_sound = asset_get("sfx_land_med2");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_fors");
//jump_sound = asset_get("sfx_jumpground");
jump_sound = sound_get("na_jump2");
//djump_sound = asset_get("sfx_jumpair");
djump_sound = sound_get("na_doublejump2");
//air_dodge_sound = asset_get("sfx_quick_dodge");
air_dodge_sound = asset_get("sfx_boss_shine");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

/*
na_vsp_h=[0, 0, 0, 0, 0, 0];
na_hsp_h=[0, 0, 0, 0, 0, 0];
*/

set_victory_theme( sound_get( "Victory" ));
set_victory_bg( sprite_get( "na_resultbg" ));

voidfx = hit_fx_create( sprite_get( "na_void" ), 24 );
wavefx = hit_fx_create( sprite_get( "na_wave" ), 28 );
na_ls_fx = hit_fx_create( sprite_get( "hfx1" ), 24 ); //largeslash
na_ms_fx = hit_fx_create( sprite_get( "hfx2" ), 24 ); //mediumslash
na_cs_fx = hit_fx_create( sprite_get( "hfx3" ), 24 ); //clawslash
na_ss_fx = hit_fx_create( sprite_get( "hfx4" ), 20 ); //sentryslash
na_aura1 = hit_fx_create( sprite_get( "na_aura1" ), 12 );
na_aura2 = hit_fx_create( sprite_get( "na_aura2" ), 14 );
na_aura3 = hit_fx_create( sprite_get( "na_aura3" ), 16 );

arena_title = "N/A";
arena_short_name = "N/A";
battle_text = "* Fear.";
Hikaru_Title = "-4";
pkmn_stadium_front_img = sprite_get("na_ps_f");
pkmn_stadium_back_img = sprite_get("na_ps_b");
ncode1 = "Unidentified instance of an 'abyss' creature."
ncode2 = "May be stronger than other abyssal creatures in the database."
ncode3 = "Abort mission and prioritize escaping."
steve_death_message = "death.attack.void";
tcoart = sprite_get("na_stickman");
feri_costume = sprite_get("na_feri");

//table of contents:
//article1 is abyss bubble
//article2 is nspecial rift
//article3 is lingering slash

nadev = false;
nadev_display = true;
nadev_cooldown = 0;
na_ust_marked = 0;
was_usp = false;
na_dsp_charge = 0;
dspmax = 30;//initially 50, previously 35, currently 30
dairvsp_orig = -12;
dairvsp = -12;
dair_mark = false;
usp_ls_cooldown = 0;

usp_land = false;

col_timer = 0;
col_timer_max = 30;
col_phase = 0;
ea_init = 0;
giy_timer = 0;
giy_max = 192;
giy_speed = 0.3;
giy_speed_n = 0.3;
giy_speed_f = 3;
giy_tr_speed = 0.06;

trummelcodecneeded = false;
trummelcodec_id = -4;

clock_show = false;
clock_timer = 0;
clock_dur_orig = 80;
clock_dur = 80;
clock_s_type = 0;
clock_s_timer = 0;
clock_s_dur = 20;
clock_n_prev = 0;
clock_n_cur = 0;
clock_n_timer = 0;
clock_n_dur_orig = 6;
clock_n_dur = 6;
clock_n_deathstore = 0;
clock_lock = false;

dsp_air_track = 0;
/*
quake_timer = 0;
quake_dur = 24;
*/
extra_col = 0;
na_bh = false;

v_fstrong = false;

practice = false;






//i just happened to have LoA design for N/A so here goes;

// Date Girl Support
	Chatting = true; 

	DG_portrait = sprite_get("na_vn");
	var DG_page = 0;
	
// Page 0
	DG_page = 0;								DG_chat_type[DG_page] = 2;
	// 1 = Dialogue with answers to select after
	// 2 = Dialogue that transitions into more dialogue
	// 3 = Dialogue that ends afterwards
	

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = true;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = ""
	DG_dialogue_right[DG_page] = "Hello! I assume you are Mr. N/A, yes?
							I've heard you were around here, so I've visited in hopes
							that I may ask you some things!
							_                                                              Page "+string(DG_page+1)+"
							Callie";

	DG_nextindex[DG_page] = 1;
		
// Page 1
	DG_page = 1;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "Good evening.
							This vessel, we - or I - am, referred to as N/A, yes.
							What thoughts have brought you here?
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 2;

// Page 2	
	DG_page = 2;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "Hm. However, curious. Something seems to be different...?
							Our mobility, our thoughts, interfered by outside force.
							The vessel feels perhaps restricted of its powers.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 3;

// Page 3	
	DG_page = 3;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 2;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "... Ah. The vessel has been applied anthropomorphism.
							And it also seems our natural instincts have been
							surpressed, and the hostility that comes with it.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 4;

// Page 4	
	DG_page = 4;								DG_chat_type[DG_page] = 1;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 1;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "If this is your doing, it is impressive.
							Perhaps this is why you were able to approach this vessel
							so bravely.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "I'm not so sure what I've done that you keep saying.
							May I ask some questions?
							It's because Abyss don't scare me none!
							^                                          +* Choose an option! *+";
	
	DG_answers[DG_page] = [5, 10, 7]; 

// Page 5	
	DG_page = 5;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "We must admit, we are not certain of the cause.
							However, we have no recollection of preceding occurance of
							such type of force affecting us until this moment.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 6;

// Page 6	
	DG_page = 6;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 1;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "It is quite an intriguing experience.
							If we are to come across any other cases of such effect,
							we must study it to the extent we are capable of.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 10;

// Page 7	
	DG_page = 7;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "Ah. Bravery is a great trait to those who fight.
							As much as we do not require such emotions to drive our
							units to fight, we respect those of you who has gained it.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 8;

// Page 8
	DG_page = 8;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 3;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "If initial fear does not work, it is power that can next
							be demonstrated, but we have been drained of the
							initiative to fight at the moment.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 10;

// Page 10
	DG_page = 10;								DG_chat_type[DG_page] = 1;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "Hm, yes, your inquiries.
							Quite curious, what you wish to inquire from us.
							Ask and we will answer as much as we can disclose.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "Where did you come from? Location, I mean.
							Why do you fight? What for?
							Why are you an axolotl?
							^                                          +* Choose an option! *+";
	
	DG_answers[DG_page] = [11, 20, 30]; 

// Page 11
	DG_page = 11;								DG_chat_type[DG_page] = 1;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "The depths of what you all refer to as The Endless Abyss.
							This vessel has been assigned to protect the location to
							terminate any intruders that may step onto the area.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "Are you supposed to be out here?
							...Nihil Descent, is it?
							Now I know where to avoid.
							^                                          +* Choose an option! *+";
	
	DG_answers[DG_page] = [12, 14, 17]; 

// Page 12 - option 1-1
	DG_page = 12;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "Indeed. There are multiple units patrolling the same area,
							and this vessel is now exchanged with an another unit
							whilst this vessel has been re-assigned for other works.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 13;

// Page 13 - option 1-1
	DG_page = 13;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 2;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "As much as we've ended up disclosing, we will not
							elaborate on our newly assigned mission.
							Only the fact that we do have an objective above ground.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 18;

// Page 14 - option 1-2
	DG_page = 14;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "Ancient temple of an unknown origin, from what we've
							observed. We are still in process of researching what
							it is that it was dedicated to, and what it was used for.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 15;

// Page 15 - option 1-2
	DG_page = 15;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 2;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "It happens to be - ah. Perhaps we are disclosing too much.
							However even if one is able to get past our guards, the
							temple itself shall consume those who are not prepared.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 16;

// Page 16 - option 1-2
	DG_page = 16;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 3;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "If our information were to end up attracting you all
							into the temple, the temple is more than enough deterrence.
							Its appetite is all-consuming.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 18;

// Page 17 - option 1-3
	DG_page = 17;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 3;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "It is best advised to avoid, even if it were not under
							our control. Its appetite is all-consuming, and your
							splintered soul will be its repast.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 18;

// Page 18 - option 1-return
	DG_page = 18;								DG_chat_type[DG_page] = 1;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "Well. Do you have more to ask?
							Ask and we will answer as much as we can disclose.
							
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "(End) That is all I wanted to ask for now.
							Why do you fight? What for?
							Why are you an axolotl?
							^                                          +* Choose an option! *+";
	
	DG_answers[DG_page] = [50, 20, 30]; 

// Page 20 - option 2
	DG_page = 20;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 3;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "We fight for the hive mind.
							We are driven to overtake everything, but we cannot
							disclose what it is all for.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 21;

// Page 21 - option 2
	DG_page = 21;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 2;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "And of course, such actions beget opposition.
							All conflicting forces are fated to fight, whether either
							one succeed or not.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 22;

// Page 22 - option 2
	DG_page = 22;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 1;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "Black within white. Light within dusk.
							We are driven to fight. The other side fights back.
							As is nature's vicious cycle...
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 23;

// Page 23 - option 2
	DG_page = 23;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "Even while we admit to this, we will not stop with it.
							There is a higher force driving it all, or so we believe.
							However this vessel 4th in command, unknowing any higher.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 24;

// Page 24 - option 2-return
	DG_page = 24;								DG_chat_type[DG_page] = 1;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "Well. Do you have more to ask?
							Ask and we will answer as much as we can disclose.
							
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "Where did you come from? Location, I mean.
							(End) That is all I wanted to ask for now.
							Why are you an axolotl?
							^                                          +* Choose an option! *+";
	
	DG_answers[DG_page] = [11, 50, 30]; 

// Page 30 - option 3
	DG_page = 30;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "Axolotl... Ah. The formae of this vessel.
							All vessels are free to change shape as they choose.
							To all things, at any moment they want. 
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 31;

// Page 31 - option 3
	DG_page = 31;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 1;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "We've only chosen this vessel to take this formae for
							combat convenience. We do not have, attachment, hm? for
							this Axolotl formae, we merely did not have to change it.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 32;

// Page 32 - option 3
	DG_page = 32;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "We can still distinguish each vessel without visual
							recognition. We are aware of all of ourselves.
							Recognizability is none of our concern.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 33;

// Page 33 - option 3-return
	DG_page = 33;								DG_chat_type[DG_page] = 1;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "Well. Do you have more to ask?
							Ask and we will answer as much as we can disclose.
							
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "Where did you come from? Location, I mean.
							Why do you fight? What for?
							(End) That is all I wanted to ask for now.
							^                                          +* Choose an option! *+";
	
	DG_answers[DG_page] = [11, 20, 50]; 



// Page 50 - end
	DG_page = 50;								DG_chat_type[DG_page] = 2;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 1;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "Understood. 
							We respect your curiousity. This vessel's cognitio, too,
							is driven majorly by curiousity as well.
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 51;

	// Page 51 - end
	DG_page = 51;								DG_chat_type[DG_page] = 3;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "We may meet again, whenever it may be.
							Until then, traveller.
							
							_                                                              Page "+string(DG_page+1)+"
							N/A";
	
	DG_nextindex[DG_page] = 52;

	// Page 52 - trailer
	DG_page = 52;								DG_chat_type[DG_page] = 3;

	DG_adopts_color_left[DG_page] = true;		DG_adopts_color_right[DG_page] = true; 		
	DG_custom_left_portrait[DG_page] = true;	DG_custom_right_portrait[DG_page] = false; 
	DG_left_strip[DG_page] = 0;					DG_right_strip[DG_page] = 0; 
	DG_right_speaker[DG_page] = false;

  //DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if
	DG_dialogue[DG_page] = "We respect your curiousity. This vessel's cognitio, too,
							is driven majorly by curiousity as well.";
	
	DG_nextindex[DG_page] = 52;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	