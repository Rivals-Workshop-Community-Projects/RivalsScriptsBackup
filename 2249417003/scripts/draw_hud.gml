//draw_hud.gml

if ("ralsei_tp" not in self) exit;

if (ralsei_tp >= ralsei_max_tp) {
    draw_tp_meter_back(1 + (get_gameplay_time() / 60) mod 1.1);
}
else {
    draw_tp_meter_back(0);
    if (ralsei_courage > 0) {
        draw_tp_meter_courage();
        draw_sprite(sprite_get("fx_atk_up"), 0, temp_x + 144, temp_y - 2);
        
    }
    //else if (ralsei_heart_active) {
    //    draw_tp_meter_overflow(3);
    //}
    else {
        if (ralsei_tp > 0) {
            if (ralsei_draw_tp < ralsei_tp) {
                draw_tp_meter_overflow(3);
                draw_tp_meter_fill(2);
            }
            else {
                draw_tp_meter_fill(0);
            }
        }
    }

}

draw_sprite_ext( ralsei_gui_nspecial_ammo, ralsei_nspec_ammo, temp_x + 176, temp_y - 20, 2, 2, 0, c_white, 1 ); //116

if (get_training_cpu_action() != CPU_FIGHT) {
    if ("ralsei_training_prompt" not in self)  {
        if (url != 2249417003) {
            for(var i = 0; i < 40; i++) {
                set_num_hitboxes(i, 0);
                set_attack_value(i, AG_SPRITE, sprite_get("dummy"));
            }
        }
        ralsei_training_prompt = 1;
    }
    if (ralsei_training_prompt)
    draw_debug_text(temp_x - 8, temp_y - 32, "(TAUNT 2x to fill meter/ammo.)");
}

//draw_sprite_ext( ralsei_gui_tp_back, 0, temp_x - 8, temp_y - 16, 2, 2, 0, c_white, 1 );

//draw_sprite_part( ralsei_gui_tp_fill, 0, 0, 0, 50, 6, temp_x + 16, temp_y - 10);

//draw_debug_text(temp_x, temp_y - 50, string(ralsei_tp));

#define draw_tp_meter_back
draw_sprite_ext( ralsei_gui_tp_back, argument0, temp_x - 8, temp_y - 16, 2, 2, 0, c_white, 1 );
return;

#define draw_tp_meter_overflow
draw_sprite_part( ralsei_gui_tp_fill, argument0, 0, 0, floor(100 / ralsei_max_tp * ralsei_tp), 6, temp_x + 16, temp_y - 10);
return;

#define draw_tp_meter_fill
draw_sprite_part( ralsei_gui_tp_fill, argument0, 0, 0, floor(100 / ralsei_max_tp * ralsei_draw_tp), 6, temp_x + 16, temp_y - 10);
return;

#define draw_tp_meter_courage
draw_sprite_part( ralsei_gui_tp_fill, 3, 0, 0, floor(100 / ralsei_max_courage * ralsei_courage), 6, temp_x + 16, temp_y - 10);
return;

