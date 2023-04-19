//Sprite and direction
sprite_index = sprite_get("gem");   //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
mask_index = sprite_get("gem_hurtbox")
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                      //The point in time during that state the article should start in. (0 = beginning)
image_timer = 0;
lock_state = false;
hsp = 0;                                    //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                              //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

fx_powerup = hit_fx_create(sprite_get("gem_powerup"), 12);
var checkAnzens = false;
with(oPlayer)
{
    if(id != other.player_id && url == other.player_id.url)
    checkAnzens = true;
}

col = get_player_color(player_id.player);
slot = 4
light_color = (!checkAnzens?make_color_rgb(get_color_profile_slot_r(col,slot),get_color_profile_slot_g(col,slot),get_color_profile_slot_b(col,slot)):get_player_hud_color(player_id.player))

//make hbox_group array (the old version was really bad because the array actually affected all players no matter what lol)
hbox_group = array_create(4,0);
var i1 = 0;
var i2 = 0;
repeat(4) {
    hbox_group[@i1] = array_create(50,0);
    repeat(50) {
        hbox_group[@i1][@i2] = array_create(10,0);
        i2++;
    }
    i2 = 0;
    i1++;
}
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;
 
hit_lockout = 0;
 
article_should_lockout = true; //set to false if you don't want hit lockout.