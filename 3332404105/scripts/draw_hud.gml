//Drawing below

//vials
draw_vial(1, vial_vim);
draw_vial(2, vial_imagination)
draw_vial(3, vial_pulchritude)

//inv
draw_sprite(sprite_get("inventory"), 0, temp_x + sprite_get_width(sprite_get("inventory")) / 2 - inv_slot_size + inv_x_off, temp_y + inv_y_off);

draw_inv_item(0);
draw_inv_item(1);
draw_inv_item(2);
draw_inv_item(3);
draw_inv_item(4);

if (variable_instance_exists(self, "inv_selection")){
    draw_sprite_ext(sprite_get("inventory_dark"), inv_selection, temp_x + sprite_get_width(sprite_get("inventory")) / 2 + inv_x_off, temp_y + inv_y_off, 1, 1, 0, 0, 0.35);
}

draw_sprite_ext(sprite_get("inventory"), 1, temp_x + sprite_get_width(sprite_get("inventory")) / 2 - inv_slot_size + inv_x_off, temp_y + inv_y_off, 1, 1, 0, hud_col, 1);

//droplets

draw_droplet(1, 0, 0)
draw_droplet(2, 2, 2)
draw_droplet(3, 1, 0)
draw_droplet(4, 2, 1)

//weapon
var weapon_x = 174;
var weapon_y = -54;
var ammo_y = 18;
draw_sprite(sprite_get("weapon"), 3, temp_x + weapon_x, temp_y + weapon_y);
draw_sprite_ext(sprite_get("weapon"), 3, temp_x + weapon_x, temp_y + weapon_y, 1 - sign(ammo), 1, 0, c_black, 0.5);
draw_sprite(sprite_get("weapon"), 1 + object_duality, temp_x + weapon_x, temp_y + weapon_y);
draw_sprite_ext(sprite_get("ammo_display"), ammo, temp_x + weapon_x, temp_y + weapon_y + ammo_y, 1, 1, 0, hud_col, 1);
draw_sprite_ext(sprite_get("weapon"), 1, temp_x + weapon_x, temp_y + weapon_y, 1, 1, 0, hud_col, 1);
draw_sprite_ext(sprite_get("weapon_lock"), ammo, temp_x + weapon_x, temp_y + weapon_y, 1, sign(weapon_locked), 0, c_white, 1);

//hat
draw_sprite_ext(sprite_get("hat"), 2, temp_x + 120, temp_y - 54, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("hat"), 2, temp_x + 120, temp_y - 54, 1 - sign(hat_store), 1, 0, c_black, 0.5);
draw_sprite_ext(sprite_get("hat"), 0, temp_x + 120, temp_y - 54, 1, 1, 0, hud_col, 1);
draw_sprite_ext(sprite_get("hat"), 1, temp_x + 120, temp_y - 54, 1, 1, 0, c_white, sign(hat_store));

draw_set_font(font_get("mspa_font"));
draw_set_halign(fa_right);
draw_set_valign(fa_center);
draw_set_color(hud_col);
draw_text_transformed(temp_x + 134, temp_y - 56, string(hat_store), 2, sign(hat_store) * 2, 0);

if (variable_instance_exists(self, "inv_selection")){
    draw_sprite_ext(sprite_get("slot_highlight"), 0, temp_x - 4 + sprite_get_width(sprite_get("slot_highlight")) / 2 + 36 * inv_selection + inv_x_off, temp_y - 6 + inv_y_off, 1, 1, 0, hud_hex, 1);
}

//allignment

draw_sprite(spr_medal, allegiance, temp_x + 180, temp_y + 25);
draw_sprite_ext(spr_medal, allegiance, temp_x + 180, temp_y + 25, sign(move_cooldown[AT_TAUNT]), 1, 0, c_black, 0.25);

//intox
draw_sprite(sprite_get("intox_meter"), intox_level, temp_x - 10, temp_y - 36);

//cool
draw_sprite(sprite_get("hud_coolfactor"), 0, temp_x + 220, temp_y - 78);
draw_sprite_ext(sprite_get("hud_coolfactor"), 1 + sign(shades_wearing), temp_x + 220, temp_y - 78, 1, 1, 0, c_white, ((cool_factor - 1) / 4) + sign(shades_wearing));

//dsp cooldown
draw_sprite(sprite_get("hud_cooldown_dsp"), sign(move_cooldown[AT_DSPECIAL]), temp_x + 248, temp_y - 78);

#define draw_inv_item(slot_num)
var slot_item = inv_slot[slot_num];
if (inv_count[slot_num] > 0){
    draw_sprite_ext(sprite_get("items_icon"), slot_item, temp_x + 57 + 36 * slot_num - inv_x_off, temp_y - 6 + inv_y_off, 1, 1, 0, c_white, 1);
}

#define draw_vial(vial_num, vial_name)

var gauge_sprite = sprite_get("vial_bars");
var gauge_full_sprite = sprite_get("vial_bars_full");
var gauge_image = vial_num - 1
var gauge_height = sprite_get_height(gauge_sprite);
var gauge_width = sprite_get_width(gauge_sprite);
var gauge_full_height = sprite_get_height(gauge_sprite);
var gauge_full_width = sprite_get_width(gauge_sprite) - 24;
var gauge_x = temp_x;
var gauge_y = temp_y - 140 + 24 * vial_num;
var gauge_full_x_offset = 6;
var gauge_full_y_offset = 18;

draw_sprite_part(gauge_sprite, gauge_image, 0, 0, gauge_width, gauge_height, gauge_x, gauge_y)
draw_sprite_part_ext(gauge_sprite, gauge_image + 3, 0, 0, gauge_width, gauge_height, gauge_x, gauge_y + 2, 1, 1, hud_col, 1)
draw_sprite_part(gauge_full_sprite, gauge_image, 0, 0, gauge_full_width * (vial_name / vial_limit), gauge_full_height, gauge_x + gauge_full_x_offset, gauge_y + gauge_full_y_offset);

#define draw_droplet(res_number, offsex, offsey)
drawplets_x = temp_x + 122 + offsex * 50; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
drawplets_y = temp_y - 94 + offsey * 30; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.

draw_sprite(sprite_get("resources_drops_bg"), 0, drawplets_x, drawplets_y);
draw_sprite(sprite_get("resources_drops"), res_number - 1, drawplets_x - 12, drawplets_y - 2);
draw_line_width_color(drawplets_x + 18, drawplets_y + 12, (drawplets_x - 4) + 22 - 22 * (allresometer[res_number] / allresource_cost), drawplets_y + 12, 1, c_white, c_white)

draw_set_font(font_get("mspa_font"));
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_text_transformed(drawplets_x + 7, drawplets_y - 1, string(allresource[res_number]), 2, 2, 0);

if (attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG){
    if (strongallres[res_number] != 0 && attacking_now != 0){
        draw_set_font(font_get("mspa_font"));
        draw_set_halign(fa_center);
        draw_set_valign(fa_center);
        draw_set_color(c_black);
        draw_text_transformed_color(drawplets_x + 7 + 6, drawplets_y - 1 - 2, string(strongallres[res_number]), 1, 1, 0, hud_col, c_black, c_black, c_black, 0.25);
    }
}