/// my_hitboxID.attack
shader_start();
with asset_get("oPlayer") {
    if "Tengia_pain_id" in self {
        
        if Tengia_pain_time > 0 && Tengia_pain_time < 175 && Tengia_pain_id == other {
            with Tengia_pain_id {
                draw_sprite_ext(sprite_get("article_impending_doom"), floor(37 - other.Tengia_pain_time/4.86), other.x, other.y - 120,1,1,0,-1,1 )
            }
        }
      
    }
}
shader_end();