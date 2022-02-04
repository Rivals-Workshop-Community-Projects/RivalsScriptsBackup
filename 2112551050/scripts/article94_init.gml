//background article for drawing stuff like sans' battle portraits, players will render on top
timer = 0;
state = 0;
state_timer = 0;

moveCounter = 0; //distance travelled right;

zTimer[0] = 0;
zTimer[1] = -20;
zTimer[2] = -40;

sprite_index = asset_get("empty_sprite");

mask_index = asset_get("empty_sprite");

gun_bar_vfx = hit_fx_create(sprite_get("gun_attack"), 12);