if player_id.visible{
    var e = 0;
    var p1 = point_interval(origp[0], origp[1], kneep[0], kneep[1], e/segments_num);
    var p2 = point_interval(kneep[0], kneep[1], x, y, e/segments_num);
    var seg_pos = point_interval(p1[0], p1[1], p2[0], p2[1], e/segments_num);
    repeat(segments_num + 1){
        var p3 = point_interval(origp[0], origp[1], kneep[0], kneep[1], (e+1)/segments_num);
        var p4 = point_interval(kneep[0], kneep[1], x, y, (e+1)/segments_num);
        //joint_length
        var joint_length = point_interval(p3[0], p3[1], p4[0], p4[1], (e+1)/segments_num);
        //calculation of joint angle based on the gradient bewteen the joint position and that of the next joint
        var joint_angle = point_direction(seg_pos[0], seg_pos[1], joint_length[0], joint_length[1]);
        //joint drawing
        draw_sprite_ext(sprite_get(e = segments_num? "foot": "leg_seg"), foot_sprite, seg_pos[0], seg_pos[1], (e = segments_num? 2: point_distance(seg_pos[0], seg_pos[1], joint_length[0], joint_length[1])/22), 2, (e = segments_num && foot_angle != noone? foot_angle: joint_angle), c_white, 1);
        e++;
        p1 = p3;
        p2 = p4;
        seg_pos = joint_length;
    }
}

var draw_strike = 1;
with obj_article1 if self != other && player_id == other.player_id && depth < other.depth draw_strike = 0;
if draw_strike && player_id.skystrike{
    with player_id{
        var time = get_gameplay_time();
        var is_attacking = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;
        var pl_col = get_player_color(player);
        var col = make_color_rgb(get_color_profile_slot_r(pl_col, 6), get_color_profile_slot_g(pl_col, 6), get_color_profile_slot_b(pl_col, 6));
        shader_end();
        if skystrike_timer = clamp(skystrike_timer, 200, 230){
            var beam_timer = clamp((230 - skystrike_timer)/15, 0, 1);
            draw_primitive_begin(pr_trianglestrip);
            draw_vertex_color(skystrike_pos[0], 0, c_white, 1);
            draw_vertex_color(skystrike_pos[0] - 1, 0, c_white, 1);
            draw_vertex_color(skystrike_pos[0] + 1, (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1])*beam_timer, c_white, 1);
            draw_vertex_color(skystrike_pos[0], (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1])*beam_timer, c_white, 1);
            draw_primitive_end();
        }else if skystrike_timer = clamp(skystrike_timer, 15, 199){
            var beam_timer = clamp((200 - skystrike_timer)/15, 0, 1);
            draw_primitive_begin(pr_trianglestrip);
            draw_vertex_color(skystrike_pos[0], 0, col, 1);
            draw_vertex_color(skystrike_pos[0] + (1 + beam_timer*35), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 2, col, 1);
            draw_vertex_color(skystrike_pos[0] - (1 + beam_timer*35), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 2, col, 1);
            draw_vertex_color(skystrike_pos[0] + (1 + beam_timer*15), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 10, col, 1);
            draw_vertex_color(skystrike_pos[0] - (1 + beam_timer*15), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 10, col, 1);
            draw_primitive_end();
            draw_primitive_begin(pr_trianglestrip);
            draw_vertex_color(skystrike_pos[0], 0, c_white, .6);
            draw_vertex_color(skystrike_pos[0] + (1 + beam_timer*35), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 2, c_white, .6);
            draw_vertex_color(skystrike_pos[0] - (1 + beam_timer*35), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 2, c_white, .6);
            draw_vertex_color(skystrike_pos[0] + (1 + beam_timer*15), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 10, c_white, .6);
            draw_vertex_color(skystrike_pos[0] - (1 + beam_timer*15), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 10, c_white, .6);
            draw_primitive_end();
            draw_primitive_begin(pr_trianglestrip);
            draw_vertex_color(skystrike_pos[0] + 1, 0, c_white, 1);
            draw_vertex_color(skystrike_pos[0] + (1 + beam_timer*25), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 2, c_white, 1);
            draw_vertex_color(skystrike_pos[0] - (1 + beam_timer*25), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 2, c_white, 1);
            draw_vertex_color(skystrike_pos[0] + (1 + beam_timer*15), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 6, c_white, 1);
            draw_vertex_color(skystrike_pos[0] - (1 + beam_timer*15), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 6, c_white, 1);
            draw_primitive_end();
        }else if skystrike_timer = clamp(skystrike_timer, 1, 14){
            var beam_timer = skystrike_timer/15;
            draw_primitive_begin(pr_trianglestrip);
            draw_vertex_color(skystrike_pos[0], 0, col, beam_timer);
            draw_vertex_color(skystrike_pos[0] + (1 + beam_timer*35), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 2, col, beam_timer);
            draw_vertex_color(skystrike_pos[0] - (1 + beam_timer*35), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 2, col, beam_timer);
            draw_vertex_color(skystrike_pos[0] + (1 + beam_timer*15), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 10, col, beam_timer);
            draw_vertex_color(skystrike_pos[0] - (1 + beam_timer*15), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 10, col, beam_timer);
            draw_primitive_end();
            draw_primitive_begin(pr_trianglestrip);
            draw_vertex_color(skystrike_pos[0], 0, c_white, .6*beam_timer);
            draw_vertex_color(skystrike_pos[0] + (1 + beam_timer*35), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 2, c_white, .6*beam_timer);
            draw_vertex_color(skystrike_pos[0] - (1 + beam_timer*35), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 2, c_white, .6*beam_timer);
            draw_vertex_color(skystrike_pos[0] + (1 + beam_timer*15), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 10, c_white, .6*beam_timer);
            draw_vertex_color(skystrike_pos[0] - (1 + beam_timer*15), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 10, c_white, .6*beam_timer);
            draw_primitive_end();
            draw_primitive_begin(pr_trianglestrip);
            draw_vertex_color(skystrike_pos[0], 0, c_white,  beam_timer);
            draw_vertex_color(skystrike_pos[0] + (1 + beam_timer*25), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 2, c_white, beam_timer);
            draw_vertex_color(skystrike_pos[0] - (1 + beam_timer*25), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 2, c_white, beam_timer);
            draw_vertex_color(skystrike_pos[0] + (1 + beam_timer*15), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 6, c_white, beam_timer);
            draw_vertex_color(skystrike_pos[0] - (1 + beam_timer*15), (skystrike_pos[2] >= room_height? room_height: skystrike_pos[1]) + 6, c_white, beam_timer);
            draw_primitive_end();
        }
    }
}


#define point_interval(x1, y1, x2, y2, interval)
{
    var intervalx = x1 + (x2 - x1)*interval;
    var intervaly = y1 + (y2 - y1)*interval;
    var returned = [intervalx, intervaly];
    return returned;
}