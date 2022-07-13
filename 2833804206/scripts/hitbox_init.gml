//hitbox_init

if attack == AT_FSTRONG && hbox_num == 1 {
    var hitbox = create_hitbox(AT_FSTRONG, 2, floor(x+hsp), floor(y+vsp))
        hitbox.owner = id
}