//article1_init - runs once, when the article is created

//Sprite and direction
sprite_index = sprite_get("gastro_acid");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
//spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
mask_index = sprite_get("gastro_acid_mask");
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

animate_speed = 0.1

acid_count = 0
acid_num = 1

with(asset_get("obj_article1")){
    if (player_id == other.player_id){
        acid_count++;                            //If there are any other article1s owned by the same person, tell them to increment their replacedcount by 1
    }
}

//Animation speeds and timers
idle_anim_rate = 10;                                 //Example animation speed value 1. The animation in question will increment every 8 frames in this case
die_anim_rate = 4;                                  //Example animation speed value 2.
die_time = 15;                                      //Example variable used in this case to determine how long the article should take to die (state 2). 
animation_type = 1;                                 //This variable is part of the animation handling found in article1_update. It determines when, or how frequently, the image_index should increment
new_sprite = sprite_get("gastro_acid")          //This is another part of the animation handling. It tells the game "this is the sprite this article should be using; if it's not already, switch it over please"
idk_rate = 4

//State
state = 3;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 3;                                            //The vertical speed of the article.
//depth = -10
//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = false;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//move_snap(32,24)

