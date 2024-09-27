var alt = 0;
if ("alt_fix" in self) 
    alt = get_player_color(alt_fix);
if ("real_alt" in self) {
    load_alt(real_alt);
    alt = real_alt;
} else {
    if "syncvarinit" not in self {
        //synced var stuff
        syncvar_array = split_synced_var(6, 2);
        //print(syncvar_array);
        real_alt = syncvar_array[0];
        syncvarinit = true;
    }
}

switch (alt) {
    case 0:
        set_character_color_slot(0, 78, 74, 128 ); //Coat/Hat
        set_character_color_slot(1, 226, 216, 255 ); //Hair
        set_character_color_slot(2, 107, 66, 45 ); //Skin
        set_character_color_slot(3, 240, 189, 66 ); //Gold
        set_character_color_slot(4, 81, 76, 87 ); //Black
        set_character_color_slot(5, 81, 76, 87 ); //Shirt
        set_character_color_slot(6, 78, 74, 128 ); //Boots
        set_character_color_slot(7, 78, 74, 128 ); //Coat
    break;
    case 1:
        set_shading([1, 1, 1, 1, 1, 1, 1, 1, 1.4]);
        break;
    case 3:
        set_shading([1, 1, 1, 1, 1, 1, 1, 1, 1.3]);
        break;
    case 4:
        set_shading([1, 0.6, 1, 1, 1, 1, 1, 1, 1]);
        break;
    case 5:
        set_shading([1, 1, 1, 1, 0.5, 1, 1, 1, 1]);
        break;
    case 6:
        set_shading([1, 0.6, 1, 1, 1, 1, 1, 1, 1]);
        break;
    case 7:
        set_shading([1, 1, 1, 0.5, 1, 1, 1, 1, 1]);
        break;
    case 8:
        set_shading([1, 0.5, 1, 1, 0.5, 1, 1, 1, 1]);
        break;
    case 9:
        set_shading([1, 0.4, 1, 1.1, 1, 0.5, 0.5, 1.1, 1]);
        break;
    case 11:
        set_shading([1, 1, 1, 1, 1, 0.5, 1, 1, 1]);
        break;
    case 12:
        set_shading([0.5, 0.5, 1, 1, 0.5, 0.5, 1, 1, 1]);
        break;
    case 13:
        set_shading([1, 0.5, 1, 0.5, 1, 1, 1, 1, 1]);
        break;
    case 14:
        set_shading([1, 1, 1.4, 1, 1, 1, 1, 1, 1]);
        break;
    case 15:
        set_shading([0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1]);
        break;
    case 16:
        set_shading([0.6, 0.6, 1, 1.6, 0.6, 0.6, 0.6, 0.6, 1]);
        break;
    case 20:
        set_shading([1, 0.5, 2, 1, 0.5, 0.5, 1, 1, 1]);
        break;
    case 23:
        set_shading([1, 0.6, 1, 1, 1, 0.5, 1, 1, 1.5]);
        break;
    case 24:
        set_shading([1, 1, 1, 1, 1, 1, 1, 1, 2]);
        break;
    case 25:
        set_shading([1, 0.5, 1, 1, 1, 1, 1, 1, 1.2]);
        break;
    case 26:
        set_shading([1, 1, 1, 0.5, 1, 1, 1, 1, 1]);
        break;
    case 27:
        set_shading([1.3, 0.5, 1, 1.5, 1, 1, 1, 1, 1.5]);
        break;
    case 28:
        set_shading([1, 1, 1, 0.5, 1, 1, 0.5, 1, -3]);
        break;
    case 29:
        set_shading([2, 1, 1, 1, 1, 1, 1, 1, 2]);
        break;
    default:
        break;
}

if (object_index == oPlayer || object_index == oTestPlayer) {
    var ice_ir = get_color_profile_slot_r(0, 8);
    var ice_ig = get_color_profile_slot_g(0, 8);
    var ice_ib = get_color_profile_slot_b(0, 8);
    
    var ice_r = get_color_profile_slot_r(alt, 8);
    var ice_g = get_color_profile_slot_g(alt, 8);
    var ice_b = get_color_profile_slot_b(alt, 8);
    
    var ice_b = get_color_profile_slot_b(alt, 8);
    var pos = 6 * 4;
    
    static_colorI[pos] = ice_ir / 255;
    static_colorI[pos + 1] = ice_ig / 255;
    static_colorI[pos + 2] = ice_ib / 255;
    
    static_colorO[pos] = ice_r / 255;
    static_colorO[pos + 1] = ice_g / 255;
    static_colorO[pos + 2] = ice_b / 255;
    
    var ice_h = 6;
    var ice_s = 46;
    var ice_v = 18;
    
    static_colorT[pos] = ice_h / 360;
    static_colorT[pos + 1] = ice_s / 100;
    static_colorT[pos + 2] = ice_v / 100;
}

#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var synced_var = get_synced_var(room == 113 ? 0 : player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
return chunk_arr;
#define set_shading(arr)
for (var i = 0; i < 8; i++)
    set_character_color_shading(i,arr[i]);
if array_length(arr) == 9 && "static_colorB" in self{
    static_colorB[6*4] = arr[8];
    if arr[8] < 0 alt_invert_ice = true;
}
#define load_alt(alt)
for (var i = 0; i < 8; i++) {
    set_character_color_slot(i,
        get_color_profile_slot_r(alt,i),
        get_color_profile_slot_g(alt,i),
        get_color_profile_slot_b(alt,i)
        );
    set_article_color_slot(i,
        get_color_profile_slot_r(alt,i),
        get_color_profile_slot_g(alt,i),
        get_color_profile_slot_b(alt,i)
        );
}