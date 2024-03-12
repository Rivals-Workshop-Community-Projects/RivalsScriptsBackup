if ("strong_notif_timer" not in self) exit;

shader_start();
if (strong_notif_timer > 0 && good_evidence_count > 0) draw_debug_text(temp_x,temp_y-56 - floor((120-strong_notif_timer)/8),"+Strong Attacks");

if (get_gameplay_time() <= 120 && !cornered_disabled) draw_debug_text(temp_x,temp_y-56,"TAUNT: Mute Phoenix Music");

if (turnabout)
{
    draw_sprite_ext(sprite_get("turnabout_bar"), turnabout, temp_x+62, temp_y-8, 1, 1, 0, c_white, 1);
    draw_rectangle_colour(temp_x+(124*(turnabout_timer/turnabout_timer_max)), temp_y-10, temp_x+123, temp_y-3, c_black, c_black, c_black, c_black, false);
}

shader_end();

draw_sprite_ext(sprite_get("mode_icon"), turnabout, temp_x+126, temp_y, 1, 1, 0, c_white, 1);

draw_sprite_ext(sprite_get("evidence_slot"), evidence1_status, temp_x+20, temp_y-(turnabout*12), 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("evidence_slot"), evidence2_status, temp_x+62, temp_y-(turnabout*12), 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("evidence_slot"), evidence3_status, temp_x+104, temp_y-(turnabout*12), 1, 1, 0, c_white, 1);

if (evidence1_status != 0) draw_sprite_ext(sprite_get("evidence_icons"), evidence1-1, temp_x+20, temp_y-16-(turnabout*12), 1, 1, 0, c_white, 1);
if (evidence2_status != 0) draw_sprite_ext(sprite_get("evidence_icons"), evidence2-1, temp_x+62, temp_y-16-(turnabout*12), 1, 1, 0, c_white, 1);
if (evidence3_status != 0) draw_sprite_ext(sprite_get("evidence_icons"), evidence3-1, temp_x+104, temp_y-16-(turnabout*12), 1, 1, 0, c_white, 1);
