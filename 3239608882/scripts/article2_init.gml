

if (player_id.item == 1)
{
sprite_index = sprite_get("ironball");
mask_index = sprite_get("ironball");

article_xscale = 1;
article_yscale = 1;

ignores_walls = false;
free = false;
can_be_grounded = true;
fallSpeed = 10;
ironball_lifetime = 500;

grav = 0.7;
vsp = -5.9;
//hsp = 3;
}

if (player_id.item == 4)
{
sprite_index = sprite_get("leftovers");
mask_index = sprite_get("leftovers_coll");

article_xscale = 1;
article_yscale = 1;

ignores_walls = false;
free = false;
can_be_grounded = true;
//fallSpeed = 10;
//apple_lifetime = 200;
//player_id.apple_hit = false;
ready = false;

grav = 0.7;
vsp = -5.9;
//hsp = 3;
}

if (player_id.item == 6)
{

sprite_index = sprite_get("gem");
mask_index = sprite_get("gem");

ignores_walls = false;
free = true;
can_be_grounded = true;
gem_lifetime = 300;
//fallSpeed = 10;
draw_debug_text(x - 190, y-180, string(string(gem_lifetime)));
 
 blowup = false;

grav = 0.5;
grav_max = 20;
vsp = -10;
h_bounces = 0;
v_bounces = 9;
bounces = 0;
//hsp = 3;
}




