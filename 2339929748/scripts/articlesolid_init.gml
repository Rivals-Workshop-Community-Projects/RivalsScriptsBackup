

sprite_index = sprite_get("stopbox");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = 1;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;


state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;
article_gravity = 5;
can_be_grounded = true;                             //Determines if the article follows platforms when free == false.
ignores_walls = false;
free = false;
hit_wall = false;   
go_through = true;


bufferedstate = 0;                                  //The state fed to the article by the player. Set this in your character's code, and the article will set itself to the requested state as long as it's available within 20 frames of the input
buffertimer = 0;                                    //The current amount of frames remaining in the buffer window. When this reaches zero, the article will throw away the buffered state request.


idle_anim_rate = 0;                                 //Example animation speed value 1. The animation in question will increment every 8 frames in this case
die_anim_rate = 0;                                  //Example animation speed value 2.
die_time = 0;                                       //Example variable used in this case to determine how long the article should take to die (state 2). 
animation_type = 0;                                 //This variable is part of the animation handling found in article1_update. It determines when, or how frequently, the image_index should increment
new_sprite = sprite_get("stopbox"); 

//article limit
replacedcount = 0;                                  //This gets incremented whenever a new article is created. If this reaches maxarticles, the article is destroyed
maxarticles = 1;                                    //The maximum number of this article that should exist at once.

with(asset_get("obj_article_solid")){
    if (player_id == other.player_id){
        replacedcount++;                            //If there are any other article1s owned by the same person, tell them to increment their replacedcount by 1
    }
}

//Cure depression
shoulddie = false;

