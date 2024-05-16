//Loads and sets an offset for article sprites.
   sprite_change_offset(("cover"), 0, 0);
   sprite_change_offset(("music_display_bg"), 0, 0);
   sprite_change_offset(("lumafly"), 1, -1);
   sprite_change_offset(("vines_a"), 375, 24);
   sprite_change_offset(("vines_b"), 400, -16);
   sprite_change_offset(("vines_c"), 350, -22);
   sprite_change_offset(("arch"), 0, 2);
   sprite_change_offset(("wall"), -8, -6);
   sprite_change_offset(("aluba_large"), 0, 0);
   sprite_change_offset(("aluba_small"), 0, 2);
   
   sprite_change_offset(("a_vines_a"), 375, 24);
   sprite_change_offset(("a_vines_b"), 400, -16);
   sprite_change_offset(("a_vines_c"), 350, -22);
   sprite_change_offset(("a_arch"), 0, 2);
   sprite_change_offset(("a_wall"), -8, -6);
   sprite_change_offset(("a_aluba_large"), 0, 0);
   sprite_change_offset(("a_aluba_small"), 0, 2);
   
//Sets the acid layer offsets for Aether.
   if is_aether_stage() {
   set_bg_data(8, BG_LAYER_Y, 308)
   set_bg_data(9, BG_LAYER_Y, 308)
   }