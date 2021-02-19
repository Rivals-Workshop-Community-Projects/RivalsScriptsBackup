//find nearest cube

var varCubeDist = 100000000000000000;
var varCubeNearest = undefined;
with obj_article_solid {
    if variable_instance_exists(self, "isTrash") && distance_to_point(other.x, other.y) < varCubeDist {
        varCubeNearest = id;
        varCubeDist = distance_to_point(other.x, other.y);
    }
}
with pHitBox {
    if !destroyed && variable_instance_exists(self, "isTrash") && attack == AT_NSPECIAL && hbox_num == 1 && distance_to_point(other.x, other.y) < varCubeDist {
        varCubeNearest = id;
        varCubeDist = distance_to_point(other.x, other.y);
    }
}
cubeDist = varCubeDist;
cubeNearest = varCubeNearest;