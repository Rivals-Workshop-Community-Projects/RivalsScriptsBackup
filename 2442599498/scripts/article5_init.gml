//solid walls
timer = 0;

depth = 5;
sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("solid_hurt");

end_width = 0;
end_height = 0;

//for top drawing rectangle
x1 = 0;
x2 = 0;

y1 = 0;

remove = false; //true if being destroyed
remove_timer = 0;

can_deal_damage = false;