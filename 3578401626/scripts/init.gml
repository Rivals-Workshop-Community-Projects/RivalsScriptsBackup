// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 48;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.2;		// 0.9  -  1.2

// Ground movement
walk_speed          = 0;		// 3    -  4.5
walk_accel          = 0;		// 0.2  -  0.5
walk_turn_time      = 0;	    // 6
initial_dash_time   = 0;		// 8    -  16
initial_dash_speed  = 0;		// 4    -  9
dash_speed          = 0;		// 5    -  9
dash_turn_time      = 0;		// 8    -  20
dash_turn_accel     = 0;		// 0.1  -  2
dash_stop_time      = 0;		// 4    -  6
dash_stop_percent   = 0;		// 0.25 -  0.5
ground_friction     = 0;		// 0.3  -  1
moonwalk_accel      = 0;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 8;		// 4    -  8
max_jump_hsp        = 7;		// 4    -  8
air_max_speed       = 5;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.2;		// 0.2  -  0.4
prat_fall_accel     = 0.4;		// 0.25 -  1.5
air_friction        = 0.07;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 16;		// 11   -  16
gravity_speed       = 0.7;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 10;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = -0.7;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 4;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 12;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 8;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11

// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

if (get_player_color(player) != 5){
    spr_hud_hoop = sprite_get("hud_hoop");
    spr_hoopback = sprite_get("hoop");
    spr_hoopfront = sprite_get("hoop_front");
}else{
    spr_hud_hoop = sprite_get("althud_hoop");
    spr_hoopback = sprite_get("althoop");
    spr_hoopfront = sprite_get("althoop_front");
}

// SFX
sfx_example = sound_get("example"); // sounds/example.ogg

sfx_swipe_tiny = sound_get("swing1");
sfx_swipe_small = sound_get("swing2");
sfx_swipe_mid = sound_get("swing3");
sfx_swipe_big = sound_get("swing4");

sfx_hit2 = sound_get("hit_lightish");
sfx_hit3 = sound_get("hit_medium");
sfx_hit3alt = sound_get("hit_mediumalt");
sfx_hit4 = sound_get("hit_hard");
sfx_hit5 = sound_get("hit_heavy");
sfx_hit6 = sound_get("hit_phunk");
sfx_hit7 = sound_get("hit_honk");

if (get_player_color(player) == 7){
    sfx_laugh = sound_get("jevil_laugh");
} else{
    sfx_laugh = sound_get("ph_laugh");
}

// VFX
vfx_example = hit_fx_create(spr_example, 54);
vfx_yorick_land = hit_fx_create(sprite_get("fx_yorickland"), 18);
vfx_rightvictoryplat = hit_fx_create(sprite_get("1plat_back"), 120);
vfx_leftvictoryplat = hit_fx_create(sprite_get("-1plat_back"), 120);
vfx_teethbreak = hit_fx_create(sprite_get("fx_groundteeth_break"), 24);
vfx_pancake = hit_fx_create(sprite_get("jumpancakeffect"), 1000);

// Variables
didlydee = false; 
generic_timer = 0;
generic_timer2 = 0;
generic_fx = noone;
attacking_now = 0;
is_ai = false;
hitted_timer = 0;

free_vsp = 0;
free_hsp = 0;
ground_timer = 0;

jump_charged = 0;
charge_jump_counter = 0;
next_jump_height_mod = 0;

clothl_colr = get_color_profile_slot_r(get_player_color(player), 2);
clothl_colg = get_color_profile_slot_g(get_player_color(player), 2);
clothl_colb = get_color_profile_slot_b(get_player_color(player), 2);

clothr_colr = get_color_profile_slot_r(get_player_color(player), 3);
clothr_colg = get_color_profile_slot_g(get_player_color(player), 3);
clothr_colb = get_color_profile_slot_b(get_player_color(player), 3);

grabbed_player = noone;

summersault = 0;

drumroll_loop = 0;
drumroll_loop_sound = 0;

hooped = 0;
hooped_max = 6;

warp_dir = 0;

ustrong_mus_tracker = 0;
ustrong_music_index = sound_get("jitb_mus_weasel");
ustrong_mus_counter = 0;

intro_stage = 0;

fspecial_charge = 0;
fspecial_charge_max = 8;
fspecial_sound_tracker = 0;

footstooled_player = noone;

hoop_recharge_y = 0;
hoop_recharge_vsp = 0;

pancaked = 0;
pancake = noone;

is_balcone = true;

teeth_count = 0;

// Animation Info
dust_shade = 2;

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0;
walk_anim_speed     = 0;
dash_anim_speed     = 0;
pratfall_anim_speed = 0.1;

// Jumps
double_jump_time    = 20;		// 24   -  40
walljump_time       = 12;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 1;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 8;
crouch_recovery_frames  = 2;

// Hurtbox sprites
hurtbox_spr         = sprite_get("pagliaccia_groundbox");
crouchbox_spr       = sprite_get("pagliaccia_groundbox");
air_hurtbox_spr     = sprite_get("pagliaccia_hurtbox"); 
hitstun_hurtbox_spr = sprite_get("pagliaccia_hurtbox"); 

// Victory
set_victory_bg(sprite_get("victory_bg")); // victory_background.png
set_victory_theme(sound_get("tarantella_pagliaccia")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("bigpunch_sfx");
landing_lag_sound   = asset_get("bigpunch_sfx");
waveland_sound      = sound_get("waveland");
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = sound_get("boing");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 14;

//WElcome to the combatablitiy zone :D
tcoart = sprite_get("z_tcoart");

pkmn_stadium_front_img = sprite_get ("z_pkmn_front");
pkmn_stadium_back_img = sprite_get ("z_pkmn_back");

battle_text = "* The air feels like a trampoline.";
battle_text2 = " ";
battle_text3 = " ";

miiverse_post = sprite_get("z_miiverse_post");

Hikaru_Title = "Pagliaccia con Dentoni";

arena_title = "The Clown Gone Astray";
boxing_title = "The Clown Gone Astray";

copy_ability_id = 55;
kf_hud_offset = 0;

sna_interrogated_line_01 = "Is my physicality not all the better to smell one with, yes?"; // Snake interrogation line 1.
sna_interrogated_line_02 = "Many, hast visit the circus to lake witness to impossible feats, right right?"; // Snake interrogation line 2. (Optional.)
sna_interrogated_line_03 = "You know? Hast one pondered how a being of no breath chokes?"; // Snake interrogation line 3. (Optional.)

pot_compat_variable = sprite_get("z_food");
pot_compat_text = "Chewy Cacciatore";

TCG_Kirby_Copy = 9;

knight_compat_dream = 
[
    "...Quante gran faloppe famoso deve far Monterotondo...",
    "Rasponi? Rasponi. Da Turin? Da Turin...",
    "...Did you know I hast a taste for the deaded, little bug?"
];

parkan_lose_spr = sprite_get("idle");
parkan_lose_anim_speed = idle_anim_speed;
parkan_lose_yoffset = 10;
parkan_fissure_falling_sfx = sound_get("whizz");
parkan_fissure_falling_land_sfx = sound_get("teeth_splat");
parkan_fissure_falling_spr = sprite_get("uphurt");
parkan_fissure_falling_anim_speed = 0;

xmas_product_name = "Clown Rabbit Stuffed Animal Plush Doll Toy";
xmas_product_desc = "Small cuddly toy, very squishy, weird teeth (dentist toy?), good at kissing";
xmas_product_price = 230;

steve_death_message = "Steve has been clowned.";

resort_portrait = sprite_get("z_resort_portrait");

guiltySprite = sprite_get("z_guilty");

steve_armor_spr = sprite_get("z_armor_base");
steve_armor_spr_a = sprite_get("z_armor_diamond");
steve_armor_frames = 1;
steve_armor_length = 30; 
steve_armor_fade = 15;
steve_armor_palette_index = 4; //the color palette index of your character to replace with the approrpiate armor color's. This can be an integer, or an array of integers.

steve_uber_color = 1; //can only be an integer. the color palette index to base the ubercharge color on.
steve_uber_alt = [0]; //an array of color palette slots to replace with yellow for ubercharge

scoop_personalized_flavour_name = "Neapolitan Harlequin";
scoop_personalized_flavour_sprite = sprite_get("z_frozentreat");

//talk zone (sub-area of the combatability zone)
//Dracula support
dracula_portrait = sprite_get("z_dracula_portrait");
dracula_portrait2 = sprite_get("z_dracula_portrait2");
dracula_portrait3 = asset_get("empty_sprite");
page = 0

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "Ah! Dear countings, one've heard of me, yes?";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = " ";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "I'm thy evil Balcone, thy localise terror of the local terratory that you happenstance to place one's castle!";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "I know enough about you, clown. Take your bluster elsewhere.";
page++;

//Page 4
dracula_speaker[page] = 1;
dracula_text[page] = "Bluster? Peculiaritious speculation! I'm of dragon's teeth, you notation?";
page++;

//Page 5
dracula_speaker[page] = 1;
dracula_text[page] = "Tell me, no matter howst greatest wisdom, perhaps man still machinates fault in one's judgement?";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "I am no man.";
page++;

//Page 7
dracula_speaker[page] = 1;
dracula_text[page] = "HeHAH! And I'm no being of ''bluster'', let's lake witness to thy true! Yes?";
page++;
