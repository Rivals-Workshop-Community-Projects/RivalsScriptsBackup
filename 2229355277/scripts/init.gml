//Saffron-specfic variables.
spellslot[0] = 1;  // 1
spellslot[1] = 2;
spellslot[2] = 3;
spellslot[3] = 11;
spellslot[4] = 8;
spellslot[5] = 7;
spellslot[6] = 4;
spellslot[7] = 5;
prev_spell_cast = 33;

spellcost[0] = 0;
spellcost[1] = 0;

// Spell Cooldown
// controlled in update
slot_col = c_white;
slotone_col = c_white;
slottwo_col = c_white;

// Debug Mode
debugmode = false;

debugspell[0] = "beep";
debugspell[1] = "beep";
debugspell[2] = "beep";
debugspell[3] = "beep";
debugspell[4] = "beep";
debugspell[5] = "beep";

// Handles the GUI
spellselect[0] = 0;   // Slot 1 - Active
spellselect[1] = 0;   // Slot 2 - Active
spellselect[2] = 0;   // Slot 3 - Coming Up
spellselect[3] = 0;   // Slot 4 - Coming Up
spellselect[4] = 0;   // Slot 5 - Coming Up
spellselect[5] = 0;   // Slot 6 - Coming Up

//Specific spell stuff.
timefield = noone;
suspended_frames = 0;

playsound = false;
chargetier = 0;

sneakyalt = 0;

// moll.o
wearing_hat = (get_match_setting(SET_SEASON) == 4);
fx_sprites[1] = hit_fx_create(sprite_get("hattoss"), 30)
fx_sprites[2] = hit_fx_create(sprite_get("kerchow"), 10)
fx_sprites[3] = hit_fx_create(sprite_get("ragnarokeffect"), 45)
fx_sprites[4] = hit_fx_create(sprite_get("explosion"), 30)
fx_sprites[5] = hit_fx_create(sprite_get("thonk"), 10)
fx_sprites[6] = hit_fx_create(sprite_get("crossfire_explosion"), 10)

// Spells? Spells.
AT_GUILLOTINE = AT_UTHROW;
AT_THUNDER = AT_EXTRA_1;
AT_RAGNAROK = AT_FTHROW;
AT_ECHO = AT_NSPECIAL_2;
AT_BOMB = AT_EXTRA_3;
AT_EXPLOSION = AT_FSPECIAL_2;
AT_CROSSFIRE = AT_DTHROW;
AT_WONDER = AT_USPECIAL_2;

// Spell Costs
amountofspells = 12; // This is just so we can easily adjust any loops

spThunder = 1;      // KA-CHOW
spBomb = 2;         // You lit the fuse, I stand accused
spPekayFire = 1;    // Ness
spEmpowerRing = 2;  // OH NO MY PRECIOUS POWER RING
spRagnarok = 4;     // haha big sword go PSHHH
spGetNaeNaed = 4;   // thwack.
spEcho = 1;         // What the hell's going on, can someone tell me please?
spKnockdown = 2;    // Can hurt enemies who are using Fly or Bounce, I think
spCrossfire = 2;    // IN THE FUTURE, THE ULTIMATE CHALLENGE -
spExplosion = 5;    // Bakuretsu bakuretsu, la la la~
spTrishot = 1;      // My mom always warned me the cool kids would try to get me to drink
spWonder = 0;       // Feeling lucky?

jabdash = 9;

jab_flash = 0;
fullmana_flash = 0;   // literally don't even worry about this.
wait_timer_thing = 0; //same

// Visual Spell Indicator
max_flash_time = 120;
flash_time = 0;
show_flashing_icon = false;
prev_spell_icon = 6;
col_flashing = c_white;

uair_hitcheckvar = 0;

pkmn_stadium_front_img = sprite_get("pkmn_stadium_front_img");
pkmn_stadium_back_img = sprite_get("pkmn_stadium_back_img");
pkmn_name_override = "Saffron";

can_zoom = false;   // Used for Full Charge FStrong stuff

// Mana
mana = 1;           //The current level of mana you have. // 1
manabar = 30;        //The actual mana points we're counting in the background.  // 30
manabar_max = 100;  // The maximum it takes to get to full mana
manacharge = 0;     // This will slowly build mana

// Cooldown
shuffling = false;          // So you can reload while spells are still on cooldown
reload_cooldown1 = 8;       // Handles Slot One cooldown
reload_cooldown2 = 8;       // Handles Slot Two cooldown

// Cooldown:
// - If the spell was casted, the cooldown should be small.
// - If you are shuffling, the cooldown should be decently sized so you can't just keep shuffling.

//Drawing reticle
FOUR_TILES_POS = 227;
TWO_TILES_POS = 96;
draw_reticle = false;

// Ashley
orbvis = 0;
orb_y = 0;
start_y = -70;
time_y = 0;
duration = 60;
dest_y = -50;

// Rune
prev_attack_used = AT_JAB;
do_fancy_land = false;
psuedo_waveland_speed = 8;

hurtbox_spr = sprite_get("saffronhitbox");
crouchbox_spr = sprite_get("saffroncrouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .125;
dash_anim_speed = .155;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 6.5;
dash_speed = 7;
dash_turn_time = 12;
dash_turn_accel = 1.6;
dash_stop_time = 4;
dash_stop_percent = .45; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .65;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .27;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .021;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .51;
hitstun_grav = .42;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 6;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .14; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 11;
crouch_recovery_frames = 4;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("saffronwavedash");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Yet another fucking
for(var i=1; i<amountofspells; i++){
    spell_list[i] = i;
}

// Compatibilty Stuff (Just get this shit out of the way)
// Poyo
// Poyo Poyo Poyo Hiiii

// Mount Dedede Support
arena_title = "The Military Researcher";

// Trummel Alto
trummelcodecneeded = false;
trummelcodec_id = noone;

// Otto Bobbo
otto_bobblehead_sprite = sprite_get("saffron_bobble");
otto_bobblehead_body_sprite = sprite_get("saffron_bobblebody");

// Feri Support
feri_costume = sprite_get("feri_costume_saffron");

// TCO
 tcoart = sprite_get("saffrontcoart");

// Toon Link
toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = 8;

// Hikaru Support
Hikaru_Title = "Witness of Eden";

// Soulbound Conflict
battle_text = "* What is this? A crossover episode?";
battle_text2 = " ";
battle_text3 = " ";

// The Last Resort
resort_portrait = sprite_get("lastresort");

// Miiverse
miiverse_post = sprite_get("saffron_miiverse");

// The Trial Grounds
guiltySprite = sprite_get("guiltySprite");

// Steve
steve_death_message = "Steve was one step from Eden";

// Amber
//plushForAmber = sprite_get("amber_plushie");

// Agent N
ncode1 = "Military Scientist known for making spells.";
ncode2 = "Well-Versed in magic.";
ncode3 = "Watch out for the plush.";

// Wall-E
walle_taunt_sound = sound_get("wall_e_sound");
walle_taunt_type = 1;
