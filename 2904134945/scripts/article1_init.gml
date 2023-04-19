sprite_index = sprite_get("crystalSpawn");
mask_index = sprite_get("crystal");
image_index = 0;
spr_dir = 1;
uses_shader = true;
image_xscale = 2;
image_yscale = 2;

state = 0;
newState = 0;
state_timer = 0;
animSpeed = 4;

can_be_grounded = false;
ignores_walls = false;

startupTime = 24;
idleTime = 130;
dieTime = 0;

orighsp = player_id.spr_dir * 8;
lockout = 0;
noelleFrostbite = 0;
with (player_id) if (has_rune("E")) other.noelleFrostbite = frostbiteMax;
breakAngle = 90;
breakForce = 2;

sound_play(asset_get("sfx_ice_uspecial_jump"));
sound_play(sound_get("snd_stardrop"));

Pocket_hsp = 0;
Pocket_vsp = 0;
Pocket_hud = -1;
Pocket_hud_imageindex = 6;