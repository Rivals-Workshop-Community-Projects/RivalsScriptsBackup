//parry.gml

sound_play(sound_get("parried"));
shake_camera(4, 12)

if has_rune("K") {
  daigomode = 1   
  with asset_get(oPLayer) {
        hitstop += 14
  }
  sound_play(asset_get("sfx_ori_grenade_launch"));
}