if ("char_height" not in self) exit;
var t_x = temp_x - 16;
var t_y = temp_y - 16;
var fill_img = 0;
var filled_img = -1;

impulse_points_hud = lerp(impulse_points_hud, impulse_points, 0.5);

var bar_fill = 0;
var col_R1 = get_color_profile_slot_r( get_player_color(player), 6);
var col_G1 = get_color_profile_slot_g( get_player_color(player), 6);
var col_B1 = get_color_profile_slot_b( get_player_color(player), 6);

var bar_color = make_color_rgb(col_R1, col_G1, col_B1);

impulse_hud_state_timer ++;
switch (impulse_hud_state) {
    case 0:
        if (impulse_can_activate) {
			var self_damage = get_player_damage(player);
        	var fill = impulse_activation_percent > 0 ? (self_damage) / max(1, impulse_activation_percent) : 0;
            fill_img = lerp(0, 6, clamp(fill, 0, 1))
        }
        else {
            fill_img = 7;
            bar_color = make_color_rgb(147, 28, 36);
        }
        
        if (impulse_active) {
            impulse_hud_state = 1;
            impulse_hud_state_timer = 0;
        }
    break;
    case 1:
        fill_img = 7;
        filled_img = ease_linear(0, 7, impulse_hud_state_timer, 40);
        bar_fill = clamp(impulse_points_hud / impulse_points_max, 0, 1);
        if (impulse_hud_state_timer >= 40) {
            impulse_hud_state = 2
            impulse_hud_state_timer = 0;
        }
    break;
    case 2:
        fill_img = 7;
        filled_img = 7;
        bar_fill = clamp(impulse_points_hud / impulse_points_max, 0, 1);
        if (!impulse_active) {
            impulse_hud_state = 3;
            impulse_hud_state_timer = 0;
        }
    break;
    case 3:
        fill_img = 7;
        filled_img = ease_linear(7, 0, impulse_hud_state_timer, 40);
        bar_color = make_color_rgb(147, 28, 36);
        if (impulse_hud_state_timer >= 40) {
            impulse_hud_state = 0
            impulse_hud_state_timer = 0;
        }
    break;
}
impulse_fill_hud = lerp(impulse_fill_hud, fill_img, 0.5)
shader_start();
var bar_x = t_x + 176
var bar_y = t_y + 8;
var bar_width = 128;
var bar_height = 8;
draw_rectangle_color(bar_x - bar_width, bar_y, bar_x, bar_y + bar_height, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(bar_x - (bar_width * bar_fill - 2), bar_y + 2, bar_x + 2, bar_y + (bar_height - 2), bar_color, bar_color, bar_color, bar_color, false);

draw_sprite_ext(sprite_get("hud_install_fill"), impulse_fill_hud, t_x + 192, t_y + 12, 2, 2, 0, bar_color, 1);
if (filled_img >= 0)
    draw_sprite_ext(sprite_get("hud_install_filled"), filled_img, t_x + 192, t_y + 12, 2, 2, 0, c_white, 1);
shader_end()

if (!in_battle) {
    if (impulse_can_activate && !impulse_active) {
        text_draw(t_x, t_y - 32, "fName", c_white, 0, 1000, 1, true, 1, "Down + Taunt to toggle Impulse");
        text_draw(t_x, t_y - 16, "fName", c_white, 0, 1000, 1, true, 1, "Activates at: " +  string(impulse_activation_percent) + "%");
    }
}
#define get_impulse_activation()
var self_stocks = get_player_stocks(player);
var target_max_stocks = 0;

var self_damage = get_player_damage(player);
var target_max_damage = 0;

var self_team = get_player_team(player);

with (oPlayer) {
	if (id == other.id) continue;
	if (get_player_team(player) == self_team) continue;
	if (state == PS_DEAD) continue;
	var st = get_player_stocks(player);
	if (st >= target_max_stocks) target_max_stocks = st;
	var d = get_player_damage(player);
	if (d >= target_max_damage) target_max_damage = d;
}

var stock_diff_max = self_stocks - target_max_stocks;
var damage_diff_max = self_damage - target_max_damage;

var stock_advantage = 0;

if (stock_diff_max > 0) stock_advantage = 5 * stock_diff_max;
else if (stock_diff_max < 0) stock_advantage = -10 * stock_diff_max;

var activation_percent = 80;
damage_diff_max -= self_damage;

if (damage_diff_max > 50) {
	activation_percent -= 30;
}
if (damage_diff_max <= 50 && damage_diff_max >= 10) {
	activation_percent -= ease_sineIn(30, 0, abs(damage_diff_max) - 50, 40);
}
if (damage_diff_max <= -100 && damage_diff_max >= -150) {
	activation_percent += ease_sineIn(0, 20, abs(damage_diff_max) - 100, 50);
}

if (damage_diff_max <= -150) {
	activation_percent += 20;
}

activation_percent += stock_advantage;

activation_percent = max(activation_percent + stock_advantage, 1);
return activation_percent;
	
#define can_acivate_impulse()
var self_damage = get_player_damage(player);
var activation_percent = impulse_activation_percent;

return activation_percent > 0 && self_damage >= activation_percent;

#define text_draw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
draw_set_halign(fa_left);
draw_set_font(asset_get(argument[2]));
 
if (argument[7]){
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);


return string_width_ext(argument[9], argument[4], argument[5]);
