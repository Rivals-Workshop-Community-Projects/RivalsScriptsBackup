//pre_draw

shader_start();

if attack == AT_USPECIAL && instance_exists(hook) {
    //rope_dir = point_direction(x,y,hook.x,hook.y);
     var bamboo_dir = point_direction(x,y+height/2,hook.x,hook.y);
    if (spr_dir == -1) bamboo_dir += 180;
    var bamboo_dist = point_distance(x,y+height/2,hook.x,hook.y);
    
    //since the arm sprite's origin isn't centered, do some math
    if (bamboo_dist < 7) bamboo_dist = 7; //needs minimum distance to prevent arcsin errors
    var arm_dir = darcsin(6 / bamboo_dist);
    arm_dir = bamboo_dir - arm_dir*spr_dir;
    if (spr_dir == -1) arm_dir += 180;
    if (bamboo_dist > 64){
        var rope_x = x + lengthdir_x(6, arm_dir+90*spr_dir) + lengthdir_x(32, arm_dir);
        var rope_y = y - 30 + lengthdir_y(6, arm_dir+90*spr_dir) + lengthdir_y(32, arm_dir);
        
        var rope_length = 0;
        var max_rope_length = point_distance(rope_x, rope_y, hook.x, hook.y);
        /*if (window == 5){
            var window_length = get_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH);
            max_rope_length = max_rope_length * (window_timer / window_length);
        }*/
        while (rope_length < max_rope_length-64){
            draw_sprite_ext(sprite_get("ropeTile"), 0, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
            rope_x += lengthdir_x(16, arm_dir);
            rope_y += lengthdir_y(16, arm_dir);
            rope_length += 16;
        }
        draw_sprite_ext(sprite_get("ropeTile"), 0, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
    }
}

//Draw line from Loadent to acorn during discharge.
if (attack == AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 5) {
    if (instance_exists(acorn)) {
        
        var line_x = x;
        var line_y = y - 32;
        var line_dir = point_direction(x, line_y, acorn.x, acorn.y);
        var line_length = 0;
        var max_line_length = point_distance(x, line_y, acorn.x, acorn.y);
        var line_increment = 56;
        var anim_speed = 1/2;

        // print_debug("max_line_length: " + string(max_line_length));

        while (line_length < max_line_length) {
            switch (acorn.charge) {
                case -1:
                    draw_sprite_ext(sprite_get("negative_shot"), floor(window_timer * anim_speed), line_x, line_y, 1, 1, line_dir, c_white, 1);   //Blue line for negative.
                    line_x += lengthdir_x(line_increment, line_dir);
                    line_y += lengthdir_y(line_increment, line_dir);
                    line_length += line_increment;
                    break;
                case 1:
                    draw_sprite_ext(sprite_get("positive_shot"), floor(window_timer * anim_speed), line_x, line_y, 1, 1, line_dir, c_white, 1);     //Red line for positive.
                    line_x += lengthdir_x(line_increment, line_dir);
                    line_y += lengthdir_y(line_increment, line_dir);
                    line_length += line_increment;
                    break;
            }
            if (acorn.charge == 0) {
                break;
            }
        }

        // print_debug("line_length: " + string(line_length));
    }
}

//Flash tail the charge color.
var alt_num = get_player_color(player);
var glow_region = 5;

var pos_r = get_color_profile_slot_r(get_player_color(player), 7);
var pos_g = get_color_profile_slot_g(get_player_color(player), 7);
var pos_b = get_color_profile_slot_b(get_player_color(player), 7);

var neg_r = get_color_profile_slot_r(get_player_color(player), 6);
var neg_g = get_color_profile_slot_g(get_player_color(player), 6);
var neg_b = get_color_profile_slot_b(get_player_color(player), 6);

var period = 7.5;
var t = get_gameplay_time() - time_charge_starts;

var pos_mid_r = (tail_r + pos_r) / 2;
var pos_mid_g = (tail_g + pos_g) / 2;
var pos_mid_b = (tail_b + pos_b) / 2;

var neg_mid_r = (tail_r + neg_r) / 2;
var neg_mid_g = (tail_g + neg_g) / 2;
var neg_mid_b = (tail_b + neg_b) / 2;

var pos_amp_r = tail_r - pos_r;
var pos_amp_g = tail_g - pos_g;
var pos_amp_b = tail_b - pos_b;

var neg_amp_r = tail_r - neg_r;
var neg_amp_g = tail_g - neg_g;
var neg_amp_b = tail_b - neg_b;

var pos_r_formula = floor(0.5 * pos_amp_r * dcos(period * t) + pos_mid_r);
var pos_g_formula = floor(0.5 * pos_amp_g * dcos(period * t) + pos_mid_g);
var pos_b_formula = floor(0.5 * pos_amp_b * dcos(period * t) + pos_mid_b);

var neg_r_formula = floor(0.5 * neg_amp_r * dcos(period * t) + neg_mid_r);
var neg_g_formula = floor(0.5 * neg_amp_g * dcos(period * t) + neg_mid_g);
var neg_b_formula = floor(0.5 * neg_amp_b * dcos(period * t) + neg_mid_b);

// var shading_formula = 0.46 * dcos(period * t) + 0.5;

switch (charge) {
    case -1:
        set_character_color_slot(glow_region, neg_r_formula, neg_g_formula, neg_b_formula);
        // set_character_color_shading(alt_num, shading_formula);
        break;
    case 1:
        set_character_color_slot(glow_region, pos_r_formula, pos_g_formula, pos_b_formula);
        // set_character_color_shading(alt_num, shading_formula);
        break;
    default:
        set_character_color_slot(glow_region, tail_r, tail_g, tail_b);
        // set_character_color_shading(alt_num, 1);
        break;
}

shader_end();