//article1_init - runs once, when the article is created

//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = false;                                        //Whether the article is in the air or not.
hit_wall = false; 
 
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

//Sprite and direction

switch (get_player_color(player))
{
case 20: 
sprite_index = sprite_get("mugmoment");
boomsprite = sprite_get("mugmoment");
uses_shader = false;
break;

case 17: 
sprite_index = sprite_get("transjar");
boomsprite = sprite_get("transjar");
uses_shader = true;  
break;

case 22: 
sprite_index = sprite_get("peanutbutter");
boomsprite = sprite_get("peanutbutter");
uses_shader = false;
break;

case 21: 
sprite_index = sprite_get("cola");
boomsprite = sprite_get("cola");
uses_shader = false;
break;

default:
sprite_index = sprite_get("jaridle");
boomsprite = sprite_get("jaridle");
uses_shader = true;  
break;

}



    //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
article_anim_speed = 0.1;                               //Whether or not the article is recolored according to the character's color.gml and costume.

mask_index = sprite_get("jarhurt");
lifetime = 0;

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 5*spr_dir;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = -5;
can_hit = 0;                                            //The vertical speed of the article.
jar_health = 10;
thar_he_blows = 0;
boomtimer = 0;
should_die = false;
this_jar = 0;
manual_boom = 0;
grounded = 0;
plungerboom = false;






