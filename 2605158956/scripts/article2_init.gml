//Sprite and direction
sprite_index = sprite_get("portal");   //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
image_xscale = 0;
image_yscale = 0;
spr_dir = 1;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                      //The point in time during that state the article should start in. (0 = beginning)
hsp = 0;                                    //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                              //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

transport_id = -1;
transport_bomb = false;
transporting = true;

//Limit on number of articles
exist_timer = 0;
var total_articles = 0;                             //This gets incremented whenever a new article is created.
var max_articles = 2;                               //The maximum number of this article that should exist at once.
var oldest = -1;                                    //Records the oldest article found's exist_timer. -1 means nothing found yet
var oldest_obj = noone;                             //Records the oldest article found's ID.

with(asset_get("obj_article2")){ //Change articleX to article1 or etc
    if (player_id == other.player_id){
        total_articles++;
        image_index = total_articles;
        if (oldest == -1 || exist_timer > oldest){
            oldest = exist_timer;
            oldest_obj = id;
        }
    }
    
    if (total_articles > max_articles && oldest_obj == id){
        state = 3; state_timer = 0;
    }
}
