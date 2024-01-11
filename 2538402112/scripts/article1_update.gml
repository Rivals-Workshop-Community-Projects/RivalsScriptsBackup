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
        if vsp >= 0{//Not rising through
            y -= floor(vsp); //should push it up faster than it can fall.
            vsp = 0; //Horizontal platforms need this for some reason.
            free = false;
        }
    }
    if free vsp = min(vsp + 0.7, 15); //Check if still in air.
}
if !free vsp = 0;

if life_timer <= 0{
    instance_destroy();
    exit;
}
else if cooldown player_id.move_cooldown[AT_DTHROW] = 150;

with (oPlayer){
    grov_emerashard = false; // Reset shard stepping
    if self != other.player_id && !free{
        if (get_player_team(player) != get_player_team(other.player_id.player) || get_match_setting(SET_TEAMATTACK) == 1){//Check Teams
            if place_meeting(x,y,other) && !place_meeting(x,y-8,other){//If overlapping at the bottom.
                if !invincible && grov_emeratimer == 0 && clone == false && state_cat != SC_HITSTUN{//If can take damage
                    if state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD && state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD{//Help how do I shorten this?
                        if (hsp != 0 || grov_emera_land) && !grov_emerashard{
                            grov_emerashard = true;
                            grov_emeratimer = 30;
                            take_damage(player,other.player_id.player,1);
                            sound_play(asset_get("sfx_blow_weak1"),false,noone,0.75);
                            var eff = spawn_hit_fx(x,y,HFX_OLY_SHINE_SMALL);
                            eff.player = other.player;
                            eff.player_id = other.player_id;
                            if get_player_color(other.player) == 12 eff.uses_shader = -1;
                        }
                    }
                }
            }
        }
    }
}
