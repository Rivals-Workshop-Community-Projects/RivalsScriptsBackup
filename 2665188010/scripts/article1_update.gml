//article1_update

state_timer ++;
player_id.azelf_futureplaced = true;
player_id.move_cooldown[AT_DSPECIAL] = 5;

with asset_get("plasma_field_obj"){
    if place_meeting(get_instance_x(self),get_instance_y(self),other){//If touching plasma field
        if get_player_team(get_instance_player(self)) != get_player_team(other.player){//If not on same team
            if other.state != 1{
                other.state = 1;
                other.state_timer = 0;
                sound_play(asset_get("sfx_clairen_hit_med"));
            }
        }
    }
}
if psybeam != null && !instance_exists(psybeam) && state != 1{
    state = 1;
    state_timer = 0;
    psybeam = null;
}

switch(state){
    case 0: //Idle
        if state_timer > 30 state_timer = 0;
        if state_timer > 14 image_index = 1;
        else                image_index = 0;
        break;
    case 1: //Dissapear
        image_index = (state_timer/4) + 2;
        if state_timer = 1 player_id.azelf_futureready = false;
        if state_timer = 20{
            player_id.azelf_futureplaced = false;
            player_id.move_cooldown[AT_DSPECIAL] = 60;
            instance_destroy();
        }
        break;
    case 2: //Explode
        if state_timer == 1         player_id.azelf_futureready = false;
        if state_timer < 25         image_index = (state_timer/5) + 7;
        else if state_timer < 35    image_index = 19;
        else                        image_index = ((state_timer-35)/4) + 12;
        if state_timer = 5          sound_play(asset_get("sfx_absa_new_whip2"));
        else if state_timer = 30    sound_play(sound_get("futuresight_3"));
        else if state_timer = 35    create_hitbox(AT_DSPECIAL_2, 1, x,y)
        else if state_timer = 35+12{
            player_id.azelf_futureplaced = false;
            player_id.move_cooldown[AT_DSPECIAL] = 110;
            instance_destroy();
        }
        break;
    case 3: //Grab
        if array_length(grabbed_player) > 0{
            for (var i = array_length_1d(grabbed_player) - 1; i > -1; i--;){
                if instance_exists(grabbed_player[i]){ //Forsburn clone stuff
                    grabbed_player[i].x = lerp(grabbed_player[i].x,x,0.2);
                    grabbed_player[i].y = lerp(grabbed_player[i].y,y+32,0.2);
                }
            }
        }
        if player_id.hitpause{
            state = 1;
            state_timer = 0;
            break;//Skip the rest of the checks.
        }
        if state_timer = 1{
            image_index = 15;
            player_id.azelf_futureready = false;
        }
        if state_timer = 3 sound_play(asset_get("sfx_clairen_nspecial_grab_miss"));
        if state_timer = 5{
            image_index = 16;
            create_hitbox(AT_NSPECIAL, 1, x,y);
        }
        if state_timer = 10{
            if array_length(grabbed_player) == 0{
                state = 1;
                state_timer = 12;
            }
            else image_index = 18;
        }
        if state_timer = 25{
            state = 4;
            state_timer = 0;
        }
        break;
    case 4: //Throw
        if state_timer < 10 image_index = 15;
        else                image_index = (state_timer%6) div 3;
        if state_timer = 1{
            if player_id.spr_dir = 1{
                if player_id.left_down  {create_hitbox(AT_NSPECIAL, 3, x,y); throw_dir = -1; player_id.window = 6;}
                else                    {create_hitbox(AT_NSPECIAL, 2, x,y); throw_dir = 1;  player_id.window = 5;}
            }
            else{
                if player_id.right_down {create_hitbox(AT_NSPECIAL, 2, x,y); throw_dir = 1;  player_id.window = 6;}
                else                    {create_hitbox(AT_NSPECIAL, 3, x,y); throw_dir = -1; player_id.window = 5;}
            }
            throw_dir *= 50;
            throw_dir += x;
            player_id.window_timer = 0;
        }
        x = lerp(x, throw_dir, 0.3);
        if state_timer = 20{
            state = 1;
            state_timer = 0;
        }
        break;
    case 5: //Created
        image_index = (5-(state_timer/2)) + 2;
        if state_timer = 10{
            state = 0;
            state_timer = 0;
            player_id.azelf_futureready = true;
        }
        break;
    case 6: //Dissapear without cooldown
        image_index = (state_timer/4) + 2;
        if state_timer = 1 player_id.azelf_futureready = false;
        if state_timer = 20{
            player_id.azelf_futureplaced = false;
            instance_destroy();
        }
        break;
}