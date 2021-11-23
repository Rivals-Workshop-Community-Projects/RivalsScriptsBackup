muno_event_type = 4;
user_event(14);
shader_start();
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
if (attack == AT_USPECIAL && window == 2){
    var uspecial_angle = darctan2(-vsp, hsp);
    draw_sprite_ext(sprite_get("uspecial_flying"), uspecial_frame, x - 14 , y - 28, 1, 1, uspecial_angle, c_white, 1);
}
}
shader_end();