sprite_index = sprite_get("dspecial_time_rift");
laser_sprite = sprite_get("dspecial_time_rift_laser");

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

if(player_id.alt != 0){
    sprite_index = sprite_get("dspecial_time_rift_alts");
    laser_sprite = sprite_get("dspecial_time_rift_laser_alts");
}

state = 0;
timer = 0;
anim = 0;
instant = false;
hitbox = noone;
lasersound = noone;
laser_sfx = sound_get("laser");
laserboom_sfx = sound_get("laserboom");
laserboom2_sfx = sound_get("laserboom2");

UnReflectable = true;
Pocketable = true;Pocket_hsp = 0;Pocket_vsp = 0;Pocketed = false;waspocketed = false;PocketBuff = 0;
Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 5;

runeA = player_id.runeA;
runeL = player_id.runeL;

if(runeL){
    instant = true;
}

spr_dir = player_id.spr_dir;