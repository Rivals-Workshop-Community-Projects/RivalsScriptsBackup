//article1_init - runs once, when the article is created

ball8_launch = false;   //whether it's being launched by the 8ball
bike_health = 2;        //HP
max_bike_health = 2;    //max HP
should_hurt = false;    //whether it should reduce HP

//Sprite and direction
sprite_index = player_id.spr_a_bike_idle;           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
mask_index = sprite_get("a_bike_hurtbox");
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
prev_state = 0;
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = player_id.hsp;                                //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = player_id.vsp;                                //The vertical speed of the article.

origin = 0; //whether to change sprite offset (fixes appearance on plats)

// if (player_id.bikeairdodge){ //make it go down if you airdodge off bike
//     hsp = 0;
//     vsp = 2;
//     player_id.bikeairdodge = false;
//     origin = 1;
// }

// if (player_id.bikeattack){ //handle speed if you attack off bike
//     hsp = clamp(hsp, -player_id.stat_air_max_speed[0], player_id.stat_air_max_speed[0])
//     vsp = ((player_id.attack == AT_DAIR) ? 0 : 2);
//     if (player_id.attack == AT_DAIR){
//         hsp = clamp(hsp, -2, 2);
//     }
//     player_id.bikeattack = false;
//     origin = 2;
// }

var i = 0;

repeat(5){ //set up arrays for previous positions
    prev_x[i] = 0;
    prev_y[i] = 0;
    i++;
}

hsp_prev = hsp;
vsp_prev = vsp;

//Terrain behavior
can_be_grounded = true;                             //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//State buffering (for if the article is busy when you send it a state command)
bufferedstate = 0;                                  //The state fed to the article by the player. Set this in your character's code, and the article will set itself to the requested state as long as it's available within 20 frames of the input
buffertimer = 0;                                    //The current amount of frames remaining in the buffer window. When this reaches zero, the article will throw away the buffered state request.

//Animation speeds and timers
idle_anim_rate = 6;                                 //Example animation speed value 1. The animation in question will increment every 8 frames in this case
die_anim_rate = 4;                                  //Example animation speed value 2.
die_time = 24;                                      //Example variable used in this case to determine how long the article should take to die (state 2). 
animation_type = 1;                                 //This variable is part of the animation handling found in article1_update. It determines when, or how frequently, the image_index should increment
new_sprite = sprite_get("your_sprite");             //This is another part of the animation handling. It tells the game "this is the sprite this article should be using; if it's not already, switch it over please"

//Cure depression
shoulddie = false;                                  //If this is set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something

otto_dair_hit = false; //whether dair hit the bike

kb_dir = 0; //direction of kb for bike hitbox

bikes_hitbox = noone; //bike's hitbox ID



//Ori bash
hitstop_ori = false;
hitstop_ori_full = 0;
type = -1; //Don’t change this
basher_x = 0;
basher_y = 0;
bashed = false;
bashing_player = noone;

orig_player = player;
orig_player_id = player_id;