/// @desc Function Description
/// @param {real} x1 Description
/// @param {real} y1 Description
/// @param {real} x2 Description
/// @param {real} y2 Description
/// @param {any*} obj Description
/// @param {bool} prec Description
/// @param {bool} notme Description
/// @param {bool} ordered Description
function collision_line_array(x1,y1,x2,y2,obj,prec,notme,ordered){
	var list = ds_list_create()
	collision_line_list(x1,y1,x2,y2,obj,prec,notme,list,ordered);
	var array = ds_list_to_array(list);
	ds_list_destroy(list);
	return array;
}
