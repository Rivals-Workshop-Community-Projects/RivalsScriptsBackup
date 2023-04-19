/// my_hitboxID.attack

if tengiaglow > 0{
    shader_start();
            gpu_set_blendmode(bm_add);
                draw_sprite_ext(sprite_index, image_index , x , y  , spr_dir, 1, 0 , -1 , tengiaglow/10);
           gpu_set_blendmode(bm_normal);
    shader_end();
    tengiaglow --
}

with asset_get("oPlayer") {
    if "Tengia_pain_id" in self {
        
        if Tengia_pain_time > 0 && Tengia_pain_time < 175 && Tengia_pain_id == other {
            with Tengia_pain_id {
                shader_start();
                draw_sprite_ext(sprite_get("article_impending_doom"), floor(37 - other.Tengia_pain_time/4.86), other.x - 2, other.y - ceil(other.char_height) - 64,1,1,0,-1,1 )
                shader_end();
                //draw_debug_text( other.x - 14, other.y - ceil(other.char_height) - 64,"+" + string(ceil(other.Tengia_pain)) + string("%"));
            }
        }
      
    }
}
