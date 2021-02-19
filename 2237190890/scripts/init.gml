// Init
enum ST {
    NONE,
    GRASS,
    FIRE,
    WATER,
    EARTH,
    BF,
    KALOS,
    SV,
    RBF,
    BLAZING,
    FD
}

pkmn_stadium_front_img = sprite_get("my_sprite");

top_stage = ST.FD; // The top stage on the list
bottom_stage = ST.NONE; // The bottom stage on the list

transform_enabled = true; // Whether or not transformations are enabled
transform_menu_used = false; // Whether or not the transform menu was used
transform_menu = false; // Whether the transform menu is up or not
transform_timer = 0; // The timer that determines whether it's time to transform or not
transform_buffer = 0; // Sets a buffer for disabling the transform menu
transform_warning = -1; // The warning for transformation
transform_sound_played = false;
transform_clouds = -1; // When the transform clouds appeared
transform_away = false; // Whether the transform is going away from neutral or not
transform_clouds_init = false; // Whether or not the transform cloud timer has been init
transform_set = false; // Whether or not the transformed objects have been set
transform_state = 0; // Which state the transformation is in
transform_states = 2; // How many transformation states there are (counting 0)
transform_state_timer = 0; // The timer of the transformation state
transform_delay = 198; // The time it takes for the transform to start
transform_state_length = [171, 60, 171]; // The lenghts of the various transformation states
transform_time = 0; // The real transformation time
aether = is_aether_stage(); // Whether aether is on or not
stage_changed = false; // Whether or not the stage has been changed yet
stages = ["normal", "grass", "fire", "water", "earth", "normal", "normal", "normal", "normal", "normal", "normal"] // Strings of all the stage file names
stage_names = ["Normal", "Grass", "Fire", "Water", "Earth", "Battlefield", "Kalos", "Smashville", "Reverse Battlefield", "Blazing Hideout", "Final Destination"]; // Strings of the actual stage names
// Editable stage variables
stages_enabled = [-4, true, true, true, true, false, false, false, false, false, false]; // Whether the stage is enabled or not
empty_stages_enabled = [-4, false, false, false, false, false, false, false, false, false, false]; // An empty version of the stages enabled array
stage_playlist = [ST.NONE, ST.GRASS, ST.FIRE, ST.WATER, ST.EARTH, ST.BF, ST.KALOS, ST.SV, ST.RBF, ST.BLAZING, ST.FD]; // Stage playlist, first one is the default stage
stage = ST.NONE; // What stage you start on
transform_enabled_temp = true; // The temporary variable that will eventually turn on or off transformations
full_transform_time = 60; // How long it takes between transformations (in seconds)
stage_transform_time = floor(full_transform_time/2); // How long it takes in the stage transformations
random_stages = ds_list_create();

// Defaults
default_stages_enabled = array_clone(stages_enabled);
default_stage_playlist = array_clone(stage_playlist);
default_stage = stage;
default_transform_enabled_temp = transform_enabled_temp;
default_transform_time = transform_time;

paused = false; // Whether or not the game is paused
stage_order = 0; // What stage you are on in the order
cur_plat = 0; // Current platform id
cur_block = 0; // Current solid id
cur_fg = 0; // Current FG id
transforming = 0; // Whether or not the stage is currently transforming
grass_plat_animated = false; // Whether the grass plat has been animated yet
grass_plat_landed = false; // Whether the grass plat is currently landed on
grass_plat_anim_speed = 0.1; // How fast the grass platform moves
fire_tree_anim_speed = 0.07; // How fast the fire transformation background trees animate
small_fire_anim_speed = 0.15; // How fast the fire transformation small fire animates
big_fire_anim_speed = 0.15; // How fast the fire transformation big fire animates
smoke_anim_speed = 0.15; // How fast the fire transformation smoke animates
windmill_rot_speed = 0.5; // How fast the windmill rotates
water_ripple_anim_speed = 0.15; // How fast the water ripple animates
water_spout_anim_speed = 0.15; // How fast the water spouts animate
sv_plat_timer = 0; // The current timer for the smashville platform
sv_plat_max_timer = 420; // The maximum timer for the smashville platform
sv_plat_speed = 2; // The speed of the smashville platform;
sv_plat_accel = 0.03; // The acceleration/deceleration of the smashville platform
sv_plat_dir = -1; // The direction of the smashville platform
sv_hsp = 0; // A fake HSP of the platform
sv_x_1 = 0; // A fake X value of the first platform
sv_x_2 = 0; // A fake X value of the second platform
sprite_change_collision_mask("fire_block1", true, 1, 0, 0, 0, 0, 0 ); 
sprite_change_collision_mask("earth_block1", true, 1, 0, 0, 0, 0, 0 ); 
sprite_change_offset("water_fg1", 73, 73);
fireworks = false; // Whether or not the fireworks have played
dead_players = [-4, false, false, false, false]; // Whether the players are dead or not
firework_index = 0;

starting_y = 368; // The y position players will spawn at
plat_y = 374; // The y position of the neutral platform height
ground_y = 464; // The y position of the ground height
player_count = 0; // How many players are in the match
players = [-4, -1, -1, -1, -1]; // The id's for the players
player_list = []; // An unsorted list of players
back_prev = 0; // The previous back player
front_prev = 0; // The previous front player
back = 0; // The current back player
front = 0; // The current front player
back_changed = false; // Whether or not the back player has changed
front_changed = false; // Whether or not the front player has changed
player_values = [-4, -1, -1, -1, -1]; // Individual score for each player
player_values_teamone = [-4, -1, -1, -1, -1]; // Individual score for team 1
player_values_teamtwo = [-4, -1, -1, -1, -1]; // Individual score for team 2
with (oPlayer) {
    // Fills player lists
    if (is_player_on(player)) {
        other.player_count++;
        other.players[player] = player
        other.player_list[array_length_1d(other.player_list)] = player;
    }
}
player_starting_x = [-4, -1, -1, -1, -1];
player_starting_y = [-4, -1, -1, -1, -1];
player_starting_pos_init = false;

// Player Inputs
left_pressed_arr = [-4, 0, 0, 0, 0];
right_pressed_arr = [-4, 0, 0, 0, 0];
up_pressed_arr = [-4, 0, 0, 0, 0];
down_pressed_arr = [-4, 0, 0, 0, 0];
attack_pressed_arr = [-4, 0, 0, 0, 0];
special_pressed_arr = [-4, 0, 0, 0, 0];
left_down_arr = [-4, 0, 0, 0, 0];
right_down_arr = [-4, 0, 0, 0, 0];
left_down = 0;
right_down = 0;
left_pressed = 0;
right_pressed = 0;
up_pressed = 0;
down_pressed = 0;
attack_down = 0;
special_down = 0;
attack_pressed = 0;
special_pressed = 0;
attack_buffer = 0;
special_buffer = 0;

hold_timer = 0; // How long an input has been held for
sound_buffer = 69; // The buffer between sound effects being able to be played when adjusting the time

// Menu data
index_size = 26; // The size of a line index
index = 0; // The current line the cursor is on
horiz_index = 0; // The index the cursor is horizontally
cursor_img = 0; // The image_index of the cursor
cursor_anim_speed = 0.05; // The anim speed of the cursor
indices = [0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 13 + ((index_size/2 + 7)/index_size)];
cursor_selected = false; // Whether any index is selected
index_selected = array_create((array_length(indices)), false); // The index that is selected
index_value = array_create((array_length(indices)), false); // The values stored in the indexes
actual_index = 0; // The index of the indices, to lock it to available indices
stored_index_value = 0; // The currently stored value of the index;

supported_chars = ds_list_create(); // Makes a list of all supported characters

// Base cast
for (i = 2; i <= 16; i++) {
    ds_list_add(supported_chars, string(i));
}

// Workshop supports
ds_list_add(supported_chars, "1895275607"); // Lode & Puul
ds_list_add(supported_chars, "1905208125"); // Hime
ds_list_add(supported_chars, "1941825892"); // Fox
ds_list_add(supported_chars, "1943759600"); // Olympia
ds_list_add(supported_chars, "2004962115"); // Gatekeeper
ds_list_add(supported_chars, "2006251771"); // Falco
ds_list_add(supported_chars, "2064167290"); // Hana
ds_list_add(supported_chars, "2089998666"); // Big Yoshi
ds_list_add(supported_chars, "2097891733"); // Dartha
ds_list_add(supported_chars, "2100731924"); // Joshua & Batit
ds_list_add(supported_chars, "2108764588"); // Zerra
ds_list_add(supported_chars, "2112112255"); // Jaunted
ds_list_add(supported_chars, "2136440419"); // Hodan
ds_list_add(supported_chars, "2167624888"); // Lyca
ds_list_add(supported_chars, "2173232702"); // Felicia
ds_list_add(supported_chars, "2195482758"); // Tenru
ds_list_add(supported_chars, "2198210310"); // Wall-E
ds_list_add(supported_chars, "2201608216"); // Blake


// Font values
font_sprite = sprite_get("names");
font = ds_list_create();
ds_list_add(font, "A");
ds_list_add(font, "B");
ds_list_add(font, "C");
ds_list_add(font, "D");
ds_list_add(font, "E");
ds_list_add(font, "F");
ds_list_add(font, "G");
ds_list_add(font, "H");
ds_list_add(font, "I");
ds_list_add(font, "J");
ds_list_add(font, "K");
ds_list_add(font, "L");
ds_list_add(font, "M");
ds_list_add(font, "N");
ds_list_add(font, "O");
ds_list_add(font, "P");
ds_list_add(font, "Q");
ds_list_add(font, "R");
ds_list_add(font, "S");
ds_list_add(font, "T");
ds_list_add(font, "U");
ds_list_add(font, "V");
ds_list_add(font, "W");
ds_list_add(font, "X");
ds_list_add(font, "Y");
ds_list_add(font, "Z");
ds_list_add(font, "0");
ds_list_add(font, "1");
ds_list_add(font, "2");
ds_list_add(font, "3");
ds_list_add(font, "4");
ds_list_add(font, "5");
ds_list_add(font, "6");
ds_list_add(font, "7");
ds_list_add(font, "8");
ds_list_add(font, "9");
ds_list_add(font, "+");
ds_list_add(font, "-");
ds_list_add(font, ".");
ds_list_add(font, "'");
ds_list_add(font, "%");
ds_list_add(font, "\");
ds_list_add(font, "|");
ds_list_add(font, " ");

names = [-4, [-1], [-1], [-1], [-1]]; // Array of names
pkmn_names_initialized = false; // Whether the naems have been initialized

max_name_length = 9; // How long a name can be

// Graphics settings
graphics_override = 0; // Whether the graphics are overrided or not, and if so, to what level
graphics_level = 0; // How many graphics can appear
graphics_levels = ["Auto", "Lowest", "Low", "Medium", "High", "Highest"]; // The graphics level texts
graphics_timer = 0; // Delay on upping the graphics again
lag = 0; // How many frames the lag has lasted
shadow_opacity = 0.5; // How dark the shadows are