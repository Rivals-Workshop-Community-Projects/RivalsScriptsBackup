enum UCH_STATE
{
    SELECTING = 0,
    BUILDING = 1,
    FIGHTING = 2,
    RESULTS = 3
}

current_stage_state = UCH_STATE.SELECTING;
prev_stage_state = -1;
initialized = false;
player_count = 0;
non_cpu_player_count = 0;
current_state_timer = 0;
state_transition_timer = 60;
ready_players = 0;
fight_state_winner = 0;
party_box = noone;
party_box_shake = 1;
fight_timer = -1;
max_state_time = -1;
last_stock_transition_time = 0;
eligible_for_extra_box = false;
has_extra_box = true;
can_set_dead_state = true;
gamemode = 0;
if (get_match_setting(SET_STOCKS) = 0)
    gamemode = 1;
if (gamemode = 1 && get_match_setting(SET_TIMER) <= 0)
    gamemode = 2;
if (is_aether_stage())
    gamemode += 10;
    
if (get_match_setting(SET_PRACTICE))
    gamemode += 100;

item_sprites =
[
    "empty_sprite",
    "item_dynamite",
    "item_board",
    "item_ball_launcher",
    "item_black_hole",
    "item_beehive",
    "item_flamethrower",
    "item_metal_box",
    "item_girder",
    "item_bumper",
    "item_flower",
    "item_platform",
    "item_moving_platform_1",
    "item_bomb",
    "item_crossbow",
    "item_spike_ball",
    "item_stairs",
    "item_hockey_machine",
    "item_spring",
    "item_sawblade",
    "item_cannon",
    "item_wrecking_ball",
    "item_floor_saw",
    "item_coin",
    "item_punching_glove"
];
sfx = 
[
    "sfx_sand_yell",
    "sfx_mol_norm_light",
    "sfx_syl_ustrong_part3",
    "sfx_ell_dspecial_hit",
    "sfx_boss_vortex_end",
    "sfx_syl_ustrong_part3",
    "sfx_zetter_fireball_fire",
    "sfx_shovel_hit_med2",
    "sfx_shovel_hit_med2",
    "sfx_shovel_hit_med2",
    "sfx_plant_ready",
    "sfx_syl_ustrong_part3",
    "sfx_shovel_hit_med2",
    "sfx_mol_norm_light",
    "sfx_rag_plant_shoot",
    "sfx_syl_ustrong_part3",
    "sfx_syl_ustrong_part3",
    "sfx_shovel_hit_med2",
    "sfx_springswitch",
    "sfx_buzzsaw_throw",
    "sfx_ell_utilt_cannon",
    "sfx_blow_heavy2",
    "sfx_buzzsaw_throw",
    "sfx_may_arc_cointoss",
    "sfx_blow_medium3"
];
