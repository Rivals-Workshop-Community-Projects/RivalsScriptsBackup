//article1_init

mask_index = sprite_get("doll");

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

sided = 1;

idle_spd = 0.05;


state = 0;
// -1 = spawning
// 0 = dile
// 1 = leaving
// 2 = got hit
// 3 = hit and waiting to leave
// 4 = hit by uspecial and waiting to explode

old_state = state;
cant_be_hit = 0;

state_time = 0;
step = 0;

scale = 1;

size = 1 + has_rune("L") * 1;

destroyed = false;


switch (player)
{
    case 1:
        col = $241ced
    break;
    case 2:
        col = $efb700
    break;
    case 3:
        col = $b1a3ff
    break;
    case 4:
        col = $1de6a8
    break;
}


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