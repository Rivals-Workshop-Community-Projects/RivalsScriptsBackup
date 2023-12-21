#region // Sprites
spr_bubble_idle = sprite_get("bubble");
spr_bubble_spawn = sprite_get("bubble_init");
spr_bubble_recall = sprite_get("bubble_recall");
spr_bubble_pop = sprite_get("bubble_pop");
spr_bubble_pull = sprite_get("bubble_pull");
spr_bubble_whirlstart = sprite_get("bubble_whirlstart");
spr_bubble_whirl = sprite_get("bubble_whirl");
spr_bubble_whirlend = sprite_get("bubble_whirlend");

spr_bubble_mask = sprite_get("bubble_mask");
#endregion

#region // Animation 
sprite_index = spr_bubble_spawn;
mask_index = spr_bubble_mask;
image_index = 0;
#endregion

#region // Sounds
sfx_bbl_land = asset_get("sfx_frog_gong_hit");
#endregion

#region // States
state = 0;
state_timer = 0;
#endregion

#region // Article Variables
uses_shader = true;
spr_dir = 1;
can_be_grounded = false;
ignores_walls = false;
hit_wall = true;
hitstop = 0;
free = true;

getting_bashed = false;
unbashable = 0;

hsp = 0;
old_hsp = 0;
vsp = 0;
old_vsp = 0;

bubble_fric = .1;

hitstun = 0;
damage = 0;
knockback_adj = 1;
orig_knock = 0;

player_id = id;
#endregion

#region // Custom Variables
just_landed = false;
sound_played = false;
is_wren_yoyo = true;

player_attack = AT_JAB;
player_hitbox = 1;

wren_recall_spd = 15;
yoyo_charge_lvl = 0;

whirlspool_cool = 60;
whirlspool_cool_max = 60;

riptide_stacks_opp = 0;

hbox = noone;
#endregion