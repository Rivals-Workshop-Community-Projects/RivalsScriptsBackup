//article1_init

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("choochoo_plat_collision");

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

UnReflectable = true;
Pocketable = false;
choochoo = noone;

plat_on = true;plat_on2 = true;toggleplatform = false;
if("property" not in self)property = false;