shader_start();

var smallSprites = small_sprites + 1
var size_mod = 1;

if (state_cat == SC_HITSTUN || state == PS_TUMBLE) && instance_exists(other_player_id) && "genesis" in other_player_id && other_player_id.genesis && hit_player_obj == other_player_id {
var fs = random_func(0, sprite_height -1, 1);
draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func_2(20, char_height - 20, 1)+1, (x+(random_func_2(2, 3, 1)-1)*7) - sprite_get_xoffset(sprite_index)*spr_dir*smallSprites*size_mod, y+fs*smallSprites - sprite_get_yoffset(sprite_index)*smallSprites*size_mod, spr_dir*smallSprites*size_mod, smallSprites*size_mod, c_red, 1);

}

shader_end();