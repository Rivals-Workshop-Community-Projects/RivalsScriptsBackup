switch (bumper_state) {
    // Idle
    case 0:
        if (spin_angle != 0) {
            // On Cooldown
            spin_angle -= 1;
            player_id.move_cooldown[AT_FSPECIAL] = 6;
        }
        else {
            if (sprite_index != spr_idle) sprite_index = spr_idle;
            image_index = bumper_state_timer / 6;
        }   
        
        break;
    // Initial Bump
    case 1:
        image_index = bumper_state_timer / 3;
        if (bumper_state_timer > 11) {
            switch_state(0);
        }
        if (!instance_exists(hbox) && bumper_state_timer == 1) {
            if (!hitpause && !hitstop) {
                sound_play(asset_get("sfx_may_arc_cointoss"));
            }
            with (player_id) {
                other.hbox = create_hitbox(AT_FSPECIAL, 2, other.x - 3, other.y - 32);
            }
        }
        break;
    // Spin
    case 2:
        player_id.move_cooldown[AT_FSPECIAL] = 6;
        spin_angle += spin_timer div 15;
        if (!instance_exists(hbox)) {
            with (player_id) {
                other.hbox = create_hitbox(AT_FSPECIAL, 3, other.x - 3, other.y - 32);
            }
        }
        if (spin_timer == 0) {
            with (player_id) {
                for (var i = 0; i < 4; i++) {
                    if (instance_exists(items[i])) {
                        //print("ya")
                        items[i].detonator = true;
                    } 
                }
                sound_play(sfx_spinner_activate);
            }
            vfx_timer = 0;
            vfx_show = true;
            switch_state(0)
        }
        break;
    // Spinner Bump
    case 3:
        break;
}

if (player_id.wheel != self) destroy = true;
if (destroy) {
    player_id.wheel = noone;
    spawn_hit_fx( x, y - 32, 302 );
    sound_play(asset_get("sfx_icehit_medium1"));
    instance_destroy();
    exit;
}

if (spin_timer > 0) spin_timer--;
bumper_state_timer++;

#define switch_state(state_num)
var prev_state_num = bumper_state;
bumper_state = state_num;
bumper_state_timer = 0;
if (state_num == 0) {
    if (spin_angle != 0) {
        spin_angle = spin_angle % 360;
    }
    if (prev_state_num != 2) {
        sprite_index = spr_idle;
    }
    image_index = 1;
}