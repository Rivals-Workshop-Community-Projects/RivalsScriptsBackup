//tree states
if free {
    y += 2;
}
if ((x > room_width) or (x < 0) or (y > room_height) or (y < 0)) {
    player_id.tree_id = noone;
    instance_destroy();
    exit;
}
switch(state) {
    case 0: //spawn1
        image_index = 1;
        if state_timer == 0 {
            with(player_id) {
                create_hitbox(AT_DSPECIAL,1,other.x,other.y-50);
            }
        }
        if state_timer > 4 {
            state = 1;
            state_timer = 0;
        }
        break;
    case 1: //spawn2
        image_index = 2
        if state_timer >= 6 {
            state = 2;
            state_timer = 0;
            image_index =  2;
        }
        break;
    case 2: //exists
        image_index = 3;
        if state_timer >= 6 {
            with(pHitBox) {
                if place_meeting(x,y,other) && hit_priority > 0 {
                    other.launch_player = player;
                    other.should_launch = true;
                    other.launch_x = lengthdir_x(1*spr_dir,kb_angle);
                    if other.launch_x < 0 {
                        other.launch_x = -1;
                    } else if other.launch_x > 0 {
                        other.launch_x = 1;
                    }
                }
            }
            if should_launch {
                sound_play(asset_get("sfx_blow_medium1"),false,noone,0.85,1.15);
                with(player_id) {
                    var treebox = create_hitbox(AT_DSPECIAL,2,other.x,other.y-25);
                    treebox.player = other.launch_player;
                    treebox.hsp = 7 * other.launch_x;
                    if treebox.hsp == 0 {
                        treebox.vsp = -12;
                    } else {
                        treebox.vsp = -9;
                    }
                    tree_id = treebox;
                    spawn_hit_fx(other.x,other.y-20,301)
                }
                instance_destroy();
                exit;
            }
        }
        break;
    case 3: //despawn
        image_index = ease_linear(4,5,state_timer,8);
        if state_timer >= 8 {
            player_id.tree_id = noone;
            instance_destroy();
            exit;
        }
        break;
}

state_timer += 1;