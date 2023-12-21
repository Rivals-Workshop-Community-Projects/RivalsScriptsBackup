if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256);
    if instance_exists(hbox){
        instance_destroy(hbox);
    }
    instance_destroy();
}

if !hitstop{
    state_timer++;
    if old_hsp != 0{
        hsp = floor(old_hsp);
        old_hsp = 0;
    }
    if old_vsp != 0{
        vsp = floor(old_vsp);
        old_vsp = 0;
    }
}

switch(state){
    case 0: // Start-Up
        sprite_index = spr_wave;
        if state_timer < 4{
            image_index = 2;
        } else{
            image_index = 3;
        }
        if state_timer == 6{
            if free{
                setState(6);
                hsp = 0;
                vsp = 0;
            } else {
                setState(1);
            }
        }
        break;
    case 1: // Active
        sprite_index = spr_wave;
        image_index = get_gameplay_time() / 8;
        if !instance_exists(hbox) and !hitstop{
            hbox = create_hitbox(AT_FTILT, 3, floor(x + (16 * spr_dir) + hsp), (y - 15));
            hbox.player_id = player_id;
        } else {
            hbox.x = (x + (16 * spr_dir) + hsp);
            hbox.player_id = player_id;
        }
        
        if free{
            setState(6);
        } else {
            if state_timer == 20{
                if wave_hitplayer{
                    setState(2);
                } else {
                    setState(5);
                }
            }
        }
        
        break;
    case 2: // Transition To Final
        sprite_index = spr_wave_final;
        switch(state_timer){
            case 0:
            case 1:
            case 2:
            case 3:
                image_index = 1;
                break;
            case 4:
            case 5:
            case 6:
            case 7:
                image_index = 2;
                break;
        }
        hsp = lerp(hsp, 2, .25);
        if state_timer == 8{
            setState(3);
        }
        break;
    case 3: // Final Hit
        image_index = 3;
        if !instance_exists(hbox){
            hbox = create_hitbox(AT_FTILT, 4, floor(x + (14 * spr_dir) + hsp), (y - 24));
            hbox.player_id = player_id;
        }
        if state_timer == 3{
            setState(4);
        }
        break;
    case 4: // Final Death
        if state_timer >= 0 and state_timer < 12{
            if state_timer <= 2{
                image_index = 4;
            }
            else if state_timer > 2 and state_timer <= 5{
                image_index = 5;
            }
            else if state_timer > 5 and state_timer <= 8{
                image_index = 6;
            }
            else if state_timer > 8{
                image_index = 7;
            }
        } else {
            instance_destroy();
        }
        break;
    case 5: // Death
        sprite_index = spr_wave_death;
        image_index = floor(state_timer / 4);
        hsp = 0;
        if state_timer == 16{
            instance_destroy();
        }
        break;
    case 6: // Transition To Final (NO MOVEMENT)
        sprite_index = spr_wave_final;
        switch(state_timer){
            case 0:
            case 1:
            case 2:
            case 3:
                image_index = 1;
                break;
            case 4:
            case 5:
            case 6:
            case 7:
                image_index = 2;
                break;
        }
        hsp = 0;
        if state_timer == 8{
            setState(3);
        }
        break;
}

#region // Animation Handling
/*
switch(state){
    case 1:
        image_index = get_gameplay_time() / 8;
        break;
}*/

#define setState(new_state)
state = new_state;
state_timer = 0;
image_index = 0;

if instance_exists(hbox){
    instance_destroy(hbox);
}