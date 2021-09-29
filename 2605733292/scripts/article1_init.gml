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

//hitbox stuff
can_get_hit = true;
hitby = noone;
hit_time_thingy = 0;
hitbox_hit = noone;

//DEFINE YOUR OWN VARIABLES HERE!

//ability_star = instance_create(x, y, "obj_article2");
//ability_star.player_id = player_id;

copy_essence_spawn_loop = 0

player_id.essences_in_use++;

copy_essence_gamer_x = x
copy_essence_gamer_y = y

copy_essence_gamer_was_hit_by_bubble = 1

can_get_hit = true

should_bounce = true

hit_by_burst_bubble = false

spawned_by_rune_o = false

hud_color = get_player_hud_color(player_id.player);

hud_y_var_thing = 80

ayo_the_pizza_here = false;

essence_can_be_destroyed = player_id.essence_can_be_destroyed

copy_got_parried = player_id.essence_got_parried

bounce_timer_what_does_this_var_do = 0

oh_crap_did_i_get_absorbed_by_bubble = false

videogaming = 0

hey_what_way_did_bubble_hit_me = 0

ability_show = true;

bounce_lockout = 0;

//HITBOX STUFF aaaa (thank u to tdude for letting me reuse some code)
can_get_hit = true;
hitbox_hit = noone;
hit_lockout = 0;
hit_by = noone;

//2
hitbox_active = false;
cur_hitbox = noone;

cur_rot = 0;

should_spawn_hitbox = false;
should_destroy_hitbox = false;

hitbox_angle = 0;
hitbox_owner = noone;
hitbox_bkb = 0;
hitbox_kbs = 0;
hitbox_damage = 0;
hitbox_sfx = 0;

hitbox_var = true;

blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);

//Sprites (the number in [brackets] is the state)
sprite[0] = sprite_get("essence_empty");             //Example sprites
sprite[1] = sprite_get("essence_ability_spawn");
sprite[2] = sprite_get("essence_ability");
sprite[3] = sprite_get("empty");
sprite[4] = sprite_get("empty");
anim_type[0] = 0;
anim_type[1] = 1;
anim_type[2] = 0;
anim_type[3] = 0;
anim_type[4] = 0;