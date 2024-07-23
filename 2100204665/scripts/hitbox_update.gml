//ass fuck shit fart

if (attack == AT_FSPECIAL){
    if (!destroyed){
        player_id.move_cooldown[AT_FSPECIAL] = 2;
    }
    var trap = player_id.bone_trap;
    if (!free){
        destroyed = true;
    }
    if (destroyed){
        sound_play(asset_get("sfx_clairen_hit_weak"));
    }
    if (instance_exists(trap) && place_meeting(x, y, trap)){
        if (!bounced){
            sound_play(asset_get("sfx_shovel_hit_light1"));
            vsp = -2;
            
            spawn_hit_fx( x, y, 301 );
            bounced = true;
        }
    }
}