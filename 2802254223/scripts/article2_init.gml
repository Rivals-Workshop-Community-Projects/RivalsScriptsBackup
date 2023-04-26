//Darc Sharc takes my V-Card

//Sprite and direction
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = -player_id.spr_dir;                                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.
depth = -999;

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;
bounces = 5;                                      //The point in time during that state the article should start in. (0 = beginning)
vsp = -4;
gravitytimer = 0;
lifetime = 0;
//hsp = 0.5*player_id.spr_dir;

//Terrain behavior
can_be_grounded = false;                             //Determines if the article follows platforms when free == false.
ignores_walls = true;                              //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

heart_explosion = hit_fx_create( sprite_get( "explosion-heart" ), 30);
club_explosion = hit_fx_create( sprite_get( "explosion-club" ), 30);
spade_explosion = hit_fx_create( sprite_get( "explosion-spade" ), 18);
big_explosion = hit_fx_create( sprite_get( "explosion" ), 18 );
small_explosion = hit_fx_create( sprite_get( "explosion_small" ), 12 );
diceFX = hit_fx_create( sprite_get( "vfx-dice" ), 15);

cardChosen = 0;
cardPlayer = player_id.player;
cardValue = player_id.curSuit;

switch(cardValue)
{   //SDCH
    case 0: sprite_index = sprite_get("dice-spade"); break;
    case 1: sprite_index = sprite_get("dice-diamond"); break;
    case 2: sprite_index = sprite_get("dice-club"); break;
    case 3: sprite_index = sprite_get("dice-heart"); break;
}
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hit_timer = 0;
hbox_owner = -1;
oldvsp = 0;
oldhsp = 0;

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
