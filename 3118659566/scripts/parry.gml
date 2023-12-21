//parry - called when you parry any hitbox

if letterID != hit_player_obj.id {
    letterID.hsp = 15;
    letterID.hitbox_timer = 0;
}

if airletterID != hit_player_obj.id {
    airletterID.hsp = 10;
    airletterID.vsp = 14;
    airletterID.hitbox_timer = 0;
} 