//hurtbox_spr = asset_get("ex_guy_hurt_box");
//crouchbox_spr = asset_get("ex_guy_crouch_box");

hurtbox_spr = sprite_get("Dr_Hurtbox");
crouchbox_spr = sprite_get("Dr_Crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;


//DR MARIO RELEVANT STATS
walk_speed = 3.25;
walk_accel = 0.25;
initial_dash_time = 14;
initial_dash_speed = 6.25;
dash_speed = 5.75;
dash_turn_time = 10;
dash_turn_accel = 1.75;
dash_stop_time = 4;
ground_friction = .50;
moonwalk_accel = 1.4;

jump_speed = 10.5;
short_hop_speed = 6.5;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .05;			//Rainbow says : Only 2 decimal values
walljump_hsp = 6;
walljump_vsp = 9;
max_fall = 10.5; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .50;			// Doc always has Mario Gravity
hitstun_grav = .51;
knockback_adj = 1.0;			//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier


prat_land_time = 14;
wave_land_time = 7;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .12; //grounded deceleration when wavelanding


//Constant stats
walk_turn_time = 6;
dash_turn_time = 10;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
jump_start_time = 5;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_time = 32;
land_time = 4; //normal landing frames


//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 12;
techroll_recovery_frames = 1;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 12;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 12;
roll_back_recovery_frames = 1;
roll_forward_max = 9;						//roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//winning

set_victory_bg( sprite_get( "victory" ));

set_victory_theme(sound_get("victory"));

//Timer variables
timer_intro=-4;
timer_intro_2=0;
intro_done=0;

//Grab variables
grabbedid=noone;
dispx=0;
dispy=0;

//INTERNAL VARIABLES
cape = 0;
detect_x =0;
detect_y = 0;
jugador = -1;
counter = 0;
cyclone = 0;
shoryuken = 0;
pilleffect = 0;
gustav = 0;
grabbedid = undefined;
message = 0;
checker=0;
golpeado=9;
dust_pos1=0;
dust_pos2=0;
dust_draw= 0;
soundpick = 0;
pill_color = 0;
kirby_pill=1;

//New CSS Stuff
voice_toggle = 0;
split_var = split_synced_var(1,4);
voice_toggle =split_var[0];
pill_skin =split_var[1];

if pill_skin == 0 || pill_skin> 10{
  pill_skin = 1;
}

//Koffing compatibility
neutralized_ability = "Pills";
koffing_gas_active=0;

//Pill_Hit = hit_fx_create( sprite_get("pill_hit"), 6 );
next_group = 0;
snolid = 0;
pill_counter = 0;
doc_melee_counter = 1;
num3 = 0;
repeat(1000)
	   {
	   done_reflecting_hitbox[num3] = 0;			//Chooses a pill;
	   num3 += 1;
	   }
done_reflecting_article = 0;

// ---------------------------------------TETRIS RNG VARIABLES : This was hell to program lmao------------------------------------
pill=1;			//Type of  Pill
reroll=0;
num = 6;
num2 = 0;
valido = 0;
//Array Iniciate
repeat(7)
   {
   order[num] = 0;			//Chooses a pill;
   previo[num] = 9;	
   num -= 1;
   }


// --------------------------------------COMPATIBILITY VARIABLES--------------------
arena_title = "The Pain Prescriber"
boxing_title = "The Pain Prescriber"
Hikaru_Title = "Dr"
pkmn_stadium_name_override = "DR.MARIO";

tcoart = sprite_get("drmariotco");

walle_taunt_sound = sound_get("wallemoment")
walle_taunt_type = 2;

trummelcodecneeded = false;
trummelcodec_id = noone;

battle_text = "* You wonder if he has a real medical ";
battle_text2 = "licence.";

kirbyability = 16;
swallowed = 0;
enemykirby = undefined;

nname = "Dr. Melee Mario"
///codec
ncode1 = "Unlicensed medical practioner."
ncode2 = "He takes from both Melee and Ultimate."
ncode3 = "Watch out for his megavitamin setups."

pkmn_stadium_front_img = sprite_get("PS1_Front");
pkmn_stadium_back_img = sprite_get("PS1_Back");

guiltySprite = sprite_get("Monokuma")
sprite_change_offset("Monokuma", 31, 0);

resort_portrait = sprite_get("Resort");
sprite_change_offset("Resort", 27, 39);

miiverse_post = sprite_get("Miiverse");
sprite_change_offset("Miiverse", 60, 30);

otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

feri_costume = sprite_get("cringesupport");
sprite_change_offset("cringesupport", 84, 113);

wily_robotmaster_img = sprite_get("Wily_Castle_DMM");

//fire support
fire_taunt = sprite_get("firechungus");
fire_taunt_duration = 60;
fire_taunt_frames = 1;
fire_taunt_sound = sound_get("melee_wack");
fire_taunt_sound_frame = 1;

fs_display = 180;
doc_score = 0;		

hit_player_event = 2;

/* funny variables for phone thing
prev_gravity_speed = gravity_speed;
prev_hitstun_grav = hitstun_grav;
prev_air_accel = air_accel;
prev_jump_speed = jump_speed;
prev_djump_speed = djump_speed;
prev_short_hop_speed = short_hop_speed;
prev_double_jump_time = double_jump_time;*/ 

//Assist Buddy - Default values, may change with each attack
assistAttackRNG = 0; //The attack to use as the assist
assistOffsetX = 10; //The horizontal distance they spawn from the player
assistOffsetY = 0; //The vertical distance they spawn from the player
assistGroundOnly = false; //Whether or not they are forced to the ground
assistFloat = false; //Whether or not they stay in place vertically

fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 85;

found_mario = false;
var check_player = 1;
if(get_player_color(player) == 21) repeat(4) {
  if(check_player != player && is_player_on(check_player) && string_count("mario", string_lower(get_char_info(check_player, INFO_STR_NAME)))) { //don't say hello to myself
    found_mario = true;
  }
  check_player++;
}

//Pringles
pringles = 0;

//Munophone limits
phone_blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
phone_blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
phone_blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
phone_blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);


//-------------------------Thanks Supersonic-------------------
#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var player = (room == 113) ? 0 : self.player;
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
print(chunk_arr);
return chunk_arr;
//pill_skin = abs(get_synced_var(player));
//pill_prev = get_synced_var(player);