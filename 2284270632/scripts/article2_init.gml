//articleX_init - runs once, when the article is created. Template by Muno

//Sprite and direction
sprite_index = sprite_get("ionsign");           
image_index = 0;                                    
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = false;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
window = 0;
window_timer = 0; 
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement                                          //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.
exist_timer = 0;//How long the article has existed.
ionized = player_id.ionized;

//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = true;                                   //If the article moves into a wall on its own, this variable will be true.

//Cope with own mortality
should_die = false;                                 //If this is ever set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something

BOTTOM_BLASTZONE_Y_POS = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);
TOP_BLASTZONE_Y_POS = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
LEFT_BLASTZONE_X_POS = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
RIGHT_BLASTZONE_X_POS = get_stage_data(SD_WIDTH) + get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);

//Sprites (the number in [brackets] is the state)
sprite[0] = sprite_get("ionsign");             //Example sprites
//anim types
anim_type[0] = 0;
anim_type[1] = 1;