// article_init is used when the article object is created.
// Phantom half

//article1_init - runs once, when the article is created

//Sprite and direction
sprite_index = sprite_get("phantom_idle");               //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//State buffering (for if the article is busy when you send it a state command) (not actually implemented in this case)
bufferedstate = 0;                                  //The state fed to the article by the player. Set this in your character's code, and the article will set itself to the requested state as long as it's available within 20 frames of the input
buffertimer = 0;                                    //The current amount of frames remaining in the buffer window. When this reaches zero, the article will throw away the buffered state request.

sprite_index = sprite_get("null");

//Trail management
trail_coords = ds_grid_create(2, 10);               //0 is x-position, 1 is y-position
for (i = 0; i < 7; i++) {
    ds_grid_set(trail_coords, 0, i, 2*(floor(x/2)));//Rounds to Rivals pixels
    ds_grid_set(trail_coords, 1, i, 2*(floor(y/2)));//Rounds to Rivals pixels
}

//Set target to follow.
following = get_instance_player(player_id);
throw_dir = 0;

//For set_attack. Prevents repeatedly landing and hopping to the phantom, which's just an odd interaction
used_for_fly = false;

//Sets base color for the phantom.
//Darker colors will have a more noticable gradient when idle, but may look worse during movement.
switch (get_player_color(player)) {
    case 0:  phantom_color = make_colour_rgb(190, 190, 195); break;
    case 1:  phantom_color = make_colour_rgb(255, 149, 213); break;
    case 2:  phantom_color = make_colour_rgb(255, 149, 213); break;
    case 3:  phantom_color = make_colour_rgb(90, 123, 255); break;
    case 4:  phantom_color = make_colour_rgb(148, 123, 231); break;
    case 5:  phantom_color = make_colour_rgb(139, 0, 180); break;
    case 6:  phantom_color = make_colour_rgb(238,  210, 197); break;
    case 7:  phantom_color = make_colour_rgb(170,  80,  80); break;
    case 8: phantom_color = make_colour_rgb(255,  255,  50); break;
    case 9:  phantom_color = make_colour_rgb(255, 234, 173); break;
    case 10:  phantom_color = make_colour_rgb(147, 112, 219); break;
    case 11: phantom_color = make_colour_rgb(191, 242, 255); break;
    case 12: phantom_color = make_colour_rgb(42,  87,  176); break;
    case 13: phantom_color = make_colour_rgb(78, 67, 133); break;
    case 14: phantom_color = make_colour_rgb(78, 67, 133); break;
    case 15: phantom_color = make_colour_rgb(197, 103, 123) break;
    case 16: phantom_color = make_colour_rgb(171, 76, 74); break;
    case 17: phantom_color = make_colour_rgb(221, 187, 174) break;
    case 18: phantom_color = make_colour_rgb(0, 255, 98); break;
    case 19: phantom_color = make_colour_rgb(64, 112, 140); break;
    case 20: phantom_color = make_colour_rgb(48, 48, 48) break;
    case 21: phantom_color = make_colour_rgb(217, 92, 131); break;
    case 22: phantom_color = make_colour_rgb(116, 179, 89); break;
    case 23: phantom_color = make_colour_rgb(168, 72, 34); break;
    case 24: phantom_color = make_colour_rgb(89, 183, 186); break;
    case 25: phantom_color = make_colour_rgb(190, 190, 195); break;
    case 26: phantom_color = make_colour_rgb(120, 54, 80); break;
    case 27: phantom_color = make_colour_rgb(79, 56, 98); break;
    case 28: phantom_color = make_colour_rgb(255, 91, 54); break;
    case 29: phantom_color = make_colour_rgb(228, 107, 75); break;
    case 30: phantom_color = make_colour_rgb(198, 82, 82); break;
    case 31: phantom_color = make_colour_rgb(186, 0, 0); break;
    default: phantom_color = make_colour_rgb(194, 194, 194); break;
}