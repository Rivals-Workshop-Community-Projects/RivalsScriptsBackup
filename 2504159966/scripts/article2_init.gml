var sprs = [asset_get("railings_bg"), asset_get("ori_ground1_bg"), asset_get("earthbg_treeline")]
sprite_index = sprs[spawn_variables[0]]
image_index = spawn_variables[1]
image_xscale = spawn_variables[2]
image_yscale = image_xscale
x += spawn_variables[3] * 16
y += spawn_variables[4] * 16