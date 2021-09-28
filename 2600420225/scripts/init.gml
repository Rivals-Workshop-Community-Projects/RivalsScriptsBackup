//to edit VV

// Physical size
char_height         = 88;
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 5;		// 3    -  4.5
walk_accel          = 0.08;		// 0.2  -  0.5
walk_turn_time      = 0;	    // 6
initial_dash_time   = 10		// 8    -  16
initial_dash_speed  = 6;		// 4    -  9
dash_speed          = 8;		// 5    -  9
dash_turn_time      = 0;		// 8    -  20
dash_turn_accel     = 0.2;		// 0.1  -  2
dash_stop_time      = 0;		// 4    -  6
dash_stop_percent   = 0;		// 0.25 -  0.5
ground_friction     = 9999;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 2;		// 4    -  8
max_jump_hsp        = 15;		// 4    -  8
air_max_speed       = 2;  		// 3    -  7
jump_change         = 4;		// 3
air_accel           = 0.6;		// 0.2  -  0.4
prat_fall_accel     = 0;		// 0.25 -  1.5
air_friction        = 0.02;		// 0.02 -  0.07
max_fall            = 5;		// 6    -  11
fast_fall           = 5;		// 11   -  16
gravity_speed       = 0.2;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 3;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 7.5;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 7.5;		// 4    -  7.4
djump_speed         = 6.5;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 0;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = -6;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 0;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions (useless)
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.2;
crouch_anim_speed   = 0.05;
morph_anim_speed    = 0.05;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.4;
turn_anim_speed     = 1; //to set




// Jumps
double_jump_time    = 200;		// 24   -  40
walljump_time       = 5;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 0; //useless
dodge_active_frames     = 0; //useless
dodge_recovery_frames   = 0; //useless

// Tech
tech_active_frames      = 0; //useless
tech_recovery_frames    = 0; //useless

// Tech roll
techroll_startup_frames     = 0; //useless
techroll_active_frames      = 0; //useless
techroll_recovery_frames    = 0; //useless

// Airdodge
air_dodge_startup_frames    = 0; //useless
air_dodge_active_frames     = 0; //useless
air_dodge_recovery_frames   = 0; //useless

// Roll
roll_forward_startup_frames     = 0; //useless
roll_forward_active_frames      = 0; //useless
roll_forward_recovery_frames    = 0; //useless
roll_back_startup_frames        = 0; //useless
roll_back_active_frames         = 0; //useless
roll_back_recovery_frames       = 0; //useless

// Crouch
crouch_startup_frames   = 3;
crouch_active_frames    = 5;
crouch_recovery_frames  = 3;
morph_startup_frames    = 3;
morph_active_frames     = 8;
morh_recovery_frames    = 3;

/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/




// Victory
set_victory_theme(sound_get("victory_theme"));

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

if(state == PS_SPAWN){
    sound_stop(sound_get("introer_intro"));
    sound_play(sound_get("introer_intro"));
}

//////variables


// power ups

jump_power_up = "normal_" // space_jump_, screw_attack_
morphball = false;
bombs_power_up = false;
high_jump = false;
varia_suit = false;
speed_booster = false;
grapple = false;
X_ray = false;
gravity_suit = false;
spring_ball = false;
charge = false;
beam_level = "1";
beam_cooldown = 60;

missiles = false;
super_missiles = false;
power_bombs = false;

//resources

energy = 99;                       // 0-99
missile_amount = 0;                // <=230
super_missile_amount = 0;         // <= 30
power_bomb_amount = 0;            // <= 20
energy_tank_amount = 0;            // <= 14
energy_tank_empty_amount = 0;      // <= 14
reserve_tank_amount = 0;           // <= 4
reserve_tank_empty_amount = 0;     // <= 4

//states

movement = "idle_" // idle_ / run_
is_aiming = "forward_"; //up_, forward_, diagonal_up_, diagonal_down_, down_
is_facing = "left";  //left/right
is_crouch = false;
is_morph = false;
is_falling = false;
is_jumping = false;
is_somersaulting = false;
level = 0;

select_ammo = 0; // 0=beam 1=missiles 2=super missiles 3=power bombs 4=grapple beam 5=xray scope

special_bomb_creation = 50;
special_bomb = false;
bomb_amount = 0;
i_frames = 100;
walljump_cooldown = 0;
special_state_timer = 0;
special_cooldown = 0;
is_dead = false;
hyper_beam_magic = c_red;
hyper_beam_magic_timer = 0;
death_timer = 0;
if(get_player_color(player) >= 8){
    num_samuses = 2;
}else{
    num_samuses = 0;
}
animation_counter = 0;
samus_check = 1;
hit_counter = 0;
power_up_timer = 0
prev_level = 0;
prev_missile_amount = 0;
prev_super_missile_amount = 0;
prev_power_bomb_amount = 0;
prev_health = 0;
prev_tank_empty = 0;
damage = 0;
prev_damage = 0;
space_timer = 0;
charge_timer = 0;
beam_trail = 0;
beam_trail_movement = 20
charging_timer = 0;
is_charged = false;
projectile_x = 20;
projectile_y = 0;
popup_timer = 240;
draw_info = false;
missile_cooldown = 0;
bomb_cooldown = 0;
smoke_trail = 0;
smoke_trail_anim = 0;
power_bomb_cooldown = 0;
fog_magic = 0.1;
fog_magic2 = 0.2;
fog_magic3 = 0.1
speeding = false;
shinespark_charged = false;
shinespark_timer = 0;
speed_charge = 0;
is_shinesparking = false;
shinespark_trigger = 0;
reserve_trigger = 0;
crystal_flash_timer = 0;
is_crystal_flashing = false;

space_jump = false;
screw_attack = false;
beam_2 = false;
beam_3 = false;
beam_4 = false;
beam_5 = false;
beam_6 = false;

prev_x_pos = 0;
prev_y_pos = 0;

shinespark_end = 0;

charge_sfx = 0;
spark_sfx = 0;
somer_sfx = 0;

opponent_fog_timer = 0;

//I need theese to draw the tanks in the hud
tank_1 = "full"
tank_2 = "full"
tank_3 = "full"
tank_4 = "full"
tank_5 = "full"
tank_6 = "full"
tank_7 = "full"
tank_8 = "full"
tank_9 = "full"
tank_10 = "full"
tank_11 = "full"
tank_12 = "full"
tank_13 = "full"
tank_14 = "full"

reserve_1 = "full"
reserve_2 = "full"
reserve_3 = "full"
reserve_4 = "full"

//adam's text
line = 0;
hud_text_draw = -100;
hud_text = "this line doesn't happen lmao" //max 26 characters max 3 rows so 78 characters
hud_text_timer = -100;
line_ind = 0;
item_collect = "0%"
line_array = [
"Any objections, Lady?",
"y can't metroid crawl?",
"metroid is a girl",
"Hello World",
"lol n00b get wrecked",
"Wavedashing has been
authorized",
"I wonder how many players
will see this message",
"Metroid is a cool guy. Eh
shoots aliens and doesn't
afraid of anything",
"See you next mission!!!",
"YOUR RATE FOR COLLECTING
ITEMS IS " + item_collect,
"The Quarantine Bay is
ahead. Bio-signs are
confirmed. Be careful",
"Now, go to the Quarantine
Bay",
"Happy 35th Anniversary
Metroid",
"Do you remember him?",
"What's an Other M?",
"I have named it the SA-X",
"Bomb data ready",
"HOW THE HELL CAN YOU
DOWNLOAD MISSILES",
"There are now no fewer
than 10 SA-X aboard the
station",
"Is your objective clear?
    
          Yes        No",
"Bird magic",
"Missile data ready.
Download immediately",
"Now! Use your missiles!",
"You don't move unless I
say so. And you don't fire
until I say so",
"DREAD is real 2021",
"Buy Metroid DREAD", 
"Crawling hasn't been
authorised",
"Samus up smash doesn't
work",
"I'm here even tho I'm
not in Super Metroid",
"Go Samus Go",
"The latex samus skin was
born because of an error",
]



// Hurtbox sprites
hurtbox_spr = sprite_get("idle_hurtbox");
air_hurtbox_spr = sprite_get("air_hurtbox");
hitstun_hurtbox_spr = sprite_get("hitstun_hurtbox");
crouch_hurtbox_spr= sprite_get("crouch_hurtbox");
morph_hurtbox_spr= sprite_get("morph_hurtbox");



//hit effects
beam_collision = hit_fx_create( sprite_get( "beam_attacks_" + beam_level + "_shot_and_charge_collision" ), 10 );
missile_collision = hit_fx_create( sprite_get( "physical_attacks_missile_contact_explosion" ), 12 );
super_missile_collision = hit_fx_create( sprite_get( "physical_attacks_super_missile_contact_explosion" ), 12 );
beam_trail_anim = hit_fx_create( sprite_get( "beam_attacks_" + beam_level + "_charge_particle" ), 24 );
empty = hit_fx_create(sprite_get("empty"), 1);

//shinespark directions

shine_right = false;
shine_left = false;
shine_diagonal_right = false;
shine_diagonal_left = false;
shine_up_right = false;
shine_up_left = false;

//randomizer

is_randomizer = false;

power_up_list = ds_list_create();
ds_list_add(power_up_list, 
"morphball",
"bombs_power_up",
"charge",
"beam_2",
"high_jump",
"varia_suit",
"speed_booster",
"beam_3",
"grapple",
"beam_4",
"X_ray",
"gravity_suit",
"space_jump",
"beam_5",
"spring_ball",
"screw_attack",
"beam_6");

power_ind = 0;
power_num = 17;
choice = "e";

muno_event_type = 0;
user_event(14);

/*used attacks
AT_UTHROW           beam_attacks
AT_DSPECIAL_AIR     body_hitbox
AT_FSTRONG_2        bombs
AT_DSTRONG_2        charge_beam
AT_DTHROW           missiles
AT_FTHROW           super_missiles

AT_USPECIAL_GROUND  power_bombs_mask_1
AT_NSPECIAL_2       power_bombs_mask_2
AT_NSPECIAL_AIR     power_bombs_mask_3
AT_FSPECIAL_2       power_bombs_mask_4
AT_FSPECIAL_AIR     power_bombs_mask_5
AT_USPECIAL_2       power_bombs_mask_6


unused yet

AT_USPECIAL_GROUND
AT_DSPECIAL_2
AT_USTRONG_2
AT_NTHROW
AT_TAUNT_2
AT_EXTRA_1
AT_EXTRA_2
AT_EXTRA_3