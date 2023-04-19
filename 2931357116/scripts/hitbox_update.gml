if attack = AT_NSPECIAL && hbox_num = 1{
    var fx = instance_create(x, y, "obj_article2");
    fx.particle_type = 2;
    fx.timer = 20;
    fx.image_alpha = 1;
    fx.spr_dir = spr_dir;
    if !player_id.form player_id.move_cooldown[AT_NSPECIAL] = 10;
}

if attack == AT_FSPECIAL && hbox_num == 1 || hbox_num == 5{
    if image_index >= (hbox_num = 5? 12: 10){
        can_hit[1] = 0;
        can_hit[2] = 0;
        can_hit[3] = 0;
        can_hit[4] = 0;
    }
    if hbox_num == 5 && hitbox_timer == length - 2 && !instance_exists(player_id.fsp_grab) && !player_id.was_parried{
        var n = instance_create(x, y,"obj_article1");
        n.type = 1;
        n.spr_dir = spr_dir;
    }
    if instance_exists(collision_rectangle(x, y, x + hsp, y, asset_get("par_block"), 1, 1)) && hbox_num == 1{
        player_id.window = 6;
        player_id.window_timer = 0;
        player_id.proj_pos = [x, y];
        player_id.move_cooldown[AT_FSPECIAL] = 5;
        sound_play(sound_get("KB_hitweak1"));
        instance_destroy(self);
    }
}