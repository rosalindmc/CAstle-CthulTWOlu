/// @description draw text with an outline
/// @param {real} outline
/// @param {real} colour
/// @param {real} x
/// @param {real} y
/// @param {real} string

draw_set_colour(argument0)

draw_text(argument2-1,argument3+1,argument4)
draw_text(argument2-1,argument3,argument4)
draw_text(argument2-1,argument3-1,argument4)
draw_text(argument2+1,argument3+1,argument4)
draw_text(argument2+1,argument3,argument4)
draw_text(argument2+1,argument3-1,argument4)
draw_text(argument2,argument3+1,argument4)
draw_text(argument2,argument3-1,argument4)

draw_set_colour(argument1)
draw_text(argument2,argument3,argument4)