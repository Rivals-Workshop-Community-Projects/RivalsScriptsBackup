//css_init
alt_cur = 0;
alt_prev = 0;
css_anim_time = 0;

icon_x_pos = 0; //icon placement for the event/unlock based alts from rivals
icon_y_pos = 0;
preview_x = 0; //preview char
preview_y = 0;

b_day = 25;
b_month = 10;


//ALT NAMES
//seasonal alt names
season_name = [
    "I Like Chocolate",
    "Beach Episode",
    "BE AFRAID NOT",
    "Festive Angel"
];
bday_name = "Reminiscence";

alt_name = []; //refresh name array in case other characters use the same system
//alt names
alt_name = [
    "Elemental Guardian",
    "Inverted",
    "Cupids' Resolve",
    "Spark of Lightning",
    "Scientific Prodigy",
    "Umbra Princess",
    "Chief Demon Hunter",
    "The Previous Guardian",
    "Ultimate Lifeform",
    "Demon Strikedown",
    "Nuclear Raven",
    "Lofty",
    "11th Fatui Harbinger",
    "Endless Abyss",
    "Early Access",
    "Demake",
    current_day = b_day && current_month == b_month ? bday_name : season_name[get_match_setting(SET_SEASON)-1],
    "Infamous",
    "Ranked Gold",
    "Genesis",
    "Son of the Omega",
    "Crimson Eclipse",
    "Stellar Traveller",
    "Sun God",
    "Fiery Racing Spirit",
    "Ballin'",
    "Broken Prism",
    "Theía Evlogía",
    "Reluctant Team Player"
];
alt_total = array_length(alt_name);

//ANIMATION VARS
sprite_change_offset("idle", 16, 39);
sprite_change_offset("idle_line", 16, 39);

preview_idle = sprite_get("idle");
preview_line = sprite_get("idle_line");
preview_scale = 2;
preview_anim_speed = 0.2; //the bigger the number, the slower the animation
preview_line_color = 0;



//CSS skill select
skill_script_type = 0;
user_event(2);

skill_hover_time_max = 20;
skill_hover_time = skill_hover_time_max;
skill_hover = false;

skill_button_x = x + 150;
skill_button_y = y + 30;

skill_button_pos = [
    skill_button_x,
    skill_button_y,
    skill_button_x + sprite_get_width(sprite_get("hud_skillselect_button")),
    skill_button_y + sprite_get_height(sprite_get("hud_skillselect_button"))
];

var w = sprite_get_width(sprite_get("hud_skills"));
var h = sprite_get_height(sprite_get("hud_skills"));
for (var i = 0; i <= 3; ++i) //button offsets
{
    for (var j = i; j <= i + 8; j += 4)
    {
        var offset_x = x + i * 38 + 32 + ((menu_type == 0) * 6);
        var offset_y = y + floor(j / 4) * 32 + 46;

        skill_pos[j] = [
            offset_x - 3,
            offset_y,
            offset_x + w * 2 - 1 + 3,
            offset_y + h * 2,
        ];
    }
}

rng_msg_time = 0;
rng_msg_time_set = 10;

//rng weight setup
rng_prio = [1, 7, 11]; //not recommended | works well | recommended slot
//init values - used to reset the values
rng_weight_init = [
    [rng_prio[2], rng_prio[1], rng_prio[0], rng_prio[0],      0  ], //light dagger
    [rng_prio[1], rng_prio[2], rng_prio[0], rng_prio[1],      1  ], //burning fury
    [rng_prio[0], rng_prio[1], rng_prio[2], rng_prio[0],      2  ], //force leap
    [rng_prio[1], rng_prio[0], rng_prio[0], rng_prio[2],      3  ], //photon blast
    [rng_prio[2], rng_prio[1], rng_prio[0], rng_prio[1],      4  ], //flashbang
    [rng_prio[1], rng_prio[2], rng_prio[1], rng_prio[1],      5  ], //power smash
    [rng_prio[1], rng_prio[0], rng_prio[2], rng_prio[0],      6  ], //accel blitz
    [rng_prio[1], rng_prio[0], rng_prio[0], rng_prio[2],      7  ], //polaris
    [rng_prio[2], rng_prio[1], rng_prio[0], rng_prio[0],      8  ], //ember fist
    [rng_prio[1], rng_prio[2], rng_prio[0], rng_prio[0],      9  ], //light hookshot
    [rng_prio[0], rng_prio[0], rng_prio[2], rng_prio[0],      10 ], //searing descent
    [rng_prio[1], rng_prio[1], rng_prio[0], rng_prio[2],      11 ], //chasm burster
];
rng_pools_init = [0, 0, 0, 0];

//current values - used to update the values
//  rng_weight_cur: the priority of the skills in the RNG, set individually for every SKILL
//  rng_pools_cur: the currently existing sum of all the priorities in the rng, set for every SLOT
rng_weight_cur = [[], [], [], [], [], [], [], [], [], [], [], []];
rng_pools_cur = [0, 0, 0, 0];

for (var a = 0; a < 5; a++) for (var b = 0; b < array_length(rng_weight_init); b ++) rng_weight_cur[b][@ a] = rng_weight_init[b][@ a];
for (var a = 0; a < 4; a++) for (var b = 0; b < array_length(rng_weight_init); b ++)
{
    rng_pools_init[a] += rng_weight_init[b][@ a]; //add currently checked weight to the pool
    rng_weight_cur[b][@ a] = rng_pools_init[a]; //set current priority after the additions from previous skill priorities
}
for (var a = 0; a < 4; a ++) rng_pools_cur[a] = rng_pools_init[a]; //copy pool data for refreshing after the randomizer is done


//writing skills down
var check = array_create(4, -1);
var overwrote_skills = false;
for (var i = 0; i <= 3; i++)
{
    check[i] = (get_synced_var(player) >> (i * 4)) & 0xf; //translates values to the skills
    check[i] %= 12; //makes sure the value won't overflow
}
//overwrite check
//if there was at least 1 overwrite, set the code to set the synced var accordingly
//the repeat is here to double check that all the slots have changed properly
repeat (2) for (var i = 0; i <= 3; i++) for (var j = 0; j <= 3; j++) if (i != j && check[i] == check[j])
{
    check[i] = i;
    if (!overwrote_skills) overwrote_skills = true;
}
cur_skills = check;
if (overwrote_skills) //make sure the synced var is set correctly after the overwrite
{
    set_synced_var(player, 0); //shrinks values back to smaller numbers
    for (var i = 0; i <= 3; ++i)
    {
        var old_sync_var = get_synced_var(player);                                  //the synced var before updating
        var zeroed_element = old_sync_var & ~(0xf << (i * 4))                       //i forgor but it has something to do with shifting the bits
        var new_sync_var = zeroed_element | ((cur_skills[i] & 0xf) << (4 * i));     //shift bits again for the new synced var
        set_synced_var(player, new_sync_var);                                       //update synced var
    }
}


#define set_skill(name, id, slot_x, slot_y, atk, air_atk, cost, cost_ex, cost_min)
{
    //  name            = the name of the skill in question
    //  id              = the sprite to display from the icon strip on the UI above the MP gauge (0-11)
    //  slot_x          = which skill slot is it for (0-3)
    //  slot_y          = which skill is it between the 3 choices (0-2)
    //  atk             = the ground attack index to use
    //  air_atk         = the air attack index to use (-1 makes it use the same one as the ground version)
    //  cost            = initial cost when activating the skill (for flashbang it's 0)
    //  cost_ex         = secoundary skill cost like when light hookshot is fired or bar lands with power smash
    //  cost_min        = what move_cooldown will see to check if we have enough MP to use the skill in the firs place
    //  cost_min2       = specific for some very certain moves if they need another cooldown limiter
    
    skill[a] = {
        skill_name: name,
        skill_id: id,
        skill_pos_x: slot_x,
        skill_pos_y: slot_y,
        skill_attack: atk,
        skill_attack_air: air_atk,
        mp_cost1: cost,
        mp_cost2: cost_ex,
        mp_use_cost: cost_min,
    };
    
    a ++;
    return a-1;
    
    //explanations
    /*
        //"name"/"skill_name" i don't REALLY need but i guess it's nice to have
        //generally, it's based off muno's steve items
        //on his items these names come up on nspec's tables

        //draw_hud.gml - rethink this - it will only display one icon at a certain spot
        //  draw_sprite_ext(hud_skills, skill_id, temp_x + skill_pos_x * 30 + 98, temp_y - 40, 2, 2, 0, c_white, 1);
        //  hud_skills = sprite_get("hud_skills"); //this will also use the disabled skill icons, it swiches around, will need testing

        //set_attack.gml
        //  if (specialnums[0] == 0) attack = free ? skill_attack : skill_attack_air;
        //  if (skill_attack_air == -1) skill_attack_air = skill_attack;

        //attack_update.gml
        //  if (window_timer == 1 && window == 2) mp_cur -= mp_cost1; //initial cost
        //  if (window_timer == 1 && window == 5) mp_cur -= mp_cost2; //extra cost

        //update.gml
        //  move_cooldown[skill name] = 1 + ceil(mp_use_cost - mp_cur);
    */
}