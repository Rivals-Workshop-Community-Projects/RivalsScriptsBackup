//css_init.gml

player_col = 0
cursor_cooldown = 0


custom_slot = 17

icon_x = 12
icon_y = 74

shade_x = 60
shade_y = 90
shade_w = 15
shade_h = 15
shade_sep = 17

hue_alpha = 0
sat_alpha = 0
val_alpha = 0
shade_alpha = 0

//slider offsets
slider_offsets = [
    [10,106], //hue
    [10,118], //sat
    [10,130] //val
]

shade_slot = 2
shade_hover = undefined

icon_hovering = false
customise = false
slider = undefined //0 = hue, 1 = sat, 2 = val

var cur_r = get_color_profile_slot_r(player_col, shade_slot)
var cur_g = get_color_profile_slot_g(player_col, shade_slot)
var cur_b = get_color_profile_slot_b(player_col, shade_slot)
_col = make_color_rgb(cur_r, cur_g, cur_b)
var cur_h = color_get_hue(_col)
var cur_s = color_get_saturation(_col)
var cur_v = color_get_value(_col)

col_hsv = [cur_h,cur_s,cur_v]

hue_col = make_color_hsv(cur_h, 255, 255) //max sat and value with specified hue

num_shades = 0

for (var i = 0; i < 8; i++) {
    var _col_r = get_color_profile_slot_r(player_col, i)
    var _col_g = get_color_profile_slot_g(player_col, i)
    var _col_b = get_color_profile_slot_b(player_col, i)
    var _col_base = make_color_rgb(_col_r,_col_g,_col_b)
    if _col_base != c_black {
        num_shades++
    }
}

shade_names = [
    "Blade main",
    "Hair/cuffs",
    "Skin",
    "Eyes",
    "Blade accent",
    "Tunic accent",
    "Wings",
    "Tunic main"
]