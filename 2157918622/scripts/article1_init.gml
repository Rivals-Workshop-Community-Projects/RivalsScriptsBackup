//article1_init

size = 10;
sizelimit = 128;
player_id.singleton_field = self;

//Sprite and direction
sprite_index = sprite_get("field");
if (get_player_color(player_id.player) == 15) sprite_index = sprite_get("field_trans");

image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
image_alpha = 0;
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;

//The vertical speed of the article.

//Terrain behavior
can_be_grounded = false;                             //Determines if the article follows platforms when free == false.
ignores_walls = true;                              //Determines if the article goes through walls.
free = true;                                       //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//Limit on number of articles
replacedcount = 0;                                  //This gets incremented whenever a new article is created. If this reaches maxarticles, the article is destroyed
maxarticles = 1;                                    //The maximum number of this article that should exist at once.

with (asset_get("obj_article1")) if (player_id == other.player_id){
	++replacedcount;                            //If there are any other article1s owned by the same person, tell them to increment their replacedcount by 1
}

//Cure depression
shoulddie = false;                                  //If this is set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something
