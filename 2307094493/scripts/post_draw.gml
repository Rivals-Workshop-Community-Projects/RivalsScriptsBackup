muno_event_type = 4;
user_event(14);

//tweet
if (attack == AT_TAUNT && window == 2 && taunt_down){
    with(oPlayer){
//        if("ltweet" in hit_player_obj) { //comatibility
//        draw_sprite(sprite_get("ltweet"), image_index, other.x, other.y)
//                }
        if("ltweet" not in hit_player_obj) { //no comatibility
            if("select" in hit_player_obj) { //if basecast
                switch(hit_player_obj.select) {
                    case 2:// List of basecase
                        draw_sprite(sprite_get("ltweet2"), image_index, other.x, other.y);
                        break;
                    case 3:
                        draw_sprite(sprite_get("ltweet3"), image_index, other.x, other.y);
                        break;
                    case 4:
                        draw_sprite(sprite_get("ltweet4"), image_index, other.x, other.y);
                        break;
                    case 5:
                        draw_sprite(sprite_get("ltweet5"), image_index, other.x, other.y);
                        break;
                    case 6:
                        draw_sprite(sprite_get("ltweet6"), image_index, other.x, other.y);
                        break;
                    case 7:
                        draw_sprite(sprite_get("ltweet7"), image_index, other.x, other.y);
                        break;
                    case 8:
                        draw_sprite(sprite_get("ltweet8"), image_index, other.x, other.y);
                        break;
                    case 9:
                        draw_sprite(sprite_get("ltweet9"), image_index, other.x, other.y);
                        break;
                    case 10:
                        draw_sprite(sprite_get("ltweet10"), image_index, other.x, other.y);
                        break;
                    case 11:
                        draw_sprite(sprite_get("ltweet11"), image_index, other.x, other.y);
                        break;
                    case 12:
                        draw_sprite(sprite_get("ltweet12"), image_index, other.x, other.y);
                        break;
                    case 13:
                        draw_sprite(sprite_get("ltweet13"), image_index, other.x, other.y);
                        break;
                    case 14:
                        draw_sprite(sprite_get("ltweet14"), image_index, other.x, other.y);
                        break;
                    case 15:
                        draw_sprite(sprite_get("ltweet15"), image_index, other.x, other.y);
                        break;
                    case 16:
                        draw_sprite(sprite_get("ltweet16"), image_index, other.x, other.y);
                        break;
                    case 17:
                        draw_sprite(sprite_get("ltweet17"), image_index, other.x, other.y);
                        break;
                    case 18:
                        draw_sprite(sprite_get("ltweet18"), image_index, other.x, other.y);
                        break;
                    case 19:
                        draw_sprite(sprite_get("ltweet19"), image_index, other.x, other.y);
                        break;
                    case 20:
                        draw_sprite(sprite_get("ltweet20"), image_index, other.x, other.y);
                        break;
                    case 1865940669: 
                        draw_sprite(sprite_get("ltweets"), image_index, other.x, other.y);
                        break;
                    case 1866016173:
                        draw_sprite(sprite_get("ltweetg"), image_index, other.x, other.y);
                        break;
                    default: //No compatability and not listed, Failsafe
                        draw_sprite(sprite_get("loadtweetblank"), image_index, x, y);
                    break;
                }
            } else { //If nothings happend yet
                with(other) {
                    draw_sprite(sprite_get("loadtweetblank"), image_index, x, y);
                }
            }
        }
    }
}
if (attack == AT_TAUNT && window == 2 && taunt_down){
    with(oPlayer){
        if "ltweet" in oPlayer {
            draw_sprite(sprite_get("ltweet"), image_index, other.x, other.y)
        }
    }
}
//Draw up special directional indicator.
shader_start();
if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 1) {
    var indicator_radius = 100;
    var  uses_shader = true;
    var us_loc = (bbox_top - bbox_bottom)/2;
    draw_sprite_ext(sprite_get("uspec_arrow"), 0, x + lengthdir_x(indicator_radius, direc), (y + us_loc) + lengthdir_y(indicator_radius,direc),1,1,direc-90,c_white,1);
}

//Draw electric crackle over self during down special.
if (attack == AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 2) {
    var anim_speed = 1/6;
    var anim_length = 6;
draw_sprite(sprite_get("hold"), floor(state_timer * anim_speed) mod anim_length, x, y);  
    var anim_speed = 1/4;
    var anim_length = 7;
    switch (charge) {
        case -1:
            if (free) {
                draw_sprite(sprite_get("AirCharge(-)"), floor(state_timer * anim_speed) mod anim_length, x, y);
            } else {
                draw_sprite(sprite_get("Charge(-)"), floor(state_timer * anim_speed) mod anim_length, x, y);
            }
            break;
        case 0:
        case 1:
            if (free) {
                draw_sprite(sprite_get("AirCharge(+)"), floor(state_timer * anim_speed) mod anim_length, x, y);
            } else {
                draw_sprite(sprite_get("Charge(+)"), floor(state_timer * anim_speed) mod anim_length, x, y);
            }
            break;
    }
}

//Color the nut based on charge.
with (asset_get("obj_article3")) {
    if (player_id == other.id) {
        var pos_r = get_color_profile_slot_r(get_player_color(other.player), 7);
        var pos_g = get_color_profile_slot_g(get_player_color(other.player), 7);
        var pos_b = get_color_profile_slot_b(get_player_color(other.player), 7);

        var neg_r = get_color_profile_slot_r(get_player_color(other.player), 6);
        var neg_g = get_color_profile_slot_g(get_player_color(other.player), 6);
        var neg_b = get_color_profile_slot_b(get_player_color(other.player), 6);

        var c_positive = make_color_rgb(pos_r, pos_g, pos_b);
        var c_negative = make_color_rgb(neg_r, neg_g, neg_b);

        var flash_freq = 3 * 5;
        var flash_vis = 1;
        if (life_timer >= lifetime * 0.5) {
            var flash_vis = round(0.5 * dcos(life_timer * flash_freq) + 0.5);
        }
        
        switch (charge) {
            case -1:
                visible = false;
                draw_sprite_ext(sprite_get("nut"), 0, x, y, image_xscale, image_yscale, image_angle, c_negative, flash_vis);
                break;
            case 0:
                if (flash_vis == 1) {
                    visible = true;
                } else {
                    visible = false;
                }
                break;
            case 1:
                visible = false;
                draw_sprite_ext(sprite_get("nut"), 0, x, y, image_xscale, image_yscale, image_angle, c_positive, flash_vis);
                break;
        }
    }
}

shader_end();