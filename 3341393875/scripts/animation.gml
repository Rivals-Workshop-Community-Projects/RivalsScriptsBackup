
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    switch (attack){

        case AT_DAIR:
            if (window == 3){
                spr_angle = 0;
                draw_y = 0;
                draw_x = 0;
            }
        break;

        case AT_USPECIAL:
            if (window == 3){
                sprite_index = sprite_get("pizzahead_launch");
                draw_y = -48;
            }
        break;

        case AT_USPECIAL_GROUND:
            spr_angle = 0;
            draw_y = 0;
            draw_x = 0;
        break;

        case AT_DSPECIAL_2:

            if (window != 1){
                if (window != 11){

                switch (current_item_tossing){
                    //Dynamite
                    case 0:
                        sprite_index = sprite_get("pizzahead_dspecial3");
                    break;
                    //Uzi
                    case 1:
                        sprite_index = sprite_get("pizzahead_dspecial4");
                    break;
                    //Rat
                    case 2:
                        sprite_index = sprite_get("pizzahead_dspecial5");
                    break;
                    //TV
                    case 3:
                        sprite_index = sprite_get("pizzahead_dspecial2");
                    break;
                    //Knights
                    case 4:
                        sprite_index = sprite_get("pizzahead_dspecial_pull");
                    break;
                    
                }

                } else {
                    sprite_index = sprite_get("pizzahead_dspecial_throw");
                }
            }

        break;
    }
}

var anim_loops = false;
var anim_controlled = false;
var anim_time = noone;
switch state{
    case PS_IDLE: case PS_SPAWN: case PS_RESPAWN:
        sprite_index = sprite_get(stance + "_idle");
        anim_controlled = true;
        image_index = state_timer*idle_anim_speed;
    break;
    case PS_WALK:
        sprite_index = sprite_get(stance + "_walk");
        anim_controlled = true;
        image_index = state_timer*walk_anim_speed;
    break;
    case PS_WALK_TURN:
        sprite_index = sprite_get(stance + "_walkturn");
        anim_time = walk_turn_time;
    break;
    case PS_DASH_START:
        sprite_index = sprite_get(stance + "_dashstart");
        anim_time = initial_dash_time;
    break;
    case PS_DASH:
        sprite_index = sprite_get(stance + "_dash");
        anim_controlled = true;
        image_index = state_timer*dash_anim_speed;
    break;
    case PS_DASH_TURN:
        sprite_index = sprite_get(stance + "_dashturn");
        anim_time = dash_turn_time;
    break;
    case PS_DASH_STOP:
        sprite_index = sprite_get(stance + "_dashstop");
        anim_time = dash_stop_time;
    break;
    case PS_CROUCH:
        sprite_index = sprite_get(stance + "_crouch");
        anim_controlled = true;
    break;
    case PS_JUMPSQUAT:
        sprite_index = sprite_get(stance + "_jumpstart");
        anim_time = jump_start_time;
    break;
    case PS_FIRST_JUMP: case PS_IDLE_AIR:

        sprite_index = sprite_get(stance + "_jump");
        if (stance == "pizzaface"){
            var jumpModifier = 1;
        } else {
            var jumpModifier = 2.4;
        }

        if (state == PS_FIRST_JUMP && state_timer == 0){
            //don't
        } else {
            image_index = clamp(((vsp + jump_speed) / jumpModifier) / (jump_speed - max_fall), 0, image_number - 1);
            anim_controlled = true;
        }
    break;
    case PS_DOUBLE_JUMP:
        sprite_index = sprite_get(stance + "_doublejump");
        anim_time = double_jump_time;
    break;
    case PS_WALL_JUMP: case PS_WALL_TECH:
        sprite_index = sprite_get(stance + "_walljump");
        anim_time = walljump_time;
    break;
    case PS_LAND:
        sprite_index = sprite_get(stance + "_land");
        anim_time = land_time;
    break;
    case PS_LANDING_LAG:
        sprite_index = sprite_get(stance + "_landinglag");
        anim_time = landing_lag_time;
    break;
    case PS_WAVELAND:
        sprite_index = sprite_get(stance + "_waveland");
        anim_time = wave_land_time;
    break;
    case PS_AIR_DODGE:
        sprite_index = sprite_get(stance + "_airdodge");
        anim_controlled = true;
    break;
    case PS_PARRY_START: case PS_PARRY:
        sprite_index = sprite_get(stance + "_parry");
        anim_controlled = true;
    break;
    case PS_ROLL_FORWARD: case PS_TECH_FORWARD:
        sprite_index = sprite_get(stance + "_roll_forward");
        anim_controlled = true;
    break;
    case PS_ROLL_BACKWARD: case PS_TECH_BACKWARD:
        sprite_index = sprite_get(stance + "_roll_backward");
        anim_controlled = true;
    break;
    case PS_TECH_GROUND:
        sprite_index = sprite_get(stance + "_tech");
        anim_controlled = true;
    break;
    case PS_HITSTUN: case PS_HITSTUN_LAND:
        switch hurt_img{
            case 0:
                sprite_index = sprite_get(stance + "_bighurt");
            break;
            case 1:
                sprite_index = free? sprite_get(stance + "_hurt"):sprite_get(stance + "_hurtground");
            break;
            case 2:
                sprite_index = sprite_get(stance + "_downhurt");
            break;
            case 3:
                sprite_index = sprite_get(stance + "_bouncehurt");
            break;
            case 4:
                sprite_index = sprite_get(stance + "_uphurt");
            break;
            case 5:
                sprite_index = sprite_get(stance + "_hurtground");
            break;
            anim_controlled = true;
        }
    break;
    case PS_TUMBLE:
        sprite_index = sprite_get(stance + "_spinhurt");
        anim_loops = true;
    break;
    case PS_PRATFALL:
        sprite_index = sprite_get(stance + "_pratfall");
        anim_loops = true;
    break;
    case PS_PRATLAND:
        sprite_index = sprite_get(stance + "_land");
        anim_time = prat_land_time;
    break;
    case 37: case 38: case 39: case 40: case 41:
        sprite_index = free? sprite_get(stance + "_hurt"):sprite_get(stance + "_hurtground");
        anim_controlled = true;
    break;
    case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
        anim_controlled = true;
    break;
}

if (stance == "pizzahead"){
    
    if (state == PS_IDLE && prev_state == PS_WALK && prev_prev_state != PS_WALK_TURN && round(image_index) < sprite_get_number(sprite_get("pizzahead_ftilt"))){
        sprite_index = sprite_get("pizzahead_ftilt");
        image_index += idle_anim_speed + 0.1;
    }

    if (state == PS_SPAWN){

        if (spawn_timer > 6) {

            if (spawn_timer < 110){
                hud_offset = 110 * 110 - spawn_timer * spawn_timer;
                sprite_index = sprite_get("pizzahead_intro");
                image_index = floor(ease_linear(0, sprite_get_number(sprite_get("pizzahead_intro")), spawn_timer-6, 110-6));

                if (spawn_timer == 27){
                    sound_play(sound_get("ground_hit"));
                }

                if (spawn_timer == 70){
                    sound_play(sound_get("Pizzahead3"));
                }
            }
        } else {
            draw_invisible = true;
        }
    }

    if (attack == AT_USPECIAL_GROUND && state == PS_ATTACK_GROUND && was_parried){
        sprite_index = sprite_get("pizzahead_grounded");
    }
    
} else {

    if (faceFloating && state != PS_ATTACK_AIR){
        sprite_index = sprite_get("pizzaface_idle");
        image_number = sprite_get_number(sprite_get("pizzaface_idle"));
        image_index = state_timer * idle_anim_speed;
    }

    if (state == PS_SPAWN){

        draw_y = ease_linear(-150, 0, spawn_timer, 125);
        hud_offset = ease_linear(300, 0, spawn_timer, 125);
    }
}


if (anim_controlled && attack == AT_FSPECIAL && window == 2 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){

    image_index = floor((window_timer - 3)/2)%4 + 6;
        
}

if (anim_loops){
    if (image_index >= image_number){
        image_index -= image_number;
    }
} else if (!anim_controlled){
    image_index = (state_timer / anim_time) * image_number;
}

if (stance == "pizzaface" && (state == PS_IDLE)){
    draw_y = sin(get_gameplay_time()/16)*4;
}

if (hasAltCloth){
    sprite_index = asset_get("empty_sprite");
}