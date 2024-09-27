// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 48;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.3;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 20;		// 8    -  16
initial_dash_speed  = 4;		// 4    -  9
dash_speed          = 6;		// 5    -  9
dash_turn_time      = 16;		// 8    -  20
dash_turn_accel     = 1;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6
dash_stop_percent   = 0.2;		// 0.25 -  0.5
ground_friction     = 0.4;		// 0.3  -  1
moonwalk_accel      = 1.2;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 4;		// 4    -  8
max_jump_hsp        = 4;		// 4    -  8
air_max_speed       = 3;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.2;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.07;		// 0.02 -  0.07
max_fall            = 9;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 8;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 4;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = -0.6;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 9;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 5;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 5;		// 4    -  6
prat_land_time      = 12;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.2;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11

// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

if (get_player_color(player) == 8){
    sbahj = 1;
} else{
    sbahj = 0;
}

if (get_player_color(player) == 0){
    spr_hfx_lock = sprite_get("hfx_lock_c");
    
    spr_weasel_idle = sprite_get("k_weasel_idle_c");
    spr_clown_idle = sprite_get("k_clown_idle_c");
    spr_elf_idle = sprite_get("k_elf_idle_c");
    spr_hog_idle = sprite_get("k_hog_idle_c");
    
    spr_weasel_hurt = sprite_get("k_weasel_hurt_c");
    spr_clown_hurt = sprite_get("k_clown_hurt_c");
    spr_elf_hurt = sprite_get("k_elf_hurt_c");
    spr_hog_hurt = sprite_get("k_hog_hurt_c");
    
    spr_intro = sprite_get("intro_c");
} else{
    spr_hfx_lock = sprite_get("hfx_lock");
    
    if (get_player_color(player) == 3){
        spr_weasel_idle = sprite_get("k3_weasel_idle");
        spr_clown_idle = sprite_get("k3_clown_idle");
        spr_elf_idle = sprite_get("k3_elf_idle");
        spr_hog_idle = sprite_get("k3_hog_idle");
        
        spr_weasel_hurt = sprite_get("k3_weasel_hurt");
        spr_clown_hurt = sprite_get("k3_clown_hurt");
        spr_elf_hurt = sprite_get("k3_elf_hurt");
        spr_hog_hurt = sprite_get("k3_hog_hurt");
    } else{
    spr_weasel_idle = sprite_get("k_weasel_idle");
    spr_clown_idle = sprite_get("k_clown_idle");
    spr_elf_idle = sprite_get("k_elf_idle");
    spr_hog_idle = sprite_get("k_hog_idle");
    
    spr_weasel_hurt = sprite_get("k_weasel_hurt");
    spr_clown_hurt = sprite_get("k_clown_hurt");
    spr_elf_hurt = sprite_get("k_elf_hurt");
    spr_hog_hurt = sprite_get("k_hog_hurt");
    }
    
    spr_intro = sprite_get("intro_c");
}

spr_medal = sprite_get("kingdom_medal");

if (sbahj == 0){
    spr_tfx_bop = sprite_get("fx_txt_bop");
    spr_tfx_pow = sprite_get("fx_txt_pow");
    spr_tfx_kick = sprite_get("fx_txt_kick");
    spr_tfx_thwak = sprite_get("fx_txt_thwak");
} else{
    spr_tfx_bop = sprite_get("sbahj_fx_txt_bop");
    spr_tfx_pow = sprite_get("sbahj_fx_txt_pow");
    spr_tfx_kick = sprite_get("sbahj_fx_txt_kick");
    spr_tfx_thwak = sprite_get("sbahj_fx_txt_thwak");
}

// SFX
sfx_example = sound_get("example"); // sounds/example.ogg

sfx_hit1 = sound_get("hit_weak");
sfx_hit2 = sound_get("hit_mid");
sfx_hit3 = sound_get("hit_big");
sfx_hit4 = sound_get("hit_weird");
sfx_hit5 = sound_get("hit_bump");

sfx_bump = sound_get("bump");
sfx_bom = sound_get("bom");
sfx_crash = sound_get("crash");
sfx_slam = sound_get("slam");

sfx_gunshot1 = sound_get("gunshot");
sfx_gunshot2 = sound_get("tommygun");
sfx_gunload = sound_get("loadgun");
sfx_lock = sound_get("keylock");
sfx_jingle = sound_get("keyjingle");
sfx_key = sound_get("key_misc");

sfx_shuffle = sound_get("shuffle");
sfx_twinkle = sound_get("twinkle");
sfx_item_get = sound_get("ps_motif");
sfx_pew = sound_get("pew");
sfx_glimmer = sound_get("shing");

sfx_gulp = sound_get("gulp");
sfx_what = sound_get("what_pumpkin");

sfx_all_weasel = sound_get("weasel");
sfx_all_clown = sound_get("clown");
sfx_all_elf = sound_get("elf");
sfx_all_hog = sound_get("hog");

sfx_chime1 = sound_get("ps_chime");
sfx_chime2 = sound_get("ps_chime2");
sfx_chime3 = sound_get("ps_motif");

sfx_zilly1 = sound_get("zillyhoo_motif");
sfx_zilly2 = sound_get("zillyhoo_end");


sfx_piss = sound_get("piss_sampled_from_mike_&_melissa");

// VFX
vfx_example = hit_fx_create(spr_example, 54);
if (get_player_color(player) != 0){
    vfx_intro_door = hit_fx_create(sprite_get("intro_door_c"), 72);
} else{
    vfx_intro_door = hit_fx_create(sprite_get("intro_door_c"), 72);
}
vfx_flash = hit_fx_create(sprite_get("hfx_flash"), 18);
vfx_flash2 = hit_fx_create(sprite_get("hfx_bigflash"), 12);
vfx_lock = hit_fx_create(spr_hfx_lock, 30);
vfx_poof = hit_fx_create(sprite_get("hfx_poof"), 8);
vfx_parry = hit_fx_create(sprite_get("hfx_autoparry"), 30);
vfx_pumpkin = hit_fx_create(sprite_get("hfx_what"), 30);

vfx_empty_coffee = hit_fx_create(sprite_get("coffee_empty"), 20);
vfx_shades = hit_fx_create(sprite_get("bust_shades_proj"), 120);

vfx_allvis1 = hit_fx_create(sprite_get("hfx_res1"), 24);
vfx_allvis2 = hit_fx_create(sprite_get("hfx_res2"), 24);
vfx_allvis3 = hit_fx_create(sprite_get("hfx_res3"), 24);
vfx_allvis4 = hit_fx_create(sprite_get("hfx_res4"), 24);

tfx_bop = hit_fx_create(spr_tfx_bop, 24);
tfx_pow = hit_fx_create(spr_tfx_pow, 24);
tfx_kick = hit_fx_create(spr_tfx_kick, 24);
tfx_thwak = hit_fx_create(spr_tfx_thwak, 24);

vfx_ify = hit_fx_create(sprite_get("hfx_-ify"), 18);

// Variables
didlydee = false; 
generic_timer = 0;
generic_timer2 = 0;
generic_effect = noone;
generic_effect_cooldown = 0
attacking_now = 0;
is_ai = false;
misc_soundcooldown = 0;
body_hud = 1 - taunt_pressed;

commuting_with_kindom = 0;

if (get_training_cpu_action() != CPU_FIGHT){
    is_training_mode = 1;
} else{
    is_training_mode = 0;
}

lobbed_item = noone;

//weaponstuff
object_duality = 1;
ammo = 6;
ammo_regen_timer = 0;
weapon_locked = 0;

//key_stats
key_hb_priority = 2;
key_hb_damage = 10;
key_hb_base_knockback = 6;
key_hb_scale_knockback = 1.75;
key_hb_base_hitpause = 10;
key_hb_scale_hitpause = 2;
key_hb_extra_hitpause = 5;
key_hb_visual_effect = vfx_lock;
key_hb_sfx = sfx_hit4;

//kingdom
allegiance = 0;

allresource[1] = 0;
allresource[2] = 0;
allresource[3] = 0;
allresource[4] = 0;

strongallres[1] = 0;
strongallres[2] = 0;
strongallres[3] = 0;
strongallres[4] = 0;

allvisresource[1] = allresource[1];
allvisresource[2] = allresource[2];
allvisresource[3] = allresource[3];
allvisresource[4] = allresource[4];

allresource_cost = 3000;
allresource_max = 6;
allresource_gain_spacing = 0;

allresometer[1] = 0;
allresometer[2] = 0;
allresometer[3] = 0;
allresometer[4] = 0;

all_col[1] = $39e7f1;
all_col[2] = $c6e0ea;
all_col[3] = $d2b934;
all_col[4] = $237aa7;

summoned_guy = noone;
summon_guy_kingdom = 0;
summon_guy_x = x;
summon_guy_y = y;

//visual stuff
hud_col = get_player_hud_color(player);
hud_hex = make_color_rgb(color_get_red(hud_col), color_get_green(hud_col), color_get_blue(hud_col));
cool_factor = 1;
max_cool = 5;
base_shade[0] = 1;
base_shade[1] = 1;
base_shade[2] = 1;
base_shade[3] = 1;
base_shade[4] = 1;

//items
itm_pumpkin = 1;
itm_flask = 2;
itm_coffee = 3;
itm_candycorn = 4;
itm_window = 5;
itm_knifebear = 6;
itm_bust = 7;
itm_cc_sack = 8;
itm_code = 9;
itm_lock = 10;
itm_bullets = 11;
itm_egg = 12;
itm_codpiece = 13;
itm_pie = 14;
itm_melon = 15;
itm_tectrix = 16;
itm_corpse = 17;
itm_busted_bust = 18;

inv_selection = 0;
inv_selection_unend = 0;

hat_store = 0;

last_pull = 16;

//the items ids of each slot
inv_slot[0] = 0;
inv_slot[1] = 0;
inv_slot[2] = 0;
inv_slot[3] = 0;
inv_slot[4] = 0;

inv_count[0] = 0;
inv_count[1] = 0;
inv_count[2] = 0;
inv_count[3] = 0;
inv_count[4] = 0;

move_cooldown[AT_NSPECIAL] = 10000000000;

// Hud Info
inv_x_off = 18;
inv_y_off = -10;
inv_slot_size = 48;

//Stats
vial_limit = 200;

vial_base = vial_limit / 2;

vial_vim = vial_base;
vial_imagination = vial_base;
vial_pulchritude =  vial_base;

//effects
intoxication = 0;
intox_level = 0;

shades_wearing = 0;

//articles

//window
window_rot = 0;
has_a_window = 0;
window_art[0] = noone;
window_art[1] = noone;
window_x[0] = x;
window_y[0] = y;
window_x[1] = x;
window_y[1] = y;

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.25;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.25;
dash_anim_speed     = 0.3
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 3;
dodge_recovery_frames   = 2;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 8;
air_dodge_recovery_frames   = 1;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 8;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 8;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 1;
crouch_active_frames    = 6;
crouch_recovery_frames  = 2;

// Wait
wait_sprite = sprite_get("wait");
wait_time = 350;
wait_length = 120;

// Hurtbox sprites
hurtbox_spr         = sprite_get("det_hurtbox");
crouchbox_spr       = sprite_get("det_crouchbox");
air_hurtbox_spr     = sprite_get("det_airbox");
hitstun_hurtbox_spr = sprite_get("det_stunbox");

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("ps_vic_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = sound_get("land");
landing_lag_sound   = sound_get("laggedland");
waveland_sound      = sound_get("laggedland");
jump_sound          = sound_get("jump");
djump_sound         = sound_get("djump");
air_dodge_sound     = sound_get("dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//WElcome to the combatablitiy zone :D
tcoart = sprite_get("z_tcoart");

pkmn_stadium_front_img = sprite_get ("z_pkmn_front")
pkmn_stadium_back_img = sprite_get ("z_pkmn_back")

battle_text = "You feel the balminess of a distant"
battle_text2 = "summer evening."
battle_text3 = " "

uhc_victory_quote = "secret gaem found on gangbnuch fora!?!!"; 

miiverse_post = sprite_get("z_miiverse_post");

Hikaru_Title = "Pulchritudinous";

arena_title = "The Hard-Boiled Arbitor";
boxing_title = "The Hard-Boiled Arbitor";

copy_ability_id = 0
kf_hud_offset = 0

has_fail = true;
fail_text = "<- GO BACK";

pot_compat_text = "Diabetic's Daymare"
pot_compat_variable = sprite_get("z_food");

TCG_Kirby_Copy = 3;

resort_portrait = sprite_get("z_resort_portrait")

steve_death_message = "Steve was intermediated.";

bbc_msg = "Short man dressed as detective punches Prime Minister in the snout."
bbc_pic = sprite_get("charselect");

parkan_lose_spr = sprite_get("idle");
parkan_lose_anim_speed = idle_anim_speed;
parkan_lose_yoffset = char_height - 10;
parkan_fissure_falling_sfx = sound_get("zillyhoo_end");
parkan_fissure_falling_land_sfx = sound_get("burst");
parkan_fissure_falling_spr = sprite_get("down_hurt");
parkan_fissure_falling_anim_speed = 0

xmas_product_name = "Detective Toy (Armless)";
xmas_product_desc = "Black and white detective action figure toy. Undamaged. Arms are missing. 34cm.";
xmas_product_price = 1674;

//talk zone (sub-area of the combatability zone)

knight_compat_dream = 
[
    ">PS: Quickly retrieve arms from safe.",
    ">PS: Establish superiority by punching nearest Knight in snout.",
    ">PS: Fondly regard arbitration."
]

//Dracula support
dracula_portrait = sprite_get("z_dracula_portrait");
dracula_portrait2 = sprite_get("z_dracula_portrait2");
dracula_portrait3 = sprite_get("z_dracula_portrait3");
page = 0

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Your supposed peacemaking skill seem rather lacking, considering you almost shot me meer seconds after entering.";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "You find yourself in the abode of the COUNT DRACULA, he is offended by your blazen entrance and puts your DIPLOMATIC ABILITIES to question.";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "... Is that always how you choose to open doors?";
page++;

//Page 3
dracula_speaker[page] = 2;
dracula_text[page] = ">PS: Placate THE COUNT.";
page++;

//Page 4
dracula_speaker[page] = 1;
dracula_text[page] = "You detail COUNT DRACULA into the WEIRD PUZZLE BULLSHITTERY that took place that led here. The digruntled COUNT DRACULA interrupts you 6 tangents in.";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "Do you truly believe I care for such excuses.";
page++;

//Page 6
dracula_speaker[page] = 3;
dracula_text[page] = ">PS: LV. 15 SLEUTH DIPLOMACY: GUNBOAT DIP-[glass]";
page++;

//Page 7
dracula_speaker[page] = 0;
dracula_text[page] = "You will [shake]not be doing that.";
page++;

