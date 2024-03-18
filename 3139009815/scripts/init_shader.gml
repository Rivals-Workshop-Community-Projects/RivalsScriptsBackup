var playerAlt = "currAlt" in self ? currAlt : get_player_color(player);

if "install_timer" in self && install_timer > 0 {
    set_character_color_slot(0, mask_r, mask_g, mask_b, 0.2);
    set_character_color_slot(1, mask_shade_r, mask_shade_g, mask_shade_b, 0.2);
    set_character_color_slot(2, mask_r, mask_g, mask_b, 0.2);
    set_character_color_slot(3, mask_shade_r, mask_shade_g, mask_shade_b, 0.2);
    set_character_color_slot(4, mask_r, mask_g, mask_b, 0.2);
    set_character_color_slot(5, mask_shade_r, mask_shade_g, mask_shade_b, 0.2);
    set_character_color_slot(6, knife_r, knife_g, knife_b, 0.2);
    set_character_color_slot(7, knife_shade_r, knife_shade_g, knife_shade_b, 0.2);
}

if (playerAlt == 23){// sets early access alt outline
    outline_color = [15, 56, 15];  
}