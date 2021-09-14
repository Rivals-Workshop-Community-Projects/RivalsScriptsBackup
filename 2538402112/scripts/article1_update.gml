// article1_update

life_timer --

with asset_get("plasma_field_obj"){
    if place_meeting(get_instance_x(self),get_instance_y(self),other) other.life_timer = 0
}

// Check if still on ground
if free{
    vsp = min(vsp + 0.7, 15)
    // life_timer = 0;
}
// print(string(vsp))
// Check if above ground
// else if position_meeting(x,y-1,asset_get("par_jumpthrough")) || position_meeting(x,y-1,asset_get("par_block")){
//     life_timer = 0;
// }

if life_timer <= 0{
    instance_destroy();
    exit;
}
else if cooldown player_id.move_cooldown[AT_DTHROW] = 150

with asset_get("pHurtBox"){
    var hurt = false
    if instance_exists(playerID) && playerID != other.player_id && !playerID.free && playerID.grov_emeratimer == 0{
        if (get_player_team(playerID.player) != get_player_team(other.player_id.player) || get_match_setting(SET_TEAMATTACK) == 1)
            if place_meeting(x,y,other){
                playerID.grov_emerashard = true
                if !playerID.invincible && playerID.grov_emeratimer == 0 && playerID.clone == false{
                    if playerID.hsp != 0{
                        playerID.grov_emeratimer = 30
                        hurt = true
                        take_damage(player,-1,1);
                    }
                }
                with other{
                    if hurt sound_play(asset_get("sfx_blow_weak1"),false,false,0.5)
                }
            }
    }
}
