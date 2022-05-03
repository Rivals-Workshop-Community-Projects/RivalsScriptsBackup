sprite_index = sprite_get("dspecial_time_rift");

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

if(player_id.alt != 0){
    sprite_index = sprite_get("dspecial_time_rift_alts");
}

state = 0;
timer = 0;
anim = 0;
instant = false;
hitbox = noone;
lasersound = noone;
UnReflectable = true;
runeL = player_id.runeL;

if(runeL){
    instant = true;
}

spr_dir = player_id.spr_dir;