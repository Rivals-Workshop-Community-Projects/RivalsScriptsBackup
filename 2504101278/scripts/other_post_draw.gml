if "other_player_id" not in self exit;
if "black_sil" not in self exit;

if black_sil != 0
{
    gpu_push_state()
    gpu_set_fog(1,get_gameplay_time() mod 10 > 7 ? c_white : c_black,1,0)
    draw_sprite_ext(sprite_index,image_index,x,y,(1+small_sprites)*spr_dir, (1+small_sprites), spr_angle,c_white ,min(black_sil/3.4,1))
    gpu_pop_state();
}