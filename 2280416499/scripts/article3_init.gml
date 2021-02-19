//plat

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("platform_mask");
depth = 28;

with asset_get("obj_stage_article_solid") if num == 1 other.owner = self;

dir = 0;
width = 0; //measured in tiles; doubled before use
segments = [];
segments_pos = [];
is_off = false;

inited = false;

real_y = y;
fake_y = room_height + 64;
y = fake_y;

state = 0;
state_timer = 0;