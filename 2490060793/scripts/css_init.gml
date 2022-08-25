//css_init.gml

//set_synced_var(player, power(2, 32) - 1)
//print(get_synced_var(player))

player_col = 0
cursor_cooldown = 0


custom_slot = 27
num_shades = 8

icon_x = 14
icon_y = 64

load_x = 180
load_y = 64
load_hovering = false
load_encode_string = ""

shade_x = 50
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



index_arr = array_create(num_shades, 0) //for synced var compiling

shade_groupings = [ //slots that will share the same custom colours will have the same grouping number
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7
]

shade_names = [
    "Body main",
    "Body shade",
    "Eyes",
    "Meter white",
    "Meter main",
    "Sparks",
    "Meter white shade",
    "Meter main shade"
]

bit_length = floor(32/num_shades)
bit_cols = power(2, bit_length) //number of colours per colour slot we can have
col_encode_arr = array_create(num_shades, "000000")
col_encode_str = ""

//generate predetermined colours
predetermined_cols = []
for (var i = 0; i < num_shades; i++) {
    var base_col = make_color_rgb(get_color_profile_slot_r(0, i), get_color_profile_slot_g(0, i), get_color_profile_slot_b(0, i))
    var _arr = [] //generic white and black col
    for (var j = 0; j < bit_cols; j++) {
        array_push(_arr, make_color_hsv((color_get_hue(base_col) + j*256/(bit_cols)) mod 256,clamp(color_get_saturation(base_col), 64, 255),color_get_value(base_col)))
        //predetermined_cols[i,j] = make_color_hsv((color_get_hue(base_col) + j*256/bit_cols) mod 256,color_get_saturation(base_col),color_get_value(base_col))
        //if i == 0 && j == 0 print(color_get_hue(predetermined_cols[0][0]))
    }
    array_push(predetermined_cols, _arr)
    //print(dec_to_hex(base_col, 6))
    col_encode_arr[i] = dec_to_hex(base_col, 6)
}
//print(color_get_hue(predetermined_cols[0][0]))
//print(color_get_hue(predetermined_cols[1][0]))

default_colour_rgb = array_create(num_shades, [0,0,0])
for (var i = 0; i < num_shades; i++) {
    default_colour_rgb[i] = [get_color_profile_slot_r(custom_slot, i),get_color_profile_slot_g(custom_slot, i),get_color_profile_slot_b(custom_slot, i)]
}

#define dec_to_hex(dec, len) 
var hex = "";
var _l = len
if (dec < 0) {
    _l = max(len, ceil(logn(16, 2 * abs(dec))));
}

var dig = "0123456789ABCDEF";
while (_l-- || dec) {
    hex = string_char_at(dig, (dec & $F) + 1) + hex;
    dec = dec >> 4;
}

return hex;
