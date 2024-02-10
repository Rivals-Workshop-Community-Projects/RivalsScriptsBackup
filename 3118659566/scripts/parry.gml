//parry - called when you parry any hitbox

if letter1ID != hit_player_obj.id {
    letter1ID.hsp = 15;
    letter1ID.hitbox_timer = 0;
}
if letter2ID != hit_player_obj.id {
    letter2ID.hsp = 15;
    letter2ID.hitbox_timer = 0;
}
if letter3ID != hit_player_obj.id {
    letter3ID.hsp = 15;
    letter3ID.hitbox_timer = 0;
}

if airletter1ID != hit_player_obj.id {
    airletter1ID.hsp = 10;
    airletter1ID.vsp = 14;
    airletter1ID.hitbox_timer = 0;
} 
if airletter2ID != hit_player_obj.id {
    airletter2ID.hsp = 10;
    airletter2ID.vsp = 14;
    airletter2ID.hitbox_timer = 0;
} 
if airletter3ID != hit_player_obj.id {
    airletter3ID.hsp = 10;
    airletter3ID.vsp = 14;
    airletter3ID.hitbox_timer = 0;
} 