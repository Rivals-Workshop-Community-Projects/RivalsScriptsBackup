//Ice Wall
state = 0;
state_timer = 0;
window = 1;
window_timer = 0;

sprite_index = asset_get("empty_sprite");
image_index = 0;
image_xscale = 2;
image_yscale = 2;
mask_index = asset_get("empty_sprite");

hittable_init();

//can_be_grounded = true;
//ignores_walls = false;
stamina_max = 24; //The amount of damage the wall can take before being destroyed.
stamina_threshold = 10; //The amount of damage the wall can take before cracking visually.
destroyed = false;
despawn_time = 240;

despawn_timer = 0;
stamina = stamina_max;

//Wallsplat specific
tomoko_wall = true;
wallsplat_id = noone;
wallsplat_kb_threshold = 10; //The knockback speed a player has to exceed to wallsplat
wallsplat_time = 0;
wallsplat_min_time = 15;  //The minimum amount of time the target is wallsplat for.
wallsplat_max_time = 45;  //The maximum amount of time the target is wallsplat for.
wallsplat_speed = 0;
wallsplat_dir = 1;
wallsplat_xoff = 0;
wallsplat_yoff = 0;
wallsplat_player = 1;

//For fractional hspeed values. Without these anyone on top of the wall has the possibility of slipping off.
hsp_frac = 0;
vsp_frac = 0;

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