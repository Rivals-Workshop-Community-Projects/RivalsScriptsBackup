//article1_init

sprite_index = sprite_get("doll")
mask_index = sprite_get("doll_hurt")

state = PS_IDLE
state_timer = 0

can_be_grounded = true;
ignores_walls = false;
uses_shader = false;

destroy = false

//super's hitbox code
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
percentage = 100;

hit_lockout = 0;

article_should_lockout = true; //set to false if you don't want hit lockout.

prev_attack = undefined;

shine_hit = false

hit_counter = 0

shinebox = undefined

prev_vsp = 0

recent_player = undefined
last_hit = undefined