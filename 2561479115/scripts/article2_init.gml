//
sprite_index = sprite_get("article2_startup");
mask_index = sprite_get("article2_mask");
grav_accel = 0.6;

//can_be_grounded = false;

charges = 2;

radius = 65;
center = [0,-30];

target = noone;
direc = -361;
max_target_speed = 2.5;
cur_sound = -1;
collided = false;
finalCol = noone;
plat = noone;
block = noone;
plr = noone;

shoost_range = 1200;

tag = noone;
//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.

//Terrain behavior
can_be_grounded = true;
ignores_walls = false;                            //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//State buffering (for if the article is busy when you send it a state command)
bufferedstate = 0;                                  //The state fed to the article by the player. Set this in your character's code, and the article will set itself to the requested state as long as it's available within 20 frames of the input
buffertimer = 0;                                    //The current amount of frames remaining in the buffer window. When this reaches zero, the article will throw away the buffered state request.

//Animation speeds and timers
spawn_anim_rate = 4;
idle_anim_rate = 8;                                 //Example animation speed value 1. The animation in question will increment every 8 frames in this case
die_anim_rate = 3;                                  //Example animation speed value 2.
die_time = die_anim_rate*12;                        //Example variable used in this case to determine how long the article should take to die (state 2). 
animation_type = 1;                                 //This variable is part of the animation handling found in article1_update. It determines when, or how frequently, the image_index should increment
new_sprite = sprite_get("article2_startup");        //This is another part of the animation handling. It tells the game "this is the sprite this article should be using; if it's not already, switch it over please"

shoost_anim_timer = -1;


//Limit on number of articles
replacedcount = 0;                                  //This gets incremented whenever a new article is created. If this reaches maxarticles, the article is destroyed
maxarticles = 1;                                    //The maximum number of this article that should exist at once.

with(asset_get("obj_article2")){
    if (player_id == other.player_id){
        replacedcount++;                            //If there are any other article1s owned by the same person, tell them to increment their replacedcount by 1
    }
}

//Cure depression
shoulddie = false;                                  //If this is set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something
