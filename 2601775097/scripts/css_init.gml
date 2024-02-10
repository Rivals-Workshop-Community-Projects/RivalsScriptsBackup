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

for (var i = 0; i <= 3; ++i)
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

if (init && room != 114) set_synced_var(player, 0);

//saves skill data in case it's needed
//if not, set it to [12816], which is the default kit
if (get_synced_var(player) >= 4228 && (!init || room == 114)) for (var i = 0; i <= 3; i++) cur_skills[i] = (get_synced_var(player) >> (i * 4)) & 0xf;
else set_synced_var(player, 12816);

//put this in user_event2 ^ because it needs to run on css and ingame



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
        //  if (window_timer == 1 && window == 2) mp_current -= mp_cost1; //initial cost
        //  if (window_timer == 1 && window == 5) mp_current -= mp_cost2; //extra cost

        //update.gml
        //  move_cooldown[skill name] = 1 + ceil(mp_use_cost - mp_current);
    */
}