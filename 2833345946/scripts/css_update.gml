//css_update.gml
/*
player_col = get_player_color(player)

cursor_x = get_instance_x(cursor_id) - x
cursor_y = get_instance_y(cursor_id) - y

if cursor_cooldown > 0 cursor_cooldown--

var cur_r = get_color_profile_slot_r(player_col, shade_slot)
var cur_g = get_color_profile_slot_g(player_col, shade_slot)
var cur_b = get_color_profile_slot_b(player_col, shade_slot)
_col = make_color_rgb(cur_r, cur_g, cur_b)
var cur_h = color_get_hue(_col)
var cur_s = color_get_saturation(_col)
var cur_v = color_get_value(_col)

//custom colour slot code
if player_col == custom_slot {
    //cursor hovering over icon
    if abs(icon_x - cursor_x + 14) < 14 && abs(icon_y - cursor_y + 14) < 14 {
        icon_hovering = true
        suppress_cursor = true
    } else {
        icon_hovering = false
    }
    
    if customise {
        
        //cursor hovering over load icon
        if abs(load_x - cursor_x + 14) < 14 && abs(load_y - cursor_y + 14) < 14 {
            load_hovering = true
            suppress_cursor = true
        } else {
            load_hovering = false
        }
        
        //cursor hovering over sliders
        var slider_w = 200
        var slider_h = 12
        for (var i = 0; i < 3; i++) {
            if abs(slider_offsets[i][0] - cursor_x + slider_w/2) < slider_w/2 && abs(slider_offsets[i][1] - cursor_y + slider_h/2) < slider_h/2 {
                slider = i
                suppress_cursor = true
                break;
            } else {
                slider = undefined
            }
        }
        
        //cursor hovering over shade square
        for (var i = 0; i < num_shades; i++) {
            if abs(shade_x + i*shade_sep - cursor_x) < 2+(shade_w/2) && abs(shade_y - cursor_y) < 2+(shade_h/2) {
                shade_hover = i
                suppress_cursor = true
                break;
            } else {
                shade_hover = undefined
            }
        }
    }
    
    if menu_a_pressed && cursor_cooldown == 0 { //button press
        cursor_cooldown = 6
        
        //icon press
        if icon_hovering {
            customise = !customise
            sound_play(asset_get("mfx_option"))
        }
        
        //shade square press
        if shade_hover != undefined {
            shade_slot = shade_hover
            sound_play(asset_get("mfx_input_key"))
        }
        
        //load press
        if load_hovering {
            var _str = encode_str(col_encode_arr)
            load_encode_string = _str
            load_encode_string = get_string("Copy/paste color code below", load_encode_string)
            set_cols(load_encode_string)
            sound_play(asset_get("mfx_option"))
            
            for (var shade = 0; shade < num_shades; shade++) {
                var cur_r = get_color_profile_slot_r(player_col, shade)
                var cur_g = get_color_profile_slot_g(player_col, shade)
                var cur_b = get_color_profile_slot_b(player_col, shade)
                _col = make_color_rgb(cur_r, cur_g, cur_b)
                var cur_h = color_get_hue(_col)
                var cur_s = color_get_saturation(_col)
                var cur_v = color_get_value(_col)
                
                var _str = dec_to_hex(_col, 6)
                col_encode_arr[shade] = _str
                var col_r = color_get_red(_col)
                var col_g = color_get_green(_col)
                var col_b = color_get_blue(_col)
                var col_h = color_get_hue(_col)
                var col_s = color_get_saturation(_col)
                var col_v = color_get_value(_col)
                
                //cycle through predetermined colours
                var chosen_col = c_white
                var min_diff = 1000000000000000000000
                for (var i = 0; i < array_length_1d(predetermined_cols[shade]); i++) {
                    var pre_col = predetermined_cols[shade][i]
                    var pre_r = color_get_red(pre_col)
                    var pre_g = color_get_green(pre_col)
                    var pre_b = color_get_blue(pre_col)
                    var pre_h = color_get_hue(pre_col)
                    var pre_s = color_get_saturation(pre_col)
                    var pre_v = color_get_value(pre_col)
                    
                    var diff_r = abs(col_r - pre_r)
                    var diff_g = abs(col_g - pre_g)
                    var diff_b = abs(col_b - pre_b)
                    var diff_h = abs(col_h - pre_h)
                    var diff_s = abs(col_s - pre_s)
                    var diff_v = abs(col_v - pre_v)
                    
                    if diff_r > 128 diff_r -= 256
                    if diff_g > 128 diff_g -= 256
                    if diff_b > 128 diff_b -= 256
                    if diff_h > 128 diff_h -= 256
                    if diff_s > 128 diff_s -= 256
                    if diff_v > 128 diff_v -= 256
                    
                    var diff_sum = abs(diff_h)
                    //var diff_sum = abs(diff_h)
                    
                    if diff_sum < min_diff {
                        chosen_col = predetermined_cols[shade][i]
                        min_diff = diff_sum
                        index_arr[shade] = i
                    }
                }
            }
            
            print(index_arr)
            var _sync = generate_synced_var(index_arr, bit_length)
            set_synced_var(player, _sync)
        }
        
        //slider press
        if slider != undefined {
            sound_play(asset_get("mfx_input_end"))
            var _amount = clamp(256*(cursor_x - 2 - slider_offsets[slider][0]) / (slider_w - 4), 0, 255)
            switch slider {
                case 0: //hue
                cur_h = _amount
                break;
                
                case 1: //sat
                cur_s = _amount
                break;
                
                case 2: //val
                cur_v = _amount
                break;
            }
            
            _col = make_color_hsv(cur_h, cur_s, cur_v)
            var _str = dec_to_hex(_col, 6)
            col_encode_arr[shade_slot] = _str
            var col_r = color_get_red(_col)
            var col_g = color_get_green(_col)
            var col_b = color_get_blue(_col)
            var col_h = color_get_hue(_col)
            var col_s = color_get_saturation(_col)
            var col_v = color_get_value(_col)
            
            //cycle through predetermined colours
            var chosen_col = c_white
            var min_diff = 1000000000000000000000
            for (var i = 0; i < array_length_1d(predetermined_cols[shade_slot]); i++) {
                var pre_col = predetermined_cols[shade_slot][i]
                var pre_r = color_get_red(pre_col)
                var pre_g = color_get_green(pre_col)
                var pre_b = color_get_blue(pre_col)
                var pre_h = color_get_hue(pre_col)
                var pre_s = color_get_saturation(pre_col)
                var pre_v = color_get_value(pre_col)
                
                var diff_r = abs(col_r - pre_r)
                var diff_g = abs(col_g - pre_g)
                var diff_b = abs(col_b - pre_b)
                var diff_h = abs(col_h - pre_h)
                var diff_s = abs(col_s - pre_s)
                var diff_v = abs(col_v - pre_v)
                
                if diff_r > 128 diff_r -= 256
                if diff_g > 128 diff_g -= 256
                if diff_b > 128 diff_b -= 256
                if diff_h > 128 diff_h -= 256
                if diff_s > 128 diff_s -= 256
                if diff_v > 128 diff_v -= 256
                
                var diff_sum = abs(diff_h)
                //var diff_sum = abs(diff_h)
                
                if diff_sum < min_diff {
                    chosen_col = predetermined_cols[shade_slot][i]
                    min_diff = diff_sum
                    index_arr[shade_slot] = i
                }
            }
            
            print(index_arr)
            
            //set_color_profile_slot(player_col, shade_slot, color_get_red(chosen_col), color_get_green(chosen_col), color_get_blue(chosen_col))
            set_color_profile_slot(player_col, shade_slot, col_r, col_g, col_b)
            init_shader()
            
            var _sync = generate_synced_var(index_arr, bit_length)
            set_synced_var(player, _sync)
        }
    }
}

col_hsv = [cur_h,cur_s,cur_v]
hue_col = make_color_hsv(cur_h, 255, 255) //max sat and value with specified hue
*/
//print(col_encode_arr)
#define set_cols(_str)
for (var i = 1; i < string_length(_str); i += 6) {
    var _cpy = string_copy(_str, i, 6)
    var _dec = hex_to_dec(_cpy)
    //print(_cpy)
    set_color_profile_slot(player_col, (i-1)/6, color_get_red(_dec), color_get_green(_dec), color_get_blue(_dec))
    col_encode_arr[(i-1)/6] = _cpy
}
init_shader()
return;

#define encode_str(arr)
var _str = ""
for (var i = 0; i < array_length(arr); i++) {
    _str = _str + arr[i]
}
return _str;

#define dec_to_hex(dec, len) 
var hex = "";
var _l = len
if (dec < 0) {
    var _l = max(len, ceil(logn(16, 2 * abs(dec))));
}

var dig = "0123456789ABCDEF";
while (_l-- || dec) {
    hex = string_char_at(dig, (dec & $F) + 1) + hex;
    dec = dec >> 4;
}

return hex;

#define hex_to_dec(hex) 
var dec = 0;

var dig = "0123456789ABCDEF";
var len = string_length(hex);
for (var pos = 1; pos <= len; pos += 1) {
    dec = dec << 4 | (string_pos(string_char_at(hex, pos), dig) - 1);
}

return dec;

#define generate_synced_var(_arr, bit_len)
///args chunks...
///Given pairs of chunks and their lengths in bits, compiles them into one value.
//arg format: chunk, bit_length, chunk, bit_length, etc.

//i am not smart enough to modify Super's code lmao

var output = 0;
var num_chunks = array_length(_arr);
if num_chunks != floor(num_chunks) {
    print("error generating synced var - function formatted wrong.");
    return 0;
}
var total_len = 0;
for (var i = num_chunks-1; i >= 0; i--) {
    var shift = (bit_len >= 0) ? bit_len : 0;
    total_len += bit_len;
    output = output | _arr[i];
    output = output << shift;
}
if total_len > 32 {
    print(`error generating synced var - bit length surpassed 32! (${total_len} bits.)`);
    return 0;
}
return output;