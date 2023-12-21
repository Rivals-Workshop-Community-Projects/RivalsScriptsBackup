#region // Sprites
spr_wave = sprite_get("wave");
spr_wave_death = sprite_get("wave_death");
spr_wave_final = sprite_get("wave_final");

#endregion

#region // Animation 
sprite_index = spr_wave;
image_index = 0;
mask_index = sprite_get("wave_mask");
#endregion

#region // Sounds
sfx_bbl_land = asset_get("sfx_frog_gong_hit");
#endregion

#region // States
state = 0;
state_timer = 0;
#endregion

#region // Article Variables
orig_player_id = player_id;

uses_shader = true;
spr_dir = 1;
can_be_grounded = true;
ignores_walls = false;
hit_wall = true;
hitstop = 0;
free = false;

hsp = 0;
old_hsp = 0;
vsp = 0;
old_vsp = 0;

wave_proj_fric = .1;

hitstun = 0;
damage = 0;
knockback_adj = 1;
orig_knock = 0;
#endregion

#region // Custom Variables
sound_played = false;
wave_hitplayer = false;

hbox = noone;
#endregion