state = 0;
state_timer = 0;
lock_state = 0;

sprite_index = sprite_get("dspecial_laser");
spr_dir = player_id.spr_dir
anim_start_speed = 0.12;
anim_active_speed = 0.5;
anim_end_speed = 0.4;

anim_speed = [anim_start_speed, anim_active_speed, anim_end_speed];
sounds = [sound_get("gleam"), asset_get("sfx_ori_energyhit_heavy"), asset_get("sfx_abyss_despawn")];
triggers = [6, 13, 17]

player_id.dspecial_laser = self;