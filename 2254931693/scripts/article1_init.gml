//article1_init

init = 0;
sprite_index = sprite_get("uspecialfrogfall");
mask_index = sprite_get("uspecialfrogmask");
image_speed = .25;
depth = -10;
frog_lifetime = 0;
landed = 0;


frogspikebounce = 0

frogbouncea = 0;


fbsprite = sprite_get("uspecialfrogbounce");

hitbox_created = 0;

sprite_change_offset("uspecialfrogidle", 32, 43);
sprite_change_offset("uspecialfrogbounce", 32, 43);
sprite_change_offset("uspecialfrogfall", 32, 43);
sprite_change_offset("uspecialfrogmask", 32, 43);

frog_hitbox = create_hitbox(AT_USPECIAL, 1, x, y)

image_xscale = player_id.spr_dir;

vsp = 1;

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

spikecoordx = -9999;
spikecoordy = -9999;

dstrong_sfx_bounce = 0;
dstrong_sfx_timer = 0;
dstrong_bounce = 0;

