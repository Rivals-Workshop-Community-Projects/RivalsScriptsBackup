//Cobweb that traps you. Template by Muno

//Sprite and directio
sprite_index = sprite_get("icecloneshatter");          //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
mask_index = sprite_get("iceclonemask");          //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
exist_timer = 0;
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
hits = 2;

//SuperSonicNK Hitbox Detection cuz im dumb lmao - mcducky
//article init
hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew

hitstun = 0;
hitstun_full = 0;
hit_lockout = 0;
lock_state = false;

//Limit articles
var total_articles = 0;
var max_articles = 1;
var oldest = -1;
var oldest_obj = noone;

// with(asset_get("obj_article1")){
//     if (player_id == other.player_id){
//         total_articles++;
//         if (oldest == -1 || exist_timer > oldest){
//             oldest = exist_timer;
//             oldest_obj = id;
//         }
//     }
// }

// if (total_articles > max_articles){
//     total_articles--;
//     oldest_obj.state = 3;
//     oldest_obj.state_timer = 0;
// }