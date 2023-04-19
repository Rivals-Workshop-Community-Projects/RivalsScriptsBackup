if attack = AT_NSPECIAL && hbox_num = 1{
    rag_lv = floor(player_id.ragnarok_lv/10);
    player_id.ragnarok_lv = 0;
    var fx = instance_create(x - 20 * spr_dir, y, "obj_article2");
    fx.particle_type = 2;
    fx.sprite_index = sprite_get("ragnarok_projectile_after");
    fx.timer = 19;
    fx.spr_dir = spr_dir;
    fx.image_alpha = 19/20;
    var fx2 = instance_create(x - 40 * spr_dir, y, "obj_article2");
    fx2.particle_type = 2;
    fx2.sprite_index = sprite_get("ragnarok_projectile_after");
    fx2.timer = 18;
    fx2.spr_dir = spr_dir;
    fx2.image_alpha = 18/20;
}