if (attack == 49 && hbox_num == 1) {
    if ("mamizou_youkai_num" in self) {
        switch (mamizou_youkai_num) {
            case 1:
                sprite_index = sprite_get("fx_youkai1");
                mask_index = sprite_get("fx_youkai_mask3");
                img_spd = 0.125;
                hsp = 8 * spr_dir;
            break;
            case 2:
                sprite_index = sprite_get("fx_youkai2");
                mask_index = sprite_get("fx_youkai_mask2");
                img_spd = 0.125;
                hsp = 7 * spr_dir;
            break;
            case 3:
                sprite_index = sprite_get("fx_youkai3");
                mask_index = sprite_get("fx_youkai_mask2");
                img_spd = 0.125;
                hsp = 8.5 * spr_dir;
            break;
            case 4:
                sprite_index = sprite_get("fx_youkai4");
                mask_index = sprite_get("fx_youkai_mask2");
                img_spd = 0.125;
                hsp = 7 * spr_dir;
            break;
            case 5:
                sprite_index = sprite_get("fx_youkai5");
                mask_index = sprite_get("fx_youkai_mask1");
                img_spd = 0.125;
                hsp = 6 * spr_dir;
            break;
            case 6:
                sprite_index = sprite_get("fx_youkai6");
                mask_index = sprite_get("fx_youkai_mask3");
                img_spd = 0.125;
                hsp = 8 * spr_dir;
            break;
            case 7:
                sprite_index = sprite_get("fx_youkai7");
                mask_index = sprite_get("fx_youkai_mask2");
                img_spd = 0.125;
                hsp = 7 * spr_dir;
            break;
            case 8:
                sprite_index = sprite_get("fx_youkai8");
                mask_index = sprite_get("fx_youkai_mask3");
                img_spd = 0.125;
                hsp = 8 * spr_dir;
            break;
            case 9:
                sprite_index = sprite_get("fx_youkai9");
                mask_index = sprite_get("fx_youkai_mask3");
                img_spd = 0.125;
                hsp = 7 * spr_dir;
            break;
            case 10:
                sprite_index = sprite_get("fx_youkai10");
                mask_index = sprite_get("fx_youkai_mask2");
                img_spd = 0.125;
                hsp = 9 * spr_dir;
            break;
        }
    }
}