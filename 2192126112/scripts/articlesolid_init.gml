

//article3_init

sprite_index = sprite_get("meemsummon");
image_index = 0;
spr_dir = player_id.spr_dir;
uses_shader = true;
hits = 0;


sprite[0] = sprite_get("meemsummon"); //goingup
sprite[1] = sprite_get("meem"); //idle level 1
sprite[2] = sprite_get("meemfall"); //idle level 2

anim_type[0] = 1;
anim_type[1] = 1;
anim_type[2] = 1;
freeze = 0;
freeze_timer = 10;
free_timer = 0;

player_id.meem_limit = 0;
state = 0;                   //The behavior state the article should start in.
state_timer = 0;                   //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                 //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 3 * spr_dir;                    //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                    //The vertical speed of the article.
exist_timer = 0;	         //How long the article has existed.

can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = false;                                        //Whether the article is in the air or not.
hit_wall = false;       //If the article moves into a wall on its own, this variable will be true.


summon_timer = 9;

meem_timer = -50;

//Tin stuff
death_sfx = 0;
hit_sfx_timer = 0;