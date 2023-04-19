//sprite_index = sprite_get("tambo")
mask_index = sprite_get("tambo_mask")

fall_timer = 60;

fall_speed = 1;
max_fall_speed = 10;

ignores_walls = false;

note_storage = [-1,-1,-1,-1];
cooldown_timer = 36;
max_cooldown_time = 60;

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
 
article_should_lockout = false; //set to false if you don't want hit lockout.

draw_xscale = 0.6;
draw_yscale = 1.4;
should_die = false;

explode_timer = 0;
max_explode_timer = 7;
///     article[index]_update.gml
 
//Put this code at the bottom of the file.