// article1_update

life_timer --;

with asset_get("plasma_field_obj"){//Clairen
    if place_meeting(get_instance_x(self),get_instance_y(self),other){//If touching plasma field
        if get_player_team(get_instance_player(self)) != get_player_team(other.player){//If not on same team
            other.life_timer = 0;
        }
    }
}

// Check if still on ground
if free{
    if (position_meeting(x,y,asset_get("par_jumpthrough"))){
        y -= floor(vsp); //should push it up faster than it can fall.
        vsp = 0; //Horizontal platforms need this for some reason.
    }
    else vsp = min(vsp + 0.7, 15); //"else" reduces jitter on Aether Merchant Port.
}

if life_timer <= 0{
    instance_destroy();
    exit;
}
else if cooldown player_id.move_cooldown[AT_DTHROW] = 150;

with (oPlayer){
    var hurt = false;
    if self != other.player_id && !free{
        if (get_player_team(player) != get_player_team(other.player_id.player) || get_match_setting(SET_TEAMATTACK) == 1)//Check Teams
            if place_meeting(x,y,other) && !place_meeting(x,y-8,other){//If overlapping at the bottom.
                if !invincible && grov_emeratimer == 0 && clone == false && state_cat != SC_HITSTUN{//If can take damage
                    if state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD && state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD{//Help how do I shorten this?
                        grov_emerashard = true;
                        if hsp != 0 || grov_emera_land == 1{
                            grov_emeratimer = 30;
                            grov_emera_land = 2; //Only damage once per landing.
                            hurt = true;
                            take_damage(player,other.player_id.player,1);
                        }
                        if hurt sound_play(asset_get("sfx_blow_weak1"),false,false,0.75);
                    }
                }
            }
    }
}
