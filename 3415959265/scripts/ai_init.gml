is_ai = true;
// ai_draw = ds_list_create();

stage_xdisp = 0;
xdist = 0;
delay_time = 0;
offstage = 0;
near_stage_wall = 0;
near_stage_ledge = 0;
hurtboxWidth = 0;
ai_target_offstage = 0;
tgt_teching = 0;
tgt_rolling = 0;
time_recovering = 0;
times_tried_to_parry = 0;
tried_to_parry = false;
time_since_hitstun = 0;
is_able_to_move_h = false;

special_counter = 7;
attack_counter = 7;
taunt_counter = 7;
shield_counter = 7;

solid_asset = asset_get("par_block");
platform_asset = asset_get("par_jumpthrough");

short_hop_height = noone;
short_hop_vert_time = noone;
jump_height = noone;
jump_vert_time = noone;
djump_height = noone;
djump_vert_time = noone;
jump_data_obtained = false;

ct = 0;

ai_debug_pin = false;
ai_debug_pin_x = 0;
ai_debug_pin_y = 0;
ai_debug_pin_timeout = 20;
ai_debug_pin_damage = 50;
ai_debug_pin_timer = 0;


/*USER INPUT REQUIRED HERE!

//ATTACK, OVERWRITE[X,Y,WIDTH,HEIGHT], [HITBOXES INDEXES]
Only enter something in [X,Y, WIDTH, HEIGHT] if your character moves during the attack.
Or if your character is shooting a projectile
This will extend the AI's threat range for the move.
Extend X and WIDTH if the move goes horizontally, Y and HEIGHT if the move goes vertically

[HITBOXES INDEXES], should be the number of hitboxes in a move.

For instance if there is one hitbox, write [1], if there are two write [1, 2] etc

*/
//ATTACK, OVERWRITE[X,Y,WIDTH,HEIGHT], [HITBOXES INDEXES]
ai_attacks = [
    [AT_DATTACK,               [20, -32, 220, 64], [1, 2]],         
    [AT_UAIR,                  [], [1, 2, 3, 4]],   
    [AT_FAIR,                  [], [1, 2, 3, 4]],  
    [AT_NAIR,                  [], [1, 2]],          
    [AT_DAIR,                  [], [1, 2, 3]],        
    [AT_BAIR,                  [], [1, 2]],       
    [AT_NSPECIAL,              [], [1]],             
    [AT_NSPECIAL_AIR,          [], [1]],             
    [AT_UTILT,                 [], [1, 2]],        
    [AT_FTILT,                 [], [1]],            
    [AT_DTILT,                 [], [1]],              
    [AT_JAB,                   [], [1, 2, 3, 4]],                   
    [AT_FSTRONG,               [], [1, 2, 3, 4]],   
    [AT_DSTRONG,               [], [1, 2, 3, 4]],             
    [AT_USTRONG,               [], [1, 2, 3, 4, 5, 6]], 
    [AT_FSPECIAL,              [20, -32, 170, 64], [1, 2]],         
    [AT_FSPECIAL_AIR,          [], [1, 2, 3, 4]],                   
    [AT_DSPECIAL,              [], [1, 2, 3, 4]],                   
    [AT_USPECIAL,              [0, -80, 60, 120], [1, 2, 3, 4]],    
];

attacking = false;
ai_attack_data = [];
attack_data_obtained = false;
ourEstPos = [];
tgtEstPos = [];
ai_pos_calc_steps = 4;

stagex = get_stage_data(SD_X_POS);
stage_width = get_stage_data(SD_WIDTH);
stagey = get_stage_data(SD_Y_POS);

bblastzone = get_stage_data(SD_BOTTOM_BLASTZONE_Y);
lblastzone = get_stage_data(SD_LEFT_BLASTZONE_X);
rblastzone = get_stage_data(SD_RIGHT_BLASTZONE_X);
tblastzone = get_stage_data(SD_TOP_BLASTZONE_Y);

stage_center = stagex + stage_width/2
stage_left = stagex
stage_right = stagex + stage_width
closest_wall_y = stagey;
recover_required = false;

chosenAttack = noone;

ai_threat_dist = [0,0,0,0,0]
ai_threat_sample = [0,0,0,0,0] // sample amount
ai_threat_range_proj_arr = [0,0,0,0,0]

saved_mf_angle = 0;

strategy = 0;
strategy_timer = 0;
// close_down_attacks[0] = AT_DAIR;

// far_side_attacks = [AT_FSPECIAL];

// mid_up_attacks = [AT_FSPECIAL];

// mid_side_attacks = [AT_FSPECIAL];
// mid_side_attacks[0] = AT_DATTACK;
// mid_side_attacks[0] = AT_FSPECIAL;
// mid_side_attacks[3] = AT_FTILT;

// close_up_attacks[0] = AT_USTRONG;
// close_up_attacks[1] = AT_UAIR;
// close_up_attacks[2] = AT_UTILT;

// close_down_attacks[0] = AT_DSPECIAL;
// close_down_attacks[1] = AT_DAIR;
// close_down_attacks[2] = AT_DTILT;

// close_side_attacks[0] = AT_FSPECIAL;
// close_side_attacks[0] = AT_DATTACK;
// close_side_attacks[2] = AT_FTILT;
// close_side_attacks[3] = AT_NSPECIAL;

// neutral_attacks[0] = AT_FSPECIAL;
// neutral_attacks[1] = AT_NAIR;
// neutral_attacks = [AT_DSPECIAL, AT_DSTRONG];