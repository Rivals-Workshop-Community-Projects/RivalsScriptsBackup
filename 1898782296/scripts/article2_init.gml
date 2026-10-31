//Autobomb
player_id = 0;

idle_sprite = sprite_get("autobomb_idle")
idleb_sprite = sprite_get("autobomb_idleb")
destroy_sprite = sprite_get("autobomb_destroyed")

sprite_index = idle_sprite;
mask_index = sprite_get("autobomb_coll");
image_xscale = 0.1;
image_yscale = 0.1;
image_index = 1;
depth = -1;
sprite_direction_modifier = 1;

autobomb_overlay = sprite_get("autobomb_idle_overlay")

state = 0;
state_timer = 0;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
free = true;
cvsp = 0;
chsp = 0;

auto_shoot_time = 600;
major_shot = 1;

platform_modifier = 28*2
platform_height = y;
my_platform = noone;
carpet_lock = noone;

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