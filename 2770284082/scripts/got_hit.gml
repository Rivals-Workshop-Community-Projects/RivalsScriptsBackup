//

if enemy_hitboxID.kb_scale <= .7 and abs(old_hsp) < 9 and abs(old_vsp) < 9{
    if enemy_hitboxID.damage > 1 {
    hurt = 1
    user_event(1)
    }
} else {
    hurt = 2
    user_event(1)
}


if (side == -1 && hit_player_obj.x < x) or (side == 1 && hit_player_obj.x > x) {
    b1 = hit_fx_create( sprite_get( "block" ), floor(min(max(18, hitstop),36)));
    h3x = spawn_hit_fx(floor(enemy_hitboxID.x + x)/2,floor(enemy_hitboxID.y + y - 50)/2,b1)
    h3x.depth = -10
    sound_play(sound_get("parried"),false,noone,max( 0.6, enemy_hitboxID.damage/6),max( 0.8, 2 - (hitstop*hitstop/150)))
    
    damageminigate += enemy_hitboxID.damage 
   
}

if (side == 1 && hit_player_obj.x < x) or (side == 1 && hit_player_obj.x > x) {
    damageminigate -= enemy_hitboxID.damage 
    
}

if (side == 1 && hit_player_obj.x < x) or (side == -1 && hit_player_obj.x > x) {
if hit_player_obj.hatstate == player*player or hit_player_obj.hatstate == 2*player*player {
    hit_player_obj.hatstate = 0
    
    sound_play(asset_get("sfx_forsburn_cape_hit"),false,noone,1,1.2)
    h3x = spawn_hit_fx(floor(hit_player_obj.x), floor(hit_player_obj.y - hit_player_obj.char_height-10), h3)
    h3x.depth = -6
    create_hitbox(AT_NSPECIAL,3,floor(hit_player_obj.x), floor(hit_player_obj.y - hit_player_obj.char_height-10))
}
}