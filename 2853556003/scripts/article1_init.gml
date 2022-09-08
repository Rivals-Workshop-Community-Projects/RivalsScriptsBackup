//article1_init - runs once, when the article is created

if object_index == oPlayer exit;

//Birdboy specific variables
drivespeed = 2

//Sprite and direction
sprite_index = sprite_get("hurricane");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
mask_index = sprite_get("hurricane_mask");
collision_sprite = sprite_get("hurricane_col");
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = 1;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.

current_owner = player

//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//Limit on number of articles
replacedcount = 0;                                  //This gets incremented whenever a new article is created. If this reaches maxarticles, the article is destroyed
maxarticles = 1;                                    //The maximum number of this article that should exist at once.

holding_bomb = false
bomb_strong = false
grabbedid = noone
multihits = 0
hurricane_hitbox = noone
if(player_id.bomb_hurricane){
    bomb_hurricane = true
}

lifetime = 0

glowmodifier = 1;
glowmodifierdir = 1
colorvar = make_color_rgb(get_color_profile_slot_r(get_player_color(player), 1), get_color_profile_slot_g(get_player_color(player), 1), get_color_profile_slot_b(get_player_color(player), 1))

sound_play(sound_get("sfx_hurricane_spawn"))

with(asset_get("obj_article1")){
    if (player_id == other.player_id){
        replacedcount++;                            //If there are any other article1s owned by the same person, tell them to increment their replacedcount by 1
    }
}

