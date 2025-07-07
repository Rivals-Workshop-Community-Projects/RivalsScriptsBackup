//                                  debug                                     //
init_complete = false; // used to ensure that draw scripts don't flood the error log if initialization is interrupted
is_playtest = (object_index == oTestPlayer);
is_ror_commando = true;

debug_display_opened = 0;
debug_display_count = 23;
debug_display_index = 0;
debug_display_scrolltimer = 0;
debug_display_type = 0;
debug_display_typerange = 3;

item_smuggler = instance_create(x, y, "obj_article3"); // For results screen
item_smuggler.state = -5;
item_smuggler.persistent = true;
item_smuggler.inventory_list = [];
item_smuggler.last_room = room;

var player_name = get_player_name(player);
limitless_mode = (string_pos("CHEAT", player_name) == 1); // Indexed starting at 1 due to GML jank
limitless_mode_cancelled = false;
limitless_mode_locked = !limitless_mode;

rainfont = font_get("_rfont");
rainfontbig = font_get("_rfontbig");


//=-(                        ~~//** CONSTANTS **//~~                       )-=//
// RCF user_event, defines lots of primitive constants. Will be removed during flattening.

// Non-primitive constants are below. (mostly text strings)
rarity_names = ["Common", "Uncommon", "Rare"];
negative_rarity_names = ["", "Dummy", "Void"];
item_type_names = ["Damage", "Knockback", "Healing", "Speed", "Critical", "Attack Speed", "Barrier", "Explosive", "Meta", "Burning"];
legendary_type_name = "Legendary";
set_victory_bg(sprite_get("cm_victory_bg"))



//=-(                    ~~//** NON-ITEM MANAGEMENT **//~~                  )-=//

// Lightweight particles
lfx_list = ds_list_create();

// General utility
prev_attack = noone;
flash_timer = 0;
flash_timer_max = 0;
flash_color = c_white;
do_wind_streaks = true;

// UTilt
utilt_advance_frame = false;
utilt_do_explosion = false;

// NSpec
nspec_charge_threshold = 20;
nspec_charge_frames = 0;
nspec_charge_level = 0;
nspec_vis_timer = 100;
nspec_vis_level = 0;
nspec_starting = false;

// FSpec
fspec_air_max_uses = 1;
fspec_air_uses = 1;
fspec_clamp_hsp = 0;

// DSpec
chest_obj = noone;
dspec_cooldown_hits = 0; // Hits on the opponent remaining until DSpec goes off cooldown.
first_hit = false; // Mirrors has_hit, but is accessible from hit_player to track the first hit applied.
trishop_odds = [25,50,75,100][0];
call_sfx_instance = noone;

//Death Messages
var death_messages = [
    "You have died. Maybe next time..",
    "ur dead LOL get wrecked",
    "DEAD",
    "Smashed.",
    "Your family will never know how you died.",
    "You died painlessly.",
    "Your death was extremely painful.",
    "Dead from blunt trauma to the face.",
    "You have passed away. Try again?",
    "Your internal organs have failed.",
    "This planet has killed you.",
    "Crushed.",
    "[TBD]",
    "You have broken every bone in your body.",
    "rekt",
    "ded",
    "Sucks to suck.",
    "They will surely feast on your flesh.",
    "Remember to use your Down Special.",
    "You are dead.",
    "Get styled upon.",
    "You walk towards the light.",
    "You embrace the void.",
    "Come back soon!",
    "Your body was gone an hour later.",
    "Try playing the Intermediate Defense tutorial to live longer.",
    "Choose a new character?",
    "Consider picking a different stage.",
    "That was definitely not your fault.",
    "That was absolutely your fault.",
    "Close!",
    "..the harder they fall.",
    "Beep.. beep.. beeeeeeeeeeeeeeeee",
    "You really messed up.",
    "It wasn't your time to die...",
    "You had a lot more to live for.",
    "Maybe next time.",
    "You die in a hilarious pose.",
    "You die a slightly embarassing death."
]
death_message_pick = death_messages[random_func_2( 0, array_length(death_messages), 1 )]
final_death_timer = 0;
is_na = 0; // n/a compat

ror_win_text = "..and so he left, with everything but his humanity."
set_victory_theme(sound_get("cm_victory"))

//=-(                     ~~//** ITEM MANAGEMENT **//~~                     )-=//

// Item Grid
// Format: see IG indices.
// Do not reorder items without updating their indices (user_event2.gml)! If you need to remove an item, use RTY_DUMMY to disable it.
// Legendary items must be correctly tagged in the primary type field, or they will be treated as normal items.
// Critical items must be correctly tagged in either type field to enable their effects.

item_grid =[["Crowbar",0,1,0,0,noone,"Deal more damage & knockback to healthy enemies.",noone], ["Warbanner",0,3,5,0,noone,"Taunt to place down a powerful buffing Warbanner.",noone], ["Headstompers",0,0,noone,0,noone,"Hurt enemies by fast-falling.",noone], ["Armor-Piercing Rounds",0,1,0,0,noone,"Strongs deal more damage and slightly more knockback.",noone], ["Bustling Fungus",0,2,noone,0,noone,"Crouch to heal over time.",noone], ["Paul's Goat Hoof",0,3,noone,0,noone,"Move faster.",noone], ["Energy Drink",0,3,noone,0,noone,"Dash faster.",noone], ["Arcane Blades",0,3,noone,0,noone,"Move faster after reaching 100%.",noone], ["Hermit's Scarf",0,3,noone,0,noone,"Parry, rolls, and airdodges have more invulnerability.",noone], ["Topaz Brooch",0,6,noone,0,noone,"Gain a barrier on kill.",noone], ["Lens Maker's Glasses",0,4,noone,0,noone,"Critical Strikes deal more damage.",noone], ["Tri-Tip Dagger",0,4,noone,0,noone,"Critical Strikes bleed opponents, dealing damage over time.",noone], ["Taser",0,4,noone,0,noone,"Critical Strikes briefly stun opponents.",noone], ["Soldier's Syringe",0,5,noone,0,noone,"Increased attack speed.",noone], ["Mocha",0,5,3,0,noone,"Slightly increased movement & attack speed.",noone], ["Sticky Bomb",0,7,noone,0,noone,"Blast attacks attach a little more firepower.",noone], ["Gasoline",0,7,9,0,noone,"Blast attacks set enemies on fire.",noone], ["Tough Times",0,-1,noone,0,noone,"I'm coming home soon. Stay strong.",noone], ["Kjaro's Band",1,0,9,0,noone,"Strongs blast enemies with runic fire, lighting them ablaze.",noone], ["Runald's Band",1,1,noone,0,noone,"Strongs blast enemies with runic ice, freezing to the bone.",noone], ["Ukulele",1,1,4,0,noone,"..And his music was electric.",noone], ["Hopoo Feather",1,3,noone,0,noone,"Gain an extra jump.",noone], ["Guardian Heart",1,6,noone,0,noone,"Gain a shield that recharges outside of danger.",noone], ["Locked Jewel",1,6,3,0,noone,"Gain a burst of shield and speed after opening chests.",noone], ["Harvester's Scythe",1,2,4,0,noone,"Critical Strikes heal you by a portion of the damage they deal.",noone], ["Ignition Tank",1,4,9,0,noone,"Critical Strikes deal extra knockback to enemies on fire.",noone], ["Predatory Instincts",1,4,5,0,noone,"Critical Strikes increase attack speed.",noone], ["Stun Grenade",1,7,noone,0,noone,"Blast attacks stun enemies briefly.",noone], ["AtG Missile Mk. 1",1,0,noone,0,noone,"Strongs fire a missile.",noone], ["Rusty Jetpack",1,3,noone,0,noone,"Increase jump height and reduce gravity.",noone], ["Legendary Spark",1,-1,noone,0,noone,"Smite them. Smite them all.",noone], ["Ancient Scepter",2,0,noone,0,noone,"Upgrade your Neutral Special with Attack Speed.",noone], ["Fireman's Boots",2,0,noone,0,noone,"Fight fire with fire...",noone], ["AtG Missile Mk. 2",2,0,noone,0,noone,"Hooah.",noone], ["The Ol' Lopper",2,1,noone,0,35,"Enemies above 120% take massive knockback.",noone], ["Shattering Justice",2,1,noone,0,34,"Enemies above 100% have their armor Shattered.",noone], ["Classified Access Codes",2,0,noone,0,noone,"Hold Down Special for repositioning, then press Attack for extreme reinforcements.",noone], ["Photon Jetpack",2,3,noone,0,38,"No hands!",noone], ["H3AD-5T V2",2,3,noone,0,37,"Jump much higher, and fall much faster.",noone], ["Hardlight Afterburner",2,3,noone,0,noone,"Upgrades your side special.",noone], ["Laser Scope",2,4,noone,0,41,"Critical hits deal massive damage and knockback.",noone], ["Laser Turbine",2,5,noone,0,40,"Gunshots charge up a huge Neutral Special.",noone], ["Aegis",2,6,2,0,noone,"All healing also gives you half of its value as barrier.",noone], ["Brilliant Behemoth",2,7,noone,0,noone,"Your gunshots explode!",noone], ["Dio's Best Friend",2,2,noone,0,noone,"Cheat death.",noone], ["Withered Best Friend",-2,2,noone,0,noone,"A spent item with no remaining power.",noone], ["57 Leaf Clover",2,-1,noone,0,noone,"Luck is on your side.",noone], ["Monster Tooth",0,2,noone,0,noone,"Enemies that get launched hard enough spawn healing orbs.",noone], ["Wax Quail",1,3,noone,0,noone,"Jumping while dashing boosts you forward.",noone], ["Filial Imprinting",1,5,3,0,noone,"Hatch a strange creature who drops buffs every 15 seconds.",noone], ["Energy Cell",1,5,noone,0,noone,"Gain attack speed the more you're damaged.",noone], ["Shipping Request Form",1,8,noone,0,noone,"Increases the odds of calling down a Tri-Shop.",noone], ["Fire Shield",0,0,9,0,noone,"Set opponents on fire when dodging or parrying attacks.",noone], ["Trophy Hunter's Tricorn",2,8,0,0,noone,"Claim a trophy from the opponent with FStrong. Only has one shot.",noone], ["Trophy Hunter's Relic",-2,8,0,0,noone,"Looks kinda cool, but that's about it. ",noone], ["Fireworks",0,0,noone,0,noone,"Launch fireworks when opening chests.",noone], ["Snake Eyes",1,4,noone,0,noone,"Consecutive critical hits become stronger.",noone], ["Ceremonial Dagger",2,4,noone,0,noone,"Critical hits summon daggers to chase down opponents.",noone], ["Growth Nectar",2,8,noone,0,noone,"Common items grow more powerful.",noone], ["Shaped Glass",-3,0,noone,0,noone,"Double your damage... but Shatter your weight.",noone], ["ICBM",-3,0,noone,0,noone,"Double all homing missiles. They now apply Blast effects.",noone], ["Plasma Shrimp",-3,0,noone,0,noone,"Hitting opponents with non-Strongs fires missiles.",noone], ["Benthic Bloom",-3,8,noone,0,noone,"Your items mutate and evolve as your opponents die.",noone], ["Longstanding Solitude",-3,8,noone,0,noone,"Gain 8 random items. You have no backup.",noone], ]

// Ordering for in-game utilities (debug displays and practice mode)
item_id_ordering = [
    0,       // 0
    1,
    2,
    3,
    4,
    5,          // 5
    6,
    7,
    8,
    9,
    47,        // 10
    10,
    11,
    12,
    13,
    14,         // 15
    15,
    16,
    52,
    55,
    17,        // 20
    noone, // category delimiter
    18,      // 22
    19,       
    20,
    29,      // 25
    48,
    21,
    22,
    23,
    49,        // 30
    56,
    24,
    25,
    26,
    51,      // 35
    50,
    27,
    28,
    30,
    noone,              // 40
    31,       // 41
    53,
    32,
    33,
    34,        // 45
    35,
    36,
    37,
    38,
    39,   // 50
    57,
    40,
    41,
    42,
    43,      // 55
    58,
    44,          // 57
];

// Enable secret if Rune O is taken
if (has_rune("O")) array_push(item_id_ordering, 46);

// Disable chest-proc items if Longstanding Solitude is taken
if (has_rune("K")) {
    item_grid[@ 55][@ 1] = -2;
    item_grid[@ 23][@ 1] = -2;
    item_grid[@ 51][@ 1] = -2;
    item_grid[@ 36][@ 1] = -2;
}

ordering_start_indices = [0, 22, 41];

// If items need to be manually removed from the pool for any reason (e.g. during an emergency patch), do so here.
// Format: item_grid[@ ITEM_NAME_HERE][@ IG_RARITY] = RTY_VOID;


// Inventory store
inventory_list = [];

// For use by item init (user_event0)
new_item_id = noone;

// For use by user_event1
ue1_command = 0;
item_silenced = false; // Flag that silences the next item-get pop-up. Reset on every UE1 call


// Randomizer properties
legendary_pool_size = array_create(3, 0); // to be initialized
rares_remaining = 3; // manual limit, assumes that at least 3 rares exist
uncommon_limit = 3;
uncommon_pool_size = 0; // to be initialized
item_seed = player * 5; // max 200, this should hold within the rivals engine
common_count = 0; // Not actually used by the randomizer, but still handled in the same places.
uncommon_count = 0; // Ditto.

grant_rarity = noone; // for user_event(1). This default value throws an error as a sanity check


// New randomizer
// Initialize arrays
p_item_ids = array_create(3);
p_item_weights = array_create(3);
p_item_values = array_create(3); // weight per quantity remaining
p_item_remaining = array_create(3);
p_legendary_ids = array_create(3);
p_legendary_available = array_create(3); // mostly identical to legendary_remaining; gets set to 0 in an incompat case
p_legendary_remaining = array_create(3);

for (var rty = 0; rty < 3; rty++) {
    p_item_ids[rty] = [];
    p_item_weights[rty] = [];
    p_item_values[rty] = [];
    p_item_remaining[rty] = [];
    p_legendary_ids[rty] = [];
    p_legendary_available[rty] = [];
    p_legendary_remaining[rty] = [];
}

// Populate arrays
var num_items = array_length(item_grid);
var type_weights = [6,6,4,6,6,6,4,5,4,6];
for (var i = 0; i < num_items; i++) {
    var rty = item_grid[i][1];
    var itp = item_grid[i][2];
    
    if (rty < 0 || 2 < rty) continue;
    var quantity = (rty == 1) ? uncommon_limit : 1;
    
    if (itp == -1) {
        item_grid[@ i][@ 7] = array_length(p_legendary_ids[rty]);
        array_push(p_legendary_ids[rty], i);
        array_push(p_legendary_available[rty], quantity);
        array_push(p_legendary_remaining[rty], quantity);
        legendary_pool_size[rty] += quantity;
    }
    else {
        item_grid[@ i][@ 7] = array_length(p_item_ids[rty]);
        array_push(p_item_ids[rty], i);
        array_push(p_item_weights[rty], quantity*type_weights[itp]);
        array_push(p_item_values[rty], type_weights[itp]);
        array_push(p_item_remaining[rty], quantity);
        if (rty == 1) uncommon_pool_size += quantity;
    }
}

// Item weights are altered by 1-cost abyss runes.
if (get_match_setting(SET_RUNES)) {
    
    for (var rty = 0; rty <= 2; rty++) {
        var arr_len = array_length(p_item_ids[rty]);
        for (var i = 0; i < arr_len; i++) {
            var iid = p_item_ids[rty][i];
            var type1 = item_grid[iid][2];
            var type2 = item_grid[iid][3];
            if ( (has_rune("A") && (type1 == 0 || type2 == 0 || type1 == 1 || type2 == 1))
              || (has_rune("B") && (type1 == 3 || type2 == 3))
              || (has_rune("C") && (type1 == 2 || type2 == 2 || type1 == 6 || type2 == 6))
              || (has_rune("D") && (type1 == 4 || type2 == 4))
              || (has_rune("E") && (type1 == 5 || type2 == 5))
              || (has_rune("F") && (type1 == 7 || type2 == 7))
            ) {
                var quantity = p_item_remaining[rty][i];
                p_item_values[@ rty][@ i] = 15;
                p_item_weights[@ rty][@ i] = quantity * 15;
            }
        }
    }
    
}


// Item variables
// Keyword trackers
critical_active = 0;     // enables checks for crit items
attack_speed = 1;        // inits to 1, goes up with attack speed items
move_speed = 0;          // inits to 0, goes up with items like Paul's Goat Hoof
dodge_duration_add = 0;  // inits to 0, adds n frames to shield actions

// Attack overwrites (see set_attack.gml)
ntaunt_index = AT_TAUNT; // taunts altered by Ukelele/Warbanner
utaunt_index = AT_TAUNT;
dtaunt_index = get_match_setting(SET_PRACTICE) ? AT_EXTRA_3 : AT_TAUNT;
ustrong_index = AT_USTRONG; // altered by Ukelele
fstrong_index = AT_FSTRONG; // altered by Tricorn
//custom intro
AT_INTRO = 2; //the attack index the intro uses, 2 doesn't overwrite any other attack
intro_pod = hit_fx_create(sprite_get("intro_pod"), 50)
pod_idle = hit_fx_create(sprite_get("pod_idle"), 160)

// Multipliers and fractional damage (see also: other_init.gml)
u_mult_damage_buffer = 0;

// Hitbox data storage (for use by ATG and Behemoth)
hbox_stored_damage = 0; // probably won't see use in practice
hbox_stored_bkb = 0;
hbox_stored_kbg = 0;
hbox_stored_angle = 0; // this one should actually grab the opponent's launch angle
hbox_stored_bhp = 0; // hitpause
hbox_stored_hps = 0;

// Status (see also: other_init.gml; user_event2.gml for indices)
commando_status_state = array_create(7);
commando_status_counter = array_create(7);
commando_status_owner = array_create(7, noone); // for the sake of the ditto
commando_stored_x = 0;

// Dodge duration overrides
dodge_duration_timer = 0;

// Percent tracking / barriers
old_damage = 0;
brooch_barrier = 0;      // Topaz Brooch
heart_barrier = 0;       // Guardian Heart
heart_barrier_endangered = 1;
heart_barrier_timer = 0;
heart_barrier_max = 0;   // see user_event0
jewel_barrier = 0;       // Locked Jewel
jewel_barrier_timer = 0;
aegis_barrier = 0;       // Aegis
aegis_ratio = 0.5;
aegis_odds_applied = false;
hud_barrier_fade_alpha = 0;

// Kill tracking
recently_hit = array_create(20, noone)
num_recently_hit = 0;

// Misc item-specific vars
warbanner_obj = noone;
commando_warbanner_owner = noone; // mirrored in other_init
commando_warbanner_strength = 0;
commando_warbanner_updated = 0;

stompers_active = 0;
stompers_timer = 999; // for anims
stompers_hbox_air = noone;
stompers_hbox_ground = noone;

bungus_active = 0;
bungus_timer = 0;
bungus_vis_timer = 999;
bungus_vis_x = x;
bungus_vis_y = y;

bleeddagger_outline_col = [100, 0, 0];

instincts_timer = 0; // Predatory Instincts

do_ignite_hbox = 0; // Ignition Tank
ignition_odds_applied = 0; // Flag for buffing burn item odds

atg_freq = 0;

spark_buff_timer = 0;
spark_do_update = false;

h3ad_lockout_timer = 0; // H3AD-5T, used for fast falling
h3ad_was_fast_falling = false;
h3ad_jump_released = false;
h3ad_jump_timer = 0;

fireboots_distance = 0;
fireboots_prev_x = x;
fireboots_lockout = 0;

do_behemoth_hbox = 0;
behemoth_hfx = noone;
behemoth_hfx_hitstop = 0;
behemoth_odds_applied = 0; // Flag for buffing explosive item odds

pjetpack_fuel = 0;
pjetpack_fuel_max = 75;
pjetpack_available = 0;
pjetpack_hud_alpha = 0;
pjetpack_vis_fuel = 0;
pjetpack_sound = noone;

turbine_stored_charge = 0;
do_turbine_recolor = false;
turbine_sfx_instance = noone;

dios_revive_timer = -999;
dios_stored_damage = 0;

clover_active = false;
clover_do_test = false;
clover_timer = 0;
clover_caught = [];

tooth_awaiting_spawn = array_create(20, -1);

quail_do_boost = 0;
quail_burst_obj = noone;

cell_active_stacks = 0;

filial_num_spawned = 0;
filial_aspeed_timer = 0;
filial_speed_timer = 0;
filial_do_update = false;
filial_aspeed_outline = [170, 0, 0];
filial_speed_outline = [50, 40, 160];
filial_double_outline = [120, 31, 150];

fshield_damage = 0;
fshield_triggered = 0;

do_tricorn_remove = 0;

fireworks_freq = 0;

snakeeyes_active = 0;

nectar_mult = 1;
self_prev_outline = [0, 0, 0];

shaped_glass_active = 0;
icbm_active = 0;

// Training mode utility
tmu_state = -1;
tmu_exists = get_match_setting(SET_PRACTICE);
init_prompt_active = tmu_exists && !get_match_setting(SET_RUNES) && !limitless_mode;
init_prompt_timer = 0;
if (tmu_exists) {
    
    tmu_timer = 0;
    
    tmu_row = 0;
    tmu_column = 0;
    tmu_selected = 0;
    tmu_display_row = 0;
    
    tmu_item_panel = 0;
    tmu_item_panel_max = 2;
    tmu_item_panel_contents = noone; // filled on load
    tmu_legendary_unlock_counter = 0;
    
    tmu_item_id = 0;
    tmu_signal_add_item = false;
    tmu_signal_remove_item = false;
    
    tmu_y_offscreen = -200;
    tmu_y_offset = tmu_y_offscreen;
    
    tmu_infowindow = noone;
    tmu_infowindow_active = false;
    
    orig_depth = depth;
    
}


//          Sound Effects (gonna use init this time, wanna see if it makes it easier)                //
s_dag_swing = sound_get("cm_dagger_swing");
s_cbar = sound_get("cm_crowbar");
s_dios = sound_get("cm_item_dios");
s_shotty = sound_get("cm_shotgun_blast");
s_reload = sound_get("cm_shotgun_load");

s_gunf = sound_get("cm_shootfast"); //fast, multihit
s_gunl = sound_get("cm_shootlight_1"); //light
s_gunm = sound_get("cm_shootlight2"); //med
s_gunh = sound_get("cm_shootmedwav"); //heavy //idk why it got named that lol
s_tricorn = sound_get("c_tricorn_BOOM");
s_tap = sound_get("cm_dspec_taptaptap");

s_knifel = sound_get("sfx_knifehit_s");
s_knifem = sound_get("sfx_knifehit_m");
s_crit = sound_get("cm_crit");
s_critheal = sound_get("cm_crit_heal");

s_roll = sound_get("cm_roll");
s_coin = sound_get("cm_shine");
s_slide = sound_get("cm_slide");

s_cd = sound_get("cm_cdend");
s_cfall = sound_get("cm_chestfall");
s_cland = sound_get("cm_chestland");
s_itemw = sound_get("cm_item_white");
s_itemg = sound_get("cm_item_green");
s_itemr = sound_get("cm_item_red");

s_mortem = sound_get("death");
s_jailed = sound_get("sentence");
s_err = sound_get("cm_err");
s_bomb1 = sound_get("explosion");
s_bomb2 = sound_get("explosionmed");
s_bomb3 = sound_get("explosionhuge");

s_toll = sound_get("toll2")
s_lops = sound_get("lopsw")
s_loph = sound_get("loph")
//


// 

//                      TEMPLATE ATTACK/WINDOW INDEXES                        //

/*
- free attack data indexes technically start at 24 up to 99, went with 30 to
make it look cleaner
*/


// might add ai indexes here later so you can tell the cpu when to use certain
// moves

/*
- free window data indexes technically start at 61 up to 99, went with 70 to
make it look cleaner
*/

// adds looping frames to an attack's charge window, while charging
AG_WINDOW_HAS_CHARGE_LOOP       = 70;   // if the window has a charge anim loop
AG_WINDOW_CHARGE_FRAME_START    = 71;   // anim frame of the start of the loop
AG_WINDOW_CHARGE_FRAMES         = 72;   // total number of frames
AG_WINDOW_CHARGE_LOOP_SPEED     = 73;   // speed of the loop animation

AG_WINDOW_GRAB_OPPONENT         = 74;   // if the window is a grab window (1),
                                        // hold opponent, otherwise let them go
AG_WINDOW_GRAB_POS_X            = 75;   // x position to hold grabbed opponent
AG_WINDOW_GRAB_POS_Y            = 76;   // y position to hold grabbed opponent

AG_WINDOW_CAN_WALLJUMP          = 77;   // if the player can walljump out of the
                                        // window



//                               HITBOX INDEXES                               //

/*
- free hitbox data indexes technically start at 54 up to 99, went with 60 to
make it look cleaner
*/

HG_HAS_GRAB                     = 60;   // makes the hitbox into a command grab
HG_BREAKS_GRAB                  = 61;   // if the grabbed player is hit, they're
                                        // no longer grabbed
HG_GRAB_WINDOW_GOTO             = 62;   // window the grab goes into
                                        // -1 if it continues in the same window
HG_GRAB_WINDOWS_NUM             = 63;   // up to what window the grab goes to
                                        // -1 if it doesnt change window num
HG_HAS_LERP                     = 64;   // if the hitbox has lerp properties
HG_LERP_PERCENT                 = 65;   // how much pull the lerp has
                                        // from 0.0~1.0
HG_LERP_POS_X                   = 66;   // x position that the lerp pulls to
HG_LERP_POS_Y                   = 67;   // y position that the lerp pulls to

HG_PROJECTILE_MULTIHIT          = 70;   // if a projectile multihits
HG_PROJECTILE_MULTIHIT_RATE     = 71;   // rate at which a projectile multihits
                                        // ex.: if 10, hits every 10 frames
                                        // (individual per opponent)
HG_PROJECTILE_MAX_HITS          = 72;   // max number of times the projectile
                                        // can hit before being destroyed
                                        // (individual per opponent)
                                        // put -1 for no limit

// if you're making custom indexes for your character, I recommend starting at
// 80 or 90, as slots up to 79 may be filled in future updates

/*
if you're using multihit properties, be sure to check if the projectile goes 
through enemies, otherwise it might just despawn on hit
*/


//=-(                    ~~//** TEMPLATE VARIABLES **//~~                    )-=//


//                               PRE-SET STUFF                                //

// animation stuff
idle_air_loops                  = false;// whether idle air has a looping 
                                        // animation or not
idle_air_looping                = false;// checks if the loop is happening
jump_frames                     = 5;    // how many animation frames the jump 
                                        // has, the loop starts there
idle_air_loop_speed             = 0.25;  // animation speed of the loop
idle_air_platfalls              = false; // if the character has an animation for
                                        // dropping from platforms
idle_air_platfalling            = false;// checks if platfall is happening
idle_air_platfall_speed         = 0.25; // platfall animation speed
idle_air_platfall_frames        = 7;    // how many frames the platfall anim has
                                        // when finished goes to air idle
dash_moonwalks                  = false; // if the character has a moonwalk anim

//=-(                     ~~//** CUSTOM EFFECTS **//~~                     )-=//


//                           --visual effects--                               //
fx_crit                     = hit_fx_create(sprite_get("vfx_crit"), 24);
fx_crit_lens                = hit_fx_create(sprite_get("vfx_crit_lens"), 16);
fx_crit_blood               = hit_fx_create(sprite_get("vfx_crit_blood"), 24);
fx_crit_shock               = hit_fx_create(sprite_get("vfx_crit_shock"), 24);
fx_crit_shock_long          = hit_fx_create(sprite_get("vfx_crit_shock"), 30);

fx_blast                    = hit_fx_create(sprite_get("vfx_blast"), 17);
fx_explode_small            = hit_fx_create(sprite_get("vfx_explode_small"), 12);
vfx_explodey_big             = hit_fx_create(sprite_get("vfx_explosion_large"), 26);
vfx_explosion_med           = hit_fx_create(sprite_get("vfx_explosion_medium"), 18);
//

fx_item_heal                = hit_fx_create(sprite_get("vfx_item_u_heal"), 45);
fx_item_res                 = hit_fx_create(sprite_get("vfx_item_res"), 160);
fx_bleed                    = [hit_fx_create(sprite_get("vfx_bleed"), 15), hit_fx_create(sprite_get("vfx_bleed_2"), 15)];
fx_sucker_buff_red          = hit_fx_create(sprite_get("vfx_sucker_buff_red"), 16);
fx_sucker_buff_blue         = hit_fx_create(sprite_get("vfx_sucker_buff_blue"), 16);
fx_lopper_active            = hit_fx_create(sprite_get("vfx_item_lopper_active"), 28);
fx_tooth_despawn            = hit_fx_create(sprite_get("vfx_item_tooth_despawn"), 8);
fx_jetpack_steam            = hit_fx_create(asset_get("mech_dstrong_steam"), 10);
fx_bolt                     = hit_fx_create(sprite_get("vfx_bolt"), 9);
fx_bolt_ground              = hit_fx_create(sprite_get("vfx_bolt_ground"), 9);
fx_bolt_large               = hit_fx_create(sprite_get("vfx_bolt_large"), 12);
fx_bolt_large_ground        = hit_fx_create(sprite_get("vfx_bolt_large_ground"), 12);
fx_djump                    = hit_fx_create(sprite_get("hopoo"), 18)

vfx_zap_1 = hit_fx_create(sprite_get("vfx_zap_small"), 18);
vfx_zap_2 = hit_fx_create(sprite_get("vfx_zap_large"), 28);

fx_small_chest_land         = hit_fx_create(sprite_get("dspec_smallchest_landvfx"), 16);
fx_large_chest_land         = hit_fx_create(sprite_get("dspec_largechest_landvfx"), 16);


spr_sticky                  = sprite_get("item_sticky");
spr_lopper_start            = sprite_get("vfx_item_lopper_start");


//=-(                      ~~//** BASE STATS **//~~                        )-=//

//                              --hurtboxes--                                 //
hurtbox_spr                     = sprite_get("hurtbox");
crouchbox_spr                   = sprite_get("hurtbox_crouch");
air_hurtbox_spr                 = -1;
hitstun_hurtbox_spr             = -1;


//                  --animation speeds + %-arrow offset--                     //
char_height                     = 60;
idle_anim_speed                 = .1;
crouch_anim_speed               = 0.03;
walk_anim_speed                 = 0.125;
dash_anim_speed                 = 0.2;
pratfall_anim_speed             = 0.25;
walk_anim_speed_base            = walk_anim_speed;
dash_anim_speed_base            = dash_anim_speed;

//                      --grounded movement stats--                           //
walk_speed                      = 2.4;
walk_accel                      = 0.2;
walk_turn_time                  = 6;
initial_dash_time               = 12;
initial_dash_speed              = 6;
dash_speed                      = 5.5;
dash_turn_time                  = 10;
dash_turn_accel                 = 1.5;
dash_stop_time                  = 8;
dash_stop_percent               = 0.35;
ground_friction                 = 0.7;
moonwalk_accel                  = 1.4;
walk_speed_base                 = walk_speed;
walk_accel_base                 = walk_accel;
initial_dash_speed_base         = initial_dash_speed;
dash_speed_base                 = dash_speed;
moonwalk_accel_base             = moonwalk_accel;


//                       --aerial movement stats--                            //
jump_start_time                 = 5; // minus one
jump_speed                      = 11;
short_hop_speed                 = 6;
djump_speed                     = 10;
jump_speed_base                 = jump_speed;
short_hop_speed_base            = short_hop_speed;
djump_speed_base                = djump_speed;

leave_ground_max                = 7;
max_jump_hsp                    = 6;
air_max_speed                   = 5;
jump_change                     = 3;
max_jump_hsp_base               = max_jump_hsp;
air_max_speed_base              = air_max_speed;

air_accel                       = 0.3;
prat_fall_accel                 = 0.85;
air_friction                    = 0.04;

max_djumps                      = 1;
double_jump_time                = 28;
max_djumps_base                 = max_djumps;

walljump_hsp                    = 7;
walljump_vsp                    = 8;
walljump_time                   = 6;
wall_frames                     = 1;
walljump_vsp_base               = walljump_vsp;

max_fall                        = 10;
fast_fall                       = 14;
gravity_speed                   = 0.5;
hitstun_grav                    = 0.5;
max_fall_base                   = max_fall;
fast_fall_base                  = fast_fall;
gravity_speed_base              = gravity_speed;

//                    --character knockback adjustment--                      //
/* 
- higher num = 'lighter' character; 
- lower num = 'heavier' character 
*/
knockback_adj                   = 1.0;
knockback_adj_base              = knockback_adj;

//                           --landing stats--                                //
land_time                       = 4; 
prat_land_time                  = 10;
wave_land_time                  = 8;
wave_land_adj                   = 1.35;
wave_friction                   = 0.12;

//                          --animation frames--                              //
crouch_startup_frames           = 1;
crouch_active_frames            = 2;
crouch_recovery_frames          = 1;

dodge_startup_frames            = 1;
dodge_active_frames             = 2;
dodge_recovery_frames           = 2;

tech_active_frames              = 1;
tech_recovery_frames            = 1;

techroll_startup_frames         = 2;
techroll_active_frames          = 2;
techroll_recovery_frames        = 2;


air_dodge_startup_frames        = 1;
air_dodge_active_frames         = 1;
air_dodge_recovery_frames       = 2;

roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 2;

roll_back_startup_frames        = 1;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 2;

//                        --defensive action speed--                          //
techroll_speed                  = 10;

air_dodge_speed                 = 7.5;

roll_forward_max                = 9; 
roll_backward_max               = 9;

//                      --base movement sound effects--                       //
land_sound                      = asset_get("sfx_land_med");
land_sound_base                 = land_sound;
land_sound_stompers             = asset_get("sfx_bounce");
landing_lag_sound               = asset_get("sfx_land");
waveland_sound                  = asset_get("sfx_waveland_zet");
jump_sound                      = asset_get("sfx_jumpground");
djump_sound                     = asset_get("sfx_jumpair");
air_dodge_sound                 = asset_get("sfx_quick_dodge");

//                       --ranno bubble visual offset--                       //
bubble_x                        = 0;
bubble_y                        = 8;

//win stuff
set_victory_portrait(sprite_get("portrait"));

//last-chance abyss init (perform item grants here!)
if (get_match_setting(SET_RUNES)) {
    if (has_rune("G")) {
        new_item_id = 60;
        ue1_command = 1;
        item_silenced = true;
        user_event(1);
    }
    if (has_rune("H")) {
        new_item_id = 59;
        ue1_command = 1;
        item_silenced = true;
        user_event(1);
    }
    if (has_rune("I")) {
        new_item_id = 62;
        ue1_command = 1;
        item_silenced = true;
        user_event(1);
    }
    if (has_rune("J")) {
        new_item_id = 61;
        ue1_command = 1;
        item_silenced = true;
        user_event(1);
    }
    if (has_rune("K")) {
        new_item_id = 63;
        ue1_command = 1;
        item_silenced = true;
        user_event(1);
        var manager = instance_create(x, y-10, "obj_article3");
        manager.state = 90;
    }
    // RUNE_FREE_RARE moved to a post-init operation at the top of update.gml
    if (has_rune("M")) {
        for (var i = 0; i < 3; i++) {
            new_item_id = 51;
            ue1_command = 1;
            item_silenced = true;
            user_event(1);
        }
    }
    if (has_rune("N")) {
        item_grid[@ 5][@ 4] = 20;
        array_push(inventory_list, 5);
        new_item_id = 58;
        ue1_command = 1;
        item_silenced = true;
        user_event(1);
    }
}

init_complete = true;