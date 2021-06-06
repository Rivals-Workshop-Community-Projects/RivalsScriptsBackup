//article2_init - runs once, when the article is created

//Sprite and direction
sprite_index = sprite_get("egglaunch");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                //Whether or not the article is recolored according to the character's color.gml and costume.
depth = player_id.depth+1;

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 10*spr_dir;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.
ignores_walls = true;

decrementid = false;
babyid = player_id.babycount; //id
babycounted = false;
storedbabycount = 0;
babyfollowing = false;
isthrown = false;
latchedid = player_id;
randxoffset = 0
randyoffset = 0
babytempx = 0;
babytempy = 0;
babyboby = 0;
babyhealth = 11;
BABYDMGCOOLVAL = 20;
babydmgcooldown = BABYDMGCOOLVAL;
orbhit = false;
//baby movement stuff
smooth_val = .05;
dist = 0;
dir = 0;

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//State buffering (for if the article is busy when you send it a state command)
bufferedstate = 0;                                  //The state fed to the article by the player. Set this in your character's code, and the article will set itself to the requested state as long as it's available within 20 frames of the input
buffertimer = 0;                                    //The current amount of frames remaining in the buffer window. When this reaches zero, the article will throw away the buffered state request.

//Animation speeds and timers
idle_anim_rate = 5;                                 //Example animation speed value 1. The animation in question will increment every 8 frames in this case
egg_anim_rate = 10;
sploshi_anim_rate = 4;
die_anim_rate = 4;                                  //Example animation speed value 2.
die_time = 120;                                      //Example variable used in this case to determine how long the article should take to die (state 2). 
animation_type = 1;                                 //This variable is part of the animation handling found in article1_update. It determines when, or how frequently, the image_index should increment
new_sprite = sprite_get("egg");             //This is another part of the animation handling. It tells the game "this is the sprite this article should be using; if it's not already, switch it over please"

//Limit on number of articles
replacedcount = 0;                                  //This gets incremented whenever a new article is created. If this reaches maxarticles, the article is destroyed
maxarticles = 3;                                    //The maximum number of this article that should exist at once.

with(asset_get("obj_article2")){
    if (player_id == other.player_id){
        replacedcount++;                            //If there are any other article1s owned by the same person, tell them to increment their replacedcount by 1
    }
}

//Cure depression
shoulddie = false;                                  //If this is set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something