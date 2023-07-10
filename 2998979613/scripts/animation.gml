sprite_index = sprite_get("empty");
draw_y = -70;
switch state{
    case PS_SPAWN:
    init_shader();
    if state_timer == 90 && alt_cur != 4 sound_play(sound_get("guardian_activate"));
    if state_timer = 120{
        if alt_cur != 4{
            if play_medley sound_play(sound_get((alt_cur == 1? "tested": "guardian") + "_medley_intro"));
            if play_medley active_loop = sound_play(sound_get("active_loop"), 1, noone, .08);
        }
        intro_timer++;
    }
    if state_timer <= 90 col_displace = -2;
    else col_displace = 12*(state_timer - 90)/35 - 2
    break;
    case PS_HITSTUN:
    if !hitstop && free rot_angle -= sign(hsp);
    break;
    default:
    var is_attacking = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;
    if !is_attacking && !hitstop rot_angle = lerp(rot_angle, 0, .2);
    break;
}
spr_angle = rot_angle;