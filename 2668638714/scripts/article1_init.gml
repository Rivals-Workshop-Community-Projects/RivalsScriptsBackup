elec_anim_frames = 24;
nspec_anim_frames = 20;
death_anim_frames = 20;
spawn_anim_frames = 18;
should_change_anim = false;
sprite_index = sprite_get("voltorb_forward");
mask_index = sprite_get("voltorb_idle");
depth = player_id.depth -1;
state = PS_WALK;
state_timer = 0;
lock_state = false;

inactive_timer = 0;
inactive_timer_max = 300;

ignores_walls = false;

hitbox = noone;

electrify_hitbox = noone;
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
hitstop = 0; 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;
 
hit_lockout = 0;
 
article_should_lockout = true; //set to false if you don't want hit lockout.