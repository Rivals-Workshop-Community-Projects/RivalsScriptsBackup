//article1_init
index = player_id.articleIndex++;
var maxArticles = 1;
var numOfArticles = 0
with(obj_article1) numOfArticles++;
if (numOfArticles > maxArticles) with(obj_article1) if (player_id == other.player_id && index <= other.index-maxArticles && numOfArticles > maxArticles)
{
    --numOfArticles;
    image_index = 16+level*3;
    frame_update = 0;
    state = 5;
};

init = 0;
sprite_index = sprite_get("bubble");
state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;
uses_shader = true;

frame_update = 0;
level = 2;
bubble_size = 0;
bubble_timer = 0;
idle_frame = 0;

hsp = 3*player_id.spr_dir;
vsp = 5;
prev_vsp = 0;
prev_hsp = 0;

hitbox = noone;
bubble_hitbox = noone;
bubble_hitbox_out = 0;
prevhitbox = noone;
prevattack = noone;
prevgroup = noone;
hit_stun = 1;
bubble_hitbyopponent = 0;
prev_bubbleid = 0;
bubble_has_hit = 0;

bubble_growing = 0;
grow_frame = 0;

bubble_hitbydspecial = 0;

hit_adjuster = 2.4;
hit_timer = 60;

bubblepop1 = hit_fx_create(sprite_get("bubblepop1"), 12);
bubblepop2 = hit_fx_create(sprite_get("bubblepop2"), 12);
bubblepop3 = hit_fx_create(sprite_get("bubblepop3"), 12);

bubble_explosion1 = hit_fx_create(sprite_get("bubble_explosion1"), 30);
bubble_explosion2 = hit_fx_create(sprite_get("bubble_explosion2"), 30);
bubble_explosion3 = hit_fx_create(sprite_get("bubble_explosion3"), 30);

