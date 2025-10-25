buttonInfo = {x:0, y:0, hover:false};
syncUID = 5606;
dash_toggle = get_synced_var(player);
set_synced_var(player, dash_toggle);
user_event(0);

cpuHoverPlayer = -1;
var c = array_create(5, -4);
with (asset_get("cs_playercursor_obj")) c[get_instance_player(self)] = self;
cursors = c;

sprite_change_offset("dash_icon", 0, 0);