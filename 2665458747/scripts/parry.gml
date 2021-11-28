//asd

spawn_hit_fx( x, y-32, 144);
subst_timer = 120;

var plushy = instance_create(x-32*spr_dir, y-48, "obj_article1");
plushy.object_type = 1;
plushy.vsp = -7;
plushy.hsp = -3*spr_dir;
plushy.sub_rotation = random_func( 2, 5, false );
plushy.sprite_index = sprite_get("substitute");
plushy.grav_speed = 0.45;
plushy.sub_dir = spr_dir;
plushy.depth = -7