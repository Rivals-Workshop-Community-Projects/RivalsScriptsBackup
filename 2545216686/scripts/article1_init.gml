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
state = 1;                                          //The behavior state the article should start in.
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

// Custom Variables
robotNumber = 1;
robotAtLedge = false;
robotOnPlat = false;
shouldJump = false;
throwHitboxHit = false;
gotHitByEnemyAttack = false;
gotHitCounter = 0;
tailsDied = false;
explodedByNSpec = false;
robotGotParried = false;

projTravelHitbox = noone;
launchHitbox = noone;

tailsTeam = noone;

blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);

if (!player_id.defaultcolor){
	robotSprSpin = sprite_get("robot_spin");
	robotSprLand = sprite_get("robot_land");
	robotSprWalk = sprite_get("robot_walk");
	robotSprTurn = sprite_get("robot_turn");
	robotSprJumpstart = sprite_get("robot_jumpstart");
	robotSprFall = sprite_get("robot_fall");
	robotSprHurt = sprite_get("robot_hurt");
} else if (player_id.defaultcolor){
	robotSprSpin = sprite_get("robot_spin_default");
	robotSprLand = sprite_get("robot_land_default");
	robotSprWalk = sprite_get("robot_walk_default");
	robotSprTurn = sprite_get("robot_turn_default");
	robotSprJumpstart = sprite_get("robot_jumpstart_default");
	robotSprFall = sprite_get("robot_fall_default");
	robotSprHurt = sprite_get("robot_hurt_default");
}