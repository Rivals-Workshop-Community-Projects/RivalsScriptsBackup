//article1_init 
sprite_index = sprite_get("grass_sprout");
mask_index = sprite_get("grass_hurtbox");
state_timer = 0;

state = 0;
toss_direction = 1;

item = 0;

initialx = x;

hitplayer = 0;

isgrass = true;
timer_freeze = 0;

grasspluck = hit_fx_create(sprite_get("subcon_effect"), 10);

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