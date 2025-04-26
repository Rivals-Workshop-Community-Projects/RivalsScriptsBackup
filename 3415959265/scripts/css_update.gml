//template
cpu_hover_update(); //put this at the VERY TOP of the file.

//css_update.gml
if ("css_anim_time" not in self) exit; //prevents error spam on load
alt_cur = get_player_color("alt_fix" in self? alt_fix: player);
onlpl = "alt_fix" in self? alt_fix: player;
ssj = 0;
init_shader();
icon_x_pos = x + 174;
icon_y_pos = y + 108;

preview_x = floor(x+10);
preview_y = floor(y+10);

css_anim_time ++;
alt_cur = get_player_color("alt_fix" in self? alt_fix: player);
onlpl = "alt_fix" in self? alt_fix: player;

if ("animation_timer" not in self) exit; //prevents error spam on load
animation_timer += (animation_timer < 49? 0.2: 0);


if (animation_timer == 3){
    sound_play(sound_get("sfx_saya_chargemax3"));
}else if (animation_timer == 9){
    sound_play(sound_get("sfx_saya_artcblast2"));
}else if (animation_timer == 20){
    sound_play(asset_get("sfx_bird_downspecial"));
}else if (animation_timer == 30){
    sound_play(sound_get("sfx_saya_fspcdash"));
}else if (animation_timer == 46){
    sound_play(asset_get("sfx_shing"));
}

alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable

icon_x_pos = x + 174;
icon_y_pos = y + 108;
preview_x = floor(x+10);
preview_y = floor(y+10);

if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    alt_prev = alt_cur;
    sound_play(sound_get("sfx_change_alt"), 0, 0, 4);
}


//Voice button
if(!instance_exists(cursor_id)) exit;
var tmp_xl, tmp_yl;
if ("voiced" not in self) {
    voiced = get_synced_var(onlpl) % 10; // Default state: synced variable value
}
// Determine button position
if (player == 0) { // Player online
    tmp_xl = 80;
    tmp_yl = 12;
} else {
    if (get_player_hud_color(player) == 8421504) { // CPU offline
        tmp_xl = 58;
        tmp_yl = 178;
    } else { // Player offline
        tmp_xl = 74;
        tmp_yl = 178;
    }
}

var tmp_bw = 30; // Button width
var tmp_bh = 26; // Button height
var tmp_xl1 = x + tmp_xl;
var tmp_xl2 = tmp_xl1 + tmp_bw;
var tmp_yl1 = y + tmp_yl;
var tmp_yl2 = tmp_yl1 + tmp_bh;

// Check cursor position
var x_temp = get_instance_x(cursor_id);
var y_temp = get_instance_y(cursor_id);

// Default state based on voiced
voicebutton = voiced ? 3 : 0; // Frame 0 (disabled default) or 3 (enabled default)

// Hover and Press Logic
if (x_temp > tmp_xl1 && x_temp < tmp_xl2 && y_temp > tmp_yl1 && y_temp < tmp_yl2) { 
    if (player == 0) suppress_cursor = true; // Suppress cursor when hovering

    voicebutton = voiced ? 4 : 1; // Frame 1 (disabled hover) or 4 (enabled hover)
    if (menu_a_pressed) {
        // Toggle voiced state
        voiced = (voiced == 0) ? 1 : 0;

        // Set pressed frame
        voicebutton = voiced ? 5 : 2; // Frame 2 (disabled pressed) or 5 (enabled pressed)

        // Handle sound playback
        if (voiced == 0) {
            sound_stop(sound_get("vc_css")); // Stop sound when disabling
        } else {
            sound_play(sound_get("vc_css")); // Play sound when enabling
        }
    }
}

// Update synced variable
set_synced_var(onlpl, floor(get_synced_var(onlpl) / 10) * 10 + voiced);

if css_select == 1{
	portrait = (portrait+1)%2;
	old_button = pbutton;
}
set_synced_var(onlpl, voiced + portrait*10);
button_off = lerp(button_off, 3*abs(pbutton%3 -1), .2);
init_shader();


//as always, #defines go at the bottom of the script.
#define cpu_hover_update()
var p = player;
var is_cpu = (get_player_hud_color(p) == 8421504);

if (is_cpu) {
    var pb = plate_bounds, cs = cursors;
    if (cpu_is_hovered) {
        var c = cs[@cpu_hovering_player]
        cursor_id = c;
        var cx = get_instance_x(c),
            cy = get_instance_y(c);
        if (cpu_hover_time < 10) cpu_hover_time++;
        if (cpu_color_swap_time < 5) cpu_color_swap_time++;
        if (cx != clamp(cx, pb[0],pb[2]) || cy != clamp(cy, pb[1],pb[3])) {
            cpu_is_hovered = false;
            c = cs[@p];
            cursor_id = c;
        }
    } else {
        var hplayer = get_new_hovering_player();
        if (cpu_hover_time > 0) cpu_hover_time--;
        if (hplayer != -1) {
            cpuh_new_color = get_player_hud_color(hplayer);
            if (cpu_hover_time > 0) {
                cpuh_prev_color = get_player_hud_color(cpu_hovering_player);
                cpu_color_swap_time = 0;
            } else { //if the player indicator is not being displayed already
                cpuh_prev_color = cpuh_new_color;
                cpu_color_swap_time = 10;
            }
            cpu_is_hovered = true;
            cpu_hovering_player = hplayer;
            cursor_id = cs[@hplayer];
        }
    }
}

#define get_new_hovering_player()
var pb = plate_bounds, cs = cursors;
for (var i = 1; i <= 4; i++) {
    var c = cs[@i];
    var cx = get_instance_x(c);
    var cy = get_instance_y(c);
    if cx == clamp(cx, pb[@0], pb[@2]) && cy == clamp(cy, pb[@1], pb[@3]) {
        return i;
    } 
}
return -1;