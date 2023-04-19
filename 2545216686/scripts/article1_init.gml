//article1_init - runs once, when the article is created. Template by Muno

//Used for Remote Robot

//Sprite and direction
if (player_id.defaultcolor == true){
	sprite_index = sprite_get("robot_spin_default");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
} else {
	sprite_index = sprite_get("robot_spin");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
}
mask_index = sprite_get("robot_hurtbox");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.
exist_timer = 0;                                    //How long the article has existed.

//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//hitbox stuff
can_get_hit = true;
hitby = noone;
hit_time_thingy = 0;
hitbox_hit = noone;

//Cope with own mortality
should_die = false;                                 //If this is ever set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something

robot_on_plat = false

at_ledge = false

activatejump = false

istouchingaplayer = instance_nearest(x,y,asset_get("oPlayer"));

robot_dust_spawn_var = 0;

blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);

//DEFINE YOUR OWN VARIABLES HERE!

robotNumber = 1;

//Sprites (the number in [brackets] is the state)

//Changing the sprites used for the robot if Tails is not using an alt.
if (player_id.defaultcolor == true){
	sprite[0] = sprite_get("robot_spin_default");
	sprite[1] = sprite_get("robot_land_default");
	sprite[2] = sprite_get("robot_walk_default");
	sprite[3] = sprite_get("robot_turn_default");
	sprite[4] = sprite_get("robot_jumpstart_default");
	sprite[5] = sprite_get("robot_fall_default");
	sprite[6] = sprite_get("empty_sprite");
	sprite[7] = sprite_get("robot_fall_default");
	sprite[8] = sprite_get("robot_hurt_default");
	sprite[9] = sprite_get("empty_sprite");
} else if (player_id.defaultcolor == false){
	sprite[0] = sprite_get("robot_spin");
	sprite[1] = sprite_get("robot_land");
	sprite[2] = sprite_get("robot_walk");
	sprite[3] = sprite_get("robot_turn");
	sprite[4] = sprite_get("robot_jumpstart");
	sprite[5] = sprite_get("robot_fall");
	sprite[6] = sprite_get("empty_sprite");
	sprite[7] = sprite_get("robot_fall");
	sprite[8] = sprite_get("robot_hurt");
	sprite[9] = sprite_get("empty_sprite");
}

anim_type[0] = 0;
anim_type[1] = 1;
anim_type[2] = 2;
anim_type[3] = 3;
anim_type[4] = 4;
anim_type[5] = 5;
anim_type[6] = 6;
anim_type[7] = 7;
anim_type[8] = 8;
anim_type[9] = 9;