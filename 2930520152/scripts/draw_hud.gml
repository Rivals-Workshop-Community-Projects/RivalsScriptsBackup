
if(variable_instance_exists(self, "aether_alt_input") && variable_instance_exists(self, "practice")){
    if(state == PS_SPAWN){
        if(!aether_alt_input){
            draw_debug_text( temp_x-30, temp_y-15, "Taunt to enable Special Aether Input");
        } else {
            draw_debug_text( temp_x, temp_y-15, "Special Aether Input Enabled");
        }
    } else if(practice){
            switch((player%2)){
                case 0:
                {
                    if(!aether_alt_input){
                        draw_debug_text( temp_x+5, temp_y-15, "Parry Aether Input Enabled");
                        draw_debug_text( temp_x-35, temp_y-30, "Taunt to swap to Special Aether Input");
                    } else {
                        draw_debug_text( temp_x, temp_y-15, "Special Aether Input Enabled");
                        draw_debug_text( temp_x-30, temp_y-30, "Taunt to swap to Parry Aether Input");
                    }
                }
                break;
                case 1:
                {
                    if(!aether_alt_input){
                        draw_debug_text( temp_x+5, temp_y-30, "Parry Aether Input Enabled");
                        draw_debug_text( temp_x-35, temp_y-15, "Taunt to swap to Special Aether Input");
                    } else {
                        draw_debug_text( temp_x, temp_y-30, "Special Aether Input Enabled");
                        draw_debug_text( temp_x-30, temp_y-15, "Taunt to swap to Parry Aether Input");
                    }
                }
                break;
            }
    }
}