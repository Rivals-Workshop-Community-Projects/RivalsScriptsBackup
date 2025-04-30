//base
orig_player = player; // thank you ori :/
ptooie_spr = sprite_get("ptooie");
ptooie_mask = sprite_get("ptooie_mask");
is_spider_ptooie = true;

hsp = 0;
vsp = 0;
spr_dir = 1;
free = 1;
uses_shader = false;
sprite_index = asset_get("null");
mask_index = sprite_get("ptooie_mask");
image_index = 1;

ignores_walls = true;
can_be_grounded = false;

state = 0;
state_timer = 0;
idle_timer = 0;
idle_threshold = 2; // despawns hitbox and starts despawn timer
idle_despawn_time = 30 + player_id.hittable_ptooie_rune * 90;
parried_despawn_time = 75; // takes longer if parried
destroyed = false;
unbashable = false;
bashed = false;

hitbox = noone;
hitbox_min_speed = 2;
was_reflected = false;
reflect_owner = noone;
can_hit = array_create(20, true);
can_hit_ptooies = array_create(20, true);
can_hit_ptooies[player] = false;
hitbox_cooldown = 2; // To allow the hitbox to be disabled briefly when hit, as well as reduce initial activeness
armor = 8 * !player_id.hittable_ptooie_rune; // Resistance to being knocked away, based on damage delt

draw_angle = 0;
rot_speed = 0;


// Supersonic collision template below \/
 
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
 
hit_lockout = 20;
 
article_should_lockout = true; //set to false if you don't want hit lockout.

// Rune Code
last_bounce_speed = 0;
consecutive_bounce_count = 0;
 
if(player_id.ptooie_parry_rune){
    is_hittable = true;
    hittable_hitpause_mult = 0
}