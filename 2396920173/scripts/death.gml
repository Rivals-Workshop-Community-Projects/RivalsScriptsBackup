// called when the character gets KO'd
piece = "P"

pawn_meter = pawn_meter_default;
can_increment = true;
shake_timer = 0;
pawn_move_timer = 0;
rook_cannon = undefined; //[x, y, rotation, image_index]
missile_timer = 0;
range_dist = 0;
target_player = undefined;
missile_angle = 0;
draw_missile = false;
king_armour = false;
armour_timer = 0;
armour_cooldown = 0;
queen_active = false;
queen_timer_max = 480;
queen_timer = 0;

fs_force_fs = false;

if piece_id != undefined && instance_exists(piece_id) {
    instance_destroy(piece_id);
}
piece_id = undefined;

if target_player != undefined && instance_exists(target_player) {
    target_player.draw_reticle = false;
}
target_player = undefined;
user_event(0)