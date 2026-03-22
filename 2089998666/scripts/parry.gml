// parry.gml

if (enemy_hitboxID.player_id == id && enemy_hitboxID.attack == AT_DSPECIAL) {
    var grabbed_type = enemy_hitboxID.cookie_id;
    
    if (cookie_inventory[grabbed_type] == -1) {
        cookie_inventory[grabbed_type] = grabbed_type;
        lastCookieGained = grabbed_type;
        cookieGet = 20;
        sound_play(sound_get("smrpg_item"));
    }
    enemy_hitboxID.destroyed = true;
} 


else if (cookieMeter < 3) {
    for (var i = 0; i < 3; i++) {
        if (cookie_inventory[i] == -1) {
            cookie_inventory[i] = i; 
            lastCookieGained = i;
            cookieGet = 20;
            sound_play(sound_get("smrpg_item"));
            break; 
        }
    }
}