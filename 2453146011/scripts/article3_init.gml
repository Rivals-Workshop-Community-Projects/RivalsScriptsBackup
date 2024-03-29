//article3_init

sprite_index = asset_get("nspecial_proj");
max_despawn_timer = 35;
despawn_timer = max_despawn_timer;
parried = -1;
knife_white = 0;

spr_dir = player_id.spr_dir;
release_box = noone;

init = true;
can_be_grounded = true;
ignores_walls = true;
uses_shader = true;
did_hitbox = false;
other_grounded = false;
should_destroy = false;


x = floor(x);
y = floor(y);


gravity_speed = .65;
grounded = false;
clock_timer = 0;
teleport_time = 120;
early_trigger = false;
stuck_player = noone;
stuck_platform = noone;
shake_timer = 0;
prev_angle = 0;
platbelow = false;
fspec_trigger = false;

xoff = 0;
yoff = 0;

vsp_prev = 0;
hsp_prev = 0;

with(player_id){
    
    move_cooldown[AT_DSPECIAL] = 120;
}

// Afterimage stuff
var i = 0;
repeat(400)
{
    afterimage_array[i] = -1;
    i++;
}

arrayindex = 0;
array_cleared = true;

char_height = 100;

dspec2 = false;

// Portal stuff
player_id.fspecial_obj = self;
charged = false;


in_portal = false;
teleported = false;
last_pcolor = 0;
portal_timer = 2;
portal_cooldown = 0;
portal_afterimage = {x:x,y:y,sprite_index:sprite_index,image_index:image_index,timer:0};
portal_afterimage = {x:x,y:y,sprite_index:sprite_index,image_index:image_index,timer:0};
portal_delay = 0;
max_portal_delay = 15;

// Portal line stuff
port1x = 0;
port1y = 0;
port2x = 0;
port2y = 0;
port1  = 0;
port2  = 0;
portal_speed = 0;
denom  = 0;
line_A = 0;
line_B = 0;
line_C = 0;

// article id + 10
article_trailid = 13;

with(player_id) {
    fspec_charged = false;
    portaltrails[other.article_trailid] = {x:x,y:y,vsp:0,hsp:0,lifetime:0,right:true,up:true};
}

old_hsp = 0;
old_vsp = 0;
