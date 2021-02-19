//articleX_init - runs once, when the article is created. Template by Muno

//Sprite and direction
sprite_index = sprite_get("nspecial_proj");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.
exist_timer = 0;                                    //How long the article has existed.

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
through_platforms = true;

//Limit on number of articles
var total_articles = 0;                             //This gets incremented whenever a new article is created.
var max_articles = 1;                               //The maximum number of this article that should exist at once.
var oldest = -1;                                    //Records the oldest article found's exist_timer. -1 means nothing found yet
var oldest_obj = noone;                             //Records the oldest article found's ID.

with(asset_get("obj_article1")){
    if (player_id == other.player_id){
        total_articles++;
        if (oldest == -1 || exist_timer < oldest){
            oldest = exist_timer;
            oldest_obj = id;
        }
    }
}

if (total_articles > max_articles){
    oldest_obj.should_die = true;
}

//Cope with own mortality
should_die = false;                                 //If this is ever set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something

//DEFINE YOUR OWN VARIABLES HERE!
movement_angle = 0;
movement_speed = 10;
forward_movement_time = 20;
boomerang_turn_time = 25;
backward_movement_time = 43;
hsp_start = 0;
vsp_start = 0;
grabbedid = noone;
hbox = noone;
nspecial_has_hit = false;


//Sprites (the number in [brackets] is the state)
sprite[0] = sprite_get("nspecial_proj");             //Example sprites
sprite[1] = sprite_get("nspecial_proj");
sprite[2] = sprite_get("nspecial_proj");
sprite[3] = sprite_get("nspecial_proj");
sprite[4] = sprite_get("nspecial_proj");
sprite[5] = sprite_get("nspecial_proj");
sprite[6] = sprite_get("nspecial_proj");
sprite[7] = sprite_get("nspecial_proj");
sprite[8] = sprite_get("nspecial_proj");
sprite[9] = sprite_get("nspecial_proj");

anim_type[0] = 0;
anim_type[1] = 0;
anim_type[2] = 0;
anim_type[3] = 0;
anim_type[4] = 0;
anim_type[5] = 0;
anim_type[6] = 0;
anim_type[7] = 0;
anim_type[8] = 0;
anim_type[9] = 0;