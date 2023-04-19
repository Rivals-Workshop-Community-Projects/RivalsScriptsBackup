sound_play(sound_get("roll"),0,-4,2);
buttonInfo = {x:0, y:0, hover:false};
syncUID = 25005; // 5005 is Karu's ID, 2 is for Lonin
isFurry = get_synced_var(player)==syncUID;
set_synced_var(player, isFurry?syncUID:0);
user_event(0);

cpuHoverPlayer = -1;
var c = array_create(5, -4);
with (asset_get("cs_playercursor_obj")) c[get_instance_player(self)] = self;
cursors = c;