if is_aether_stage() {
    fx_coin = hit_fx_create(sprite_get("coin"), 15);
    
    mob_handler = instance_create(0,0, "obj_stage_article", 9);
    
    // block plats
    instance_create(280, 184, "obj_stage_article_solid", 8);
    instance_create(886, 184, "obj_stage_article_solid", 8);
    instance_create(420, 318, "obj_stage_article_solid", 8);
    instance_create(746, 318, "obj_stage_article_solid", 8);
}
else {
    // toad
    instance_create(0, 0, "obj_stage_article", 10);
}
