voice_button = 0;

cursor_x = get_instance_x(cursor_id);
cursor_y = get_instance_y(cursor_id);

voice_button_x = 180
voice_button_y = 35
//secret_alt_on = false;
//voice_button_index_draw = 0;

//save data
synced_vars = [voice_button];
if (get_synced_var(player) != 0 && !init)
{
    for (var i = 0; i < 3; i++) synced_vars[i] = (get_synced_var(player) >> (i * 4)) & 0xf;
    voice_button = synced_vars[0];
}
else set_synced_var(player, 0);

//cpu css toggle helper (by supersonic)
cpu_hover_init();

#define cpu_hover_init()
cpu_hovering_player = -1; //the current player that's hovering the cpu. -1 for nobody
cpu_is_hovered = -1; //whether the cpu is hovered currently.
cpu_hover_time = 0; //the timer for the cpu hover indicator
cpu_color_swap_time = 0; //the timer for the cpu indicator's smooth color swap
cpuh_prev_color = c_gray;
cpuh_new_color = c_gray;

var c = [-4,-4,-4,-4,-4];
with (asset_get("cs_playercursor_obj")) { //this sets the cursor array
    c[get_instance_player(self)] = self;
}
cursors = c;

x = floor(x); //hehe
y = floor(y);
plate_bounds = [x,y,x+219,y+207]; //boundaries of the player plate
portrait_bounds = [x+10,y+10,x+210,y+151]; //boundaries of the player portrait. unused but useful
cpu_hover_sprite = sprite_get("cpu_controllingplayer_outline"); //the outline sprite.