//got hit

if(fuse > fuse_max){
    fuse = fuse_max;
}

if(attack == AT_USPECIAL && window > 1){
    fuse = fuse_max;
}

if(state == PS_PRATFALL || state == PS_PRATLAND){
    fuse = fuse_max;
}