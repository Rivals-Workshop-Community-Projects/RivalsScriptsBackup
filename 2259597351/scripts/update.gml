// update - called every game tick
if (owner.url == mojibake || owner.url == tamat) {
    if (owner.state == PS_ATTACK_AIR || owner.state == PS_ATTACK_GROUND) {
        attacking = true;
    } else {
        attacking = false;
    }

    if (attacking) {
        // Attack_update
        switch owner.attack {
            case AT_TAUNT_2:
                // Intro animation sync
                sync_state("intro")
                break;
            case AT_DSPECIAL:
                if (owner.url == mojibake) {
                    run_speed = 0;
                    if (state == "run") {
                        sync_state("dspecial_run");
                    } else {
                        sync_state("dspecial");
                    }
                }
                break;
        }
    } else {
        run_speed = orig_run_speed;
    }
}

if (!yebth_eaten) {
    // Switch statement for idle and run to make runstart and stop work
    switch state {
        case "idle":
            if (state_timer == 0) {
                image_index = 0;
                if (!run_stop) {
                    sprite_index = sprite_get("idle");
                }
            }
            if (sprite_index == sprite_get("idle")) {
                image_index = true_image_index;
                true_image_index += idle_anim_speed;
            }
            // This code makes it run stop for the first few frames,
            // then turns it to run once those are done
            if (state_timer < run_stop_time && run_stop) {
                idle_spr = sprite_get("run_stop");
            } else if (run_stop) {
                run_stop = false;
                state_timer = 0;
                idle_spr = sprite_get("idle");
            } else {
                idle_spr = sprite_get("idle");
            }
            
            // Makes run_stop make you slide a little
            if (run_stop) {
                image_index = run_stop_timer * run_stop_frames/run_stop_time
                if (image_index >= run_stop_frames - run_stop_frames/run_stop_time) {
                    run_stop = false
                }
                run_stop_timer++
                hsp = (ease_linear( run_speed*100, 0, state_timer + 1, run_stop_time ))/100 * spr_dir;
                // Moves you by the speed value every frame
                x += hsp;
                turn_buffer_time = 16
            } else {
                run_stop_timer = 0
                if (turn_buffer_time > 0) {
                    turn_buffer_time--
                }
            }
            break;
        case "run":
            if (state_timer == 0) {
                true_image_index = 0;
            }
            
            if (sprite_index == sprite_get("run")) {
                image_index = true_image_index;
                true_image_index += run_anim_speed;
            }
            // This code makes it dash start for the first few frames,
            // then turns it to run once those are done
            if (state_timer < run_start_time && run_start) {
                run_spr = sprite_get("run_start");
            } else if (run_start) {
                run_start = false;
                state_timer = 0;
                run_spr = sprite_get("run");
            } else {
                run_spr = sprite_get("run");
            }
            break;
        case "taunt":
            if (state_timer == 0) {
                true_image_index = 0;
            }
            image_index = true_image_index;
            true_image_index = (state_timer/(taunt_time + 1)) * 16;
            if (state_timer >= taunt_time) {
                true_image_index = 0;
                state = "idle";
            }
            
            // Makes taunt not weird
            run_stop = false;
    }
    
    // Reset the run_start variable if not running
    if (state != "run") {
        run_start = true;
        // Starts it at run_start
        run_spr = sprite_get("run_start");
        if (state != "taunt") {
            taunt_spr = sprite_get("taunt");
        }
    } else {
        // Reset the run_stop variable if running
        run_stop = true;
        run_stop_timer = 0
        // Starts it at run_stop
        idle_spr = sprite_get("run_stop");
        taunt_spr = sprite_get("taunt_run");
    }
    
    if (run_stop) {
        // Makes turn do run stop properly if out of run
        turn_spr = sprite_get("run_stop");
    } else {
        if (turn_buffer_time > 0) {
            turn_spr = sprite_get("idle");
        } else {
            turn_spr = sprite_get("turn");
        }
    }

} else {
    sprite_index = asset_get("empty_sprite");
}

#define sync_state(anim)
    sprite_index = sprite_get(anim);
    image_index = owner.image_index;