//This contains stage variables.
//This will include info about the boss's fighting state, if it's killed, etc.

//The enum for the boss fight state.
boss_fight_state = 0;

//You can make multiple bosses share the same healthbar if you want.
//This is the number of bosses to calculate the health for.
num_bosses = 1;

//If you want the boss to spawn after some time, set this variable. A value of 0 or lower will make it spawn automatically at start.
spawn_boss_time = 1;

//Now, each boss has an index associated with it. The maximum index is num_bosses - 1;
//The marker where the boss will spawn.
boss_spawn_marker[0] = 1;
//The boss index. Used for multiple bosses and enemies.
boss_article_index[0] = 0;
//The article's ID.
boss_article_id[0] = noone;

//The state timer
boss_state_timer = 0;

//Aether mode = Hard mode
hard_mode = is_aether_stage();

show_healthbar = false;
boss_healthbar_timer = 0;
boss_name = "Dracula";

//Number of players in this match.
player_count = 0;
dead_players = 0;

the_end = false;

//Number of dead players
player_is_dead = array_create(5, 0);
player_boss_hits = array_create(5, 0);
player_display_hits = array_create(5, 0);

//Camera logic
view_follow = ds_list_create();
view_focus = noone;
cam_x = 0;
cam_y = 0;

//Dummy player index
dummy_player = -1;

//This is for screen shaking.
shake_amount = 0;

//Character compatibility
wet = false; //For Wizard

//Textbox stuff.
dracula_texttype = 18;
textbox_show = false;
textbox_index = 0;
textbox_speaker = 0;
textbox_portraits[0] = sprite_get("dracula_portrait"); //Drac's portrait
textbox_portraits[1] = sprite_get("empty_sprite"); //Custom1
textbox_portraits[2] = sprite_get("empty_sprite"); //Custom2
textbox_portraits[3] = sprite_get("empty_sprite"); //Custom3
textbox_portrait_img[0] = 0;
textbox_portrait_img[1] = 0;
textbox_portrait_img[2] = 0;
textbox_portrait_img[3] = 0;
textbox_continue_spr = sprite_get("dialogcontinue");
textbox_continue_spd = 0.05;
textbox_continue_img = 0;
textbox_spr = sprite_get("textbox");
character_speed = 1;
max_character_speed = 1000;
max_line_length = 752;
max_lines = 5;
textbox_text = "Default text"
textbox_typetext = "";
textbox_pos = 0;
textbox_linenum = 1;
textbox_linetext = "";
textbox_glasstimer = -1;
textbox_taunting = false;
textbox_taunting_timeout = 0;
textbox_shakeamount = 0;
textbox_player_id = noone;