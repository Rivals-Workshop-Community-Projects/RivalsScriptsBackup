
// Release anyone we may have grabbed
with (asset_get("oPlayer")) {
    if (RETROBLAST_HOLDER_ID == other.id) {
        RETROBLAST_HOLDER_ID = noone;
    }
    if (RETROBLAST_TARGETTING_ME == other.id) {
        RETROBLAST_TARGETTING_ME = noone;
        RETROBLAST_TARGET_STACKS = 0;
    }
}