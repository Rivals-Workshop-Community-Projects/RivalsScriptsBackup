/*
Wisp that travels back to Roekoko
*/

current_article1_ID = self;

//Article Visual Section
sprite_index = sprite_get("wisp_start");//
mask_index = sprite_get("wisp_idle"); //
depth = -3;
image_blend = c_white;
image_alpha = .75;
image_index = 0;
image_xscale = 1;
image_yscale = 1;

// Movement Variables
wisp_speed = 10;

// State Control
state = 0;
state_timer = 0;
window = 0;
window_timer = 0;
hitpause = false; //in hitpause or not
hitstop = 0; //The number of frames remaining until hitpause ends
hitstop_full = 0; //The number of frames this instance of hitpause lasts total
article_total_timer = 0;

// Other Variables
unbashable = 1;
was_parried = false;
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
draw_debug_hud = false;

// Set Sprites to Variables
spawn_sprite = sprite_get("wisp_start");
idle_sprite = sprite_get("wisp_idle");
idle_flourish_sprite = sprite_get("wisp_idle");
travel_sprite = sprite_get("wisp_travel");
disperse_sprite = sprite_get("wisp_disperse");

// Attack Variables
/*

*/
/*
///SUPERSONIC Hit Detection
 
///      article[index]_init.gml
//You may put this code anywhere in your article init.
 
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
*/

