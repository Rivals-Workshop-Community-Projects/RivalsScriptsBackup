//article1_pre_draw
if "cloud_arr" not in self exit;

var spr_arr = [
    sprite_get("nebula_outline"),
    sprite_get("nebula_dark"),
    sprite_get("nebula_light")
]

if player_id.low_graphics {
    spr_arr = [
        sprite_get("nebula_dark"),
        sprite_get("nebula_light")
    ]
}

//gpu_set_blendmode(bm_add)
var explode_spr = sprite_get("nebula_explode_small")
var explode_prime_spr = sprite_get("nebula_explode_prime")

for (var j = 0; j < array_length(spr_arr); j++) {
    if j > 1 && !player_id.low_graphics gpu_set_blendmode(bm_add)
    else gpu_set_blendmode(bm_normal)
    var _spr = spr_arr[j]
    for (var i = 0; i < cloud_num; i++) {
        var cloud = cloud_arr[i]
        if cloud.state == 3 {
            if j == 0 {
                var _x = cloud.x + 2*((floor(cloud.timer/4) mod 2) - 0.5) //vibrate
                var _y = cloud.y
                var _size = round(cloud.size/7)
                draw_sprite_ext(explode_prime_spr, _size, _x, _y, 1, 1, 0, c_white, 1)
            }
        } else if cloud.state == 4 {
            if j == 0 {
                var _x = cloud.x
                var _y = cloud.y
                var _size = round(cloud.size/7)
                draw_sprite_ext(explode_spr, clamp(cloud.timer/6, 0, 6), _x, _y, 1, 1, i*90, c_white, 1)
            }
        } else if cloud.state != 0 {
            var _x = cloud.x
            var _y = cloud.y
            var _size = round(cloud.size/7)
            draw_sprite_ext(_spr, _size, _x, _y, 1, 1, 0, c_white, player_id.low_graphics ? 1 : 0.5)
        }
    }
}

gpu_set_blendmode(bm_normal)