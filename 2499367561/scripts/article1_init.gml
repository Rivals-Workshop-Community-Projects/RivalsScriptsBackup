//blackhole thingy

//Sprite and direction
sprite_index = sprite_get("blackhole_inactive");          
mask_index = sprite_get("blackhole_inactive");
image_index = 0;                               
spr_dir = player_id.spr_dir;
uses_shader = true;       
depth = 15;
state = 0
state_timer = 0
movement = "thinning"
looptimer = 0
looptimermax = 360
glowmodifier = 1;
glowmodifierdir = 1
image_yscale = 0

can_be_grounded = false

colorvar = make_color_rgb(get_color_profile_slot_r(get_player_color(player), 4), get_color_profile_slot_g(get_player_color(player), 4), get_color_profile_slot_b(get_player_color(player), 4))

//Other vars

orbit_x = x
orbit_y = y
orbit_dir = 0
gotHit_timer = 0
detonate = false
blackhole_hits = 0

windbox_timer = 20

vfx_space_small = hit_fx_create( sprite_get("space_fx"), 20)
vfx_space_extra_small = hit_fx_create( sprite_get("space_extra_small"), 16)
vfx_star_trail = hit_fx_create( sprite_get("star_fx"), 20)

sound_play(asset_get("sfx_clairen_nspecial_grab_success"))