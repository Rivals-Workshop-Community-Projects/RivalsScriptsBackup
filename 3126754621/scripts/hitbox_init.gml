//hitbox_init

vfx_stock_explosion_large_red = hit_fx_create(sprite_get("stock_explosion_large_red"), 32)
vfx_stock_explosion_large = hit_fx_create(sprite_get("stock_explosion_large"), 32)
vfx_stock_explosion_small = hit_fx_create(sprite_get("stock_explosion_small"), 32)

state = 0
state_timer = 0

timer = 0

trail_segments = 16
trail_element = [undefined, undefined, 0] //x, y, angle
trail_arr = array_create(trail_segments, trail_element)
trail_index = 0 //incrementing index

//bomb
if attack == AT_JAB && hbox_num == 3 {
    srlink2_fuse_item = true
    fuse_item = 3
    fuse_item_hp = 1
    fuse_item_spr_fstrong = sprite_get("fstrong_bomb_overlay")
    
    //recall
    script = 0
    user_event(0)
}

//ruby
if attack == AT_NSPECIAL && hbox_num == 1 {
    srlink2_fuse_item = true
    fuse_item = 2
    fuse_item_hp = 2
    fuse_item_spr_fstrong = sprite_get("fstrong_ruby_overlay")
    
    //recall
    script = 0
    user_event(0)
}