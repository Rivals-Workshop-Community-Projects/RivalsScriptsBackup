//css_init.gml
user_event(2); // set swappable colours

//set_synced_var( player, random_func( 10, 6, true ) );
var sync = get_synced_var(player)
// print('synced var: ' + string(sync))
if sync == 0 or (sync < 10 or sync > (total_tournaments*10 + total_playtesters)) {
  var tens = 3 // vortex, tournament skins
  var ones = current_time%6 // 'randomized' playtester skins
  set_synced_var( player, tens*10 + ones );
  // print('new synced var: ' + string(tens*10 + ones))
}
init_shader();

css_anim_time = 0;

//set these positions in css_update, not here
icon_x_pos = 0; //icon placement for the event/unlock based alts from rivals
icon_y_pos = 0;
preview_x = 0; //preview char
preview_y = 0;

//ALT NAMES
alt_name[0] = "La Reina";
alt_name[1] = "Azure Legend"; //"Leyenda de Azul";
alt_name[2] = "Ladybug";
alt_name[3] = "Watermelon";
alt_name[4] = "Silver Legend";//"Leyenda de Plata";
alt_name[5] = "La Avispa";
// INSERT SEASONAL
alt_name[6] = "Armorclad"; // "Custom 1"
alt_name[7] = "R. Miga"; // "Custom 2"
alt_name[8] = "Abyss";
alt_name[9] = "Early Access";
alt_name[10] = "Ranked Gold";
// INSERT RoA2
alt_name[11] = "Playtester: ";
alt_name[12] = "Tournament: ";
alt_name[13] = "Rivals of Aether II";


alt_cur = 0; //checks current alt
alt_prev = 0; //checks previous alt
alt_total = array_length(alt_name); //sets the alt total depending on the amount of alt names provided



//ANIMATION VARS
sprite_change_offset("idle", 10, 40); //should mimic the load.gml offsets

preview_idle = sprite_get("idle");
preview_scale = 2; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //should mimic "idle_anim_speed" - controls the sprites animation speed



icon_x_pos = x + 174;
icon_y_pos = y + 108;
preview_x = floor(x+10);
preview_y = floor(y+10);

//alt swap buttons
up_button_state = 0;
up_button_press_timer = 0;
/* up_button_x = 80;
up_button_y = 14; */
up_button_x = 174;
up_button_y = 108;
up_button_w = up_button_x + sprite_get_width(sprite_get("css_buttons")) * 2;
up_button_h = up_button_y + sprite_get_height(sprite_get("css_buttons")) * 2;

/* down_button_state = 0;
down_button_press_timer = 0;
down_button_x = up_button_x;
down_button_y = up_button_h;
down_button_w = down_button_x + sprite_get_width(sprite_get("css_buttons")) * 2;
down_button_h = down_button_y + sprite_get_height(sprite_get("css_buttons")) * 2; */
