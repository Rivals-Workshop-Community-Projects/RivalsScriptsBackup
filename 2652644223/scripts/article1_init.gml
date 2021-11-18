//Afterimage buddy. Template by Muno

//Sprite and directio
sprite_index = sprite_get("dspecial_ball");          //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
image_alpha = 1;
spr_dir = player_id.spr_dir;
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.
bullets_held = 0;
bullet_shot = 0;
closestDist = 0;
closestPlayer = 0;
for (i = 0; i < 3; i++)
    bullets[i] = {rot : 120*i, alpha: 0, enhanced : false};

//State
idle_timer = 0;
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 8*spr_dir;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
 
disappear_fx = hit_fx_create(sprite_get("dspecial_gone"), 12);
cursor_fx = hit_fx_create(sprite_get("dspec_cursor"), 30);
explode_fx = hit_fx_create(sprite_get("dspecial_ball_explode"), 12);

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