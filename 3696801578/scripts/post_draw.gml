if instance_exists(jake_obj) and get_match_setting(SET_HITBOX_VIS) {
    draw_circle_colour(jake_obj.initial_position.x, jake_obj.initial_position.y, 5, c_green, c_green, false)
    draw_line_width_colour(jake_obj.initial_position.x, jake_obj.initial_position.y, jake_obj.target_position.x, jake_obj.target_position.y, 4, c_white, c_white)
    draw_circle_colour(jake_obj.target_position.x, jake_obj.target_position.y, 5, c_red, c_red,  false)
}

if state == PS_RESPAWN or respawn_taunt {
    draw_sprite_ext(sprite_get("plat_front"),0,x,y, spr_dir, image_yscale, 0, c_white, 1)
}

shader_start()




//draw_rectangle_color(x + fspecial_2_rect.top_left.x, y+fspecial_2_rect.top_left.y, x + fspecial_2_rect.bottom_right.x, y+fspecial_2_rect.bottom_right.y, c_red, c_red, c_red, c_red, true)

/////pre_draw.gml

var attack_sprites = jake_sprites

if (instance_exists(jake_obj) or !visible)  {
    shader_end()
    exit
}

var target_state = state
if target_state == PS_ATTACK_GROUND {
target_state = PS_ATTACK_AIR
}

if !ds_map_exists(attack_sprites, target_state) {
    shader_end()
    exit
}

var target_sprite = attack_sprites[? target_state]

if target_state == PS_ATTACK_AIR {
// get the corresponding attack sprite

if !ds_map_exists(target_sprite, attack) {
    shader_end()
    exit
}


target_sprite = free and ("attack_air" in target_sprite[? attack]) ? target_sprite[? attack].attack_air : target_sprite[? attack].attack
} else if target_state == PS_HITSTUN {
    target_sprite = target_sprite[hurt_img]
    
    if hurt_img == 1 {
        //hurt
        target_sprite = target_sprite[free]
    }
}

var thing = c_white

if jake_cooldown != 0 {
    var t = (70*sin(get_gameplay_time() / 4) + 130)
    thing = make_color_rgb(t,t,t)
}

if state == PS_PRATFALL or state == PS_PRATLAND {
    thing = c_gray
}


draw_sprite_ext(target_sprite, image_index, x, y, (1+small_sprites)*image_xscale, (1+small_sprites)*image_yscale, image_angle, thing , image_alpha)

if jake_cooldown != 0 {
    draw_sprite_ext(sprite_get("jake_cooldown"),0,x,y-(char_height+26),2,2,0,c_white,1)
}

shader_end()

