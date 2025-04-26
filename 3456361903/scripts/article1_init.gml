//in article#_init.gml

//sprite_index = sprite_get("a_qblock");//this is the sprite
//image_index = 6
collision_mask_index = sprite_get("a_qblock_hbox");

image_xscale = 1; //this is the horizontal scale
image_yscale = 1; //this is the vertical scale
image_alpha = 1; //this can alter the sprite alpha (transparency)
image_angle = 0; //this can alter the sprite angle (rotation)

init = 0;

state = 0;
state_timer = 0;
state_end = 0;
active_time = 0;

free = false;
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

//
owner = player;

qblock_inv_time = 300;
qblock_index = 0;

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