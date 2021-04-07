//articlesolid_init
var closehitbox = instance_nearest(x, y, asset_get("pHitBox"));


with closehitbox
destroyed = true

hydrant_here = collision_rectangle( -1000, -1000, 3000, 3000, obj_article_solid, false, true );
if hydrant_here != noone
instance_destroy(self)

is_flying = true;
flydir = 1;

can_be_grounded = true;
ignores_walls = false;
uses_shader = false;

hp = 14;


sprite_index = sprite_get("FireHydrant");
mask_index = sprite_get("FireHydrant");