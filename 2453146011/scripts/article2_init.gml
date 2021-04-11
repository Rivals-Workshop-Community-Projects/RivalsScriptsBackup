//article2_init

sprite_index = asset_get("nspecial_proj");
max_despawn_timer = 35;
despawn_timer = max_despawn_timer;
parried = -1;

spr_dir = player_id.spr_dir;
release_box = noone;

init = true;
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

depth = -10;

x = floor(x);
y = floor(y);

move_speed = 15;

hsp = move_speed * spr_dir;
vsp = 0;

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

// Portal stuff
player_id.fspecial_obj = self;

in_portal = false;
teleported = false;
last_pcolor = 0;
portal_timer = 2;
portal_cooldown = 0;
portal_afterimage = {x:x,y:y,sprite_index:sprite_index,image_index:image_index,timer:0};
