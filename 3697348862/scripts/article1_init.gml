//article1_init

//Used for TI84 Graphing Calculator Operator Articles

//Sprite and direction
sprite_index = sprite_get("__operators");
sprite_index = sprite_get("empty");
mask_index = sprite_get("__operators_hurt");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = false;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.
exist_timer = 0;                                    //How long the article has existed.

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//Cope with own mortality
should_die = false;                                 //If this is ever set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something

blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);
outsideOfBlastzones = false;

// custom, unique vars

/*
1 = Addition
2 = Subtraction
3 = Multiplication
4 = Division
*/
is_a_ti84_operator = true;
spawned_by_down_b = false;

curr_operator = 4;

rotate_angle_thing = 0;
what_to_rot_by_value = 0;

held_num_1 = -1;
held_num_2 = -1;

disable_recatching_on_rethrown_numbers = false;
held_num_1_was_recaught = false;
held_num_2_was_recaught = false;

throw_startup = 75;

grab_num_internal_delay = 0;
grab_num_internal_delay_max = 3;

pref_spr_dir = 0;

move_throw_startup_point_num1 = x - 70;
move_throw_startup_point_num2 = x + 70;

move_throw_num1_pos = move_throw_startup_point_num1;
move_throw_num1_pos_y = y;
move_throw_num2_pos = move_throw_startup_point_num2;
move_throw_num2_pos_y = y;

// note to self_these get updated in article1_update.gml
move_throw_startup_point_add_1 = x - (70*spr_dir);
move_throw_startup_point_add_2 = x + (70*spr_dir);

move_throw_startup_point_sub_1 = x + (70*spr_dir);
move_throw_startup_point_sub_2 = x - (70*spr_dir);

move_throw_startup_point_mlt_x_1 = x + (45*spr_dir);
move_throw_startup_point_mlt_y_1 = y - 45;
move_throw_startup_point_mlt_x_2 = x + (45*spr_dir);
move_throw_startup_point_mlt_y_2 = y + 45;

move_throw_startup_point_dvd_x_1 = x + (0*spr_dir);
move_throw_startup_point_dvd_y_1 = y - 70;
move_throw_startup_point_dvd_x_2 = x + (0*spr_dir);
move_throw_startup_point_dvd_y_2 = y + 70;

hud_color = get_player_hud_color(player);

launched_by_uspec = false;
launched_down_travel_hb = noone;