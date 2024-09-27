//Uspecial platform

sprite_index = sprite_get("uspecial_w");
mask_index = sprite_get("uspecial_w_mask");
depth = -20;
image_index = 0;
image_xscale = 2;
image_yscale = 2;
uses_shader = true;

state = 0;
state_timer = 0;
hitstop = 0;

can_be_grounded = false;
ignores_walls = true;
destroyed = false;

from_ground = false;
x_rising = x;
y_rising = y; 
rising_spd = 40;
was_parried = false;
falling_timer = 0;
play_sound = false;
play_sound_timer = 0;
hittable_init();

#define hittable_init()
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
flinch_time = 0;
 
hit_lockout = 0;
can_hit = array_create(5, true);
percent = 50;
hitpoints_max = 0;

old_hsp = 0;
old_vsp = 0;
 
article_should_lockout = true; //set to false if you don't want hit lockout.
super_armor = false;
soft_armor = 0;
enemy_hitboxID = noone;
hitpoints = 0;
was_parried = false;
invincible = 0;
invince_type = 0;