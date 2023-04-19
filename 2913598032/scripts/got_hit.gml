//print(string(attack));
if (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR){
    switch (attack) {
        case AT_DTILT:
        case AT_DAIR:
            if (can_drop_item) {
                print("oop");
                lose_item(0);
            } 
            break;
        case AT_UTILT:
        case AT_UAIR:
            if (can_drop_item) lose_item(1);
            break;
        case AT_FTILT:
        case AT_FAIR:
        case AT_BAIR:
            if (can_drop_item) lose_item(2);
            break;
        case AT_JAB:
        case AT_DATTACK:
        case AT_NAIR:
            print(window);
            if (can_drop_item) lose_item(3);
            break;
    }
}

switch (takewhatyewill) {
    case 0:
        rmb_sound(sfx_take);
        takewhatyewill += 1;
        break;
    case 1:
        rmb_sound(sfx_what);
        takewhatyewill += 1;
        break;
    case 2:
        rmb_sound(sfx_ye);
        takewhatyewill += 1;
        break;
    case 3:
        rmb_sound(sfx_will);
        takewhatyewill = 0;
        break;
}

#define rmb_sound(sound)
if (voices > 0) sound_play(sound);

#define lose_item(item_index)
items_held[item_index] = false;
if (!instance_exists(items[item_index])) {
    items[item_index] = instance_create(x, y - 10, "obj_article1");
    items[item_index].vsp = -8;
    items[item_index].hsp = 6 * spr_dir;
    items[item_index].item_id = item_index;
    items[item_index].item_set = true;
}
