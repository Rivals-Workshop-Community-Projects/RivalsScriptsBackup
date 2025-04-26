//hitbox_init

fx = noone;
artc = noone;

if (destroy_fx == 0) destroy_fx = hit_effect;

switch (attack)
{
    case AT_USTRONG:
        if (player_id.rune_H_active && hbox_num == 4)
        {
            artc = instance_create(x, y, "obj_article1");
            artc.state = "hook_chain";
            artc.chain_start[0] = player_id.x + 40 * player_id.spr_dir;
            artc.chain_start[1] = player_id.y - 32 - 6 * player_id.spr_dir;
            artc.chain_end[0] = x;
            artc.chain_end[1] = y;
        }
        break;
    case AT_EXTRA_2: //light hookshot
        if (hbox_num == 1)
        {
            artc = instance_create(x, y, "obj_article1");
            artc.state = "hook_chain";
            artc.chain_end[0] = x;
            artc.chain_end[1] = y;
        }
        break;
    case AT_USPECIAL_2: //polaris
        proj_speed = 25; //20
        proj_turn_spd = 0.07;
        hit_sound_played = false;
        home_id = noone;

        shoot_projectile = false;
        saved_size_x = image_xscale;
        saved_size_y = image_yscale;
        image_xscale = 0;
        image_yscale = 0;
        break;
    case AT_EXTRA_1: //chasm burster
        var ex_vfx = spawn_hit_fx(x, y-y_pos, player_id.fx_skill11_chasm);
        ex_vfx.depth = depth-1;
        break;
}