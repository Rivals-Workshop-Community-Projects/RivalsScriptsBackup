//css_update.gml

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
            set_color_profile_slot(player_col, shade_slot, color_get_red(_col), color_get_green(_col), color_get_blue(_col))
            init_shader()
        }
    }
}

col_hsv = [cur_h,cur_s,cur_v]
hue_col = make_color_hsv(cur_h, 255, 255) //max sat and value with specified hue
    