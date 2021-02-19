if !(object_index == oTestPlayer) && get_training_cpu_action() != CPU_FIGHT is_in_practice = true;

if (is_in_practice && introTimer < 20) {
    draw_debug_text(x - 80, y + 12, "Press TAUNT to fill meter.");
    draw_debug_text(x - 80, y + 24, "(Normal TAUNT deactivated)");
}
shader_start();
if attack == AT_NSPECIAL_2 && window == 4 {
    var btimer = floor((window_timer)/2);
    if window_timer > 5 && window_timer < 22 btimer = 3;
    else if window_timer > 21 btimer = floor((window_timer)/2) - 5;
    draw_sprite(sprite_get("blast_effect"), btimer, x, y);
}
shader_end();