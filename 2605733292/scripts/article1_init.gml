//article1_init - runs once, when the article is created. Template by Muno

//Used for Sleep Copy Essence

//Sprite and direction
sprite_index = sprite_get("essence_empty");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0; 
fake_dir = player_id.spr_dir                                   //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = 1                       //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = false;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

mask_index = sprite_get("ability_star_hurtbox");

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

//Cope with own mortality
should_die = false;                                 //If this is ever set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something

//DEFINE YOUR OWN VARIABLES HERE!

blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);

cur_rot = 0;
hud_y_var_thing = 0;
hud_color = get_player_hud_color(player_id.player);

star_trail = hit_fx_create(sprite_get("star_trail"), 9);

drawStarSpr = true;
directionImFacing = spr_dir;

hitByNSpecBubble = false;
bubbleX = 0;
bubbleY = 0;

starHitSomeone = false;

starWasParried = false;
starWasParriedAtLeastOnce = false;
wasStarParried = false;
personWhoParriedStar = noone;
whoActuallyControlsStar = player_id;

starWasHitByOwner = false;

// ------------------------------------------------
// hitbox stuff
can_get_hit = true;
hitby = noone;
hit_time_thingy = 0;
hitbox_hit = noone;

can_get_hit = true;
hitbox_hit = noone;
hit_lockout = 0;
hit_by = noone;

hitbox_angle = 0;
hitbox_owner = noone;
hitbox_bkb = 0;
hitbox_kbs = 0;
hitbox_damage = 0;
hitbox_sfx = 0;

hitbox_var = true;

cur_hitbox = noone;