// called when the character gets KO'd

enum _ {
    PS_NA, // not applicable
    PS_PULLING, // pulling perch
    PS_HANGING, // hanging from perch
    PS_GRAPPLING, // grappling to object
}
perch_state = _.PS_NA;
if instance_exists(perch_target) && perch_target.object_index == pHitBox {
    instance_destroy(perch_target);
}
perch_target = noone;
shotgun_loaded = false;
outline_color = [0,0,0];
init_shader();
grabbed_player = noone;
// if !has_rune("B") {
//     move_cooldown[AT_FSPECIAL] = 360;
// }