/// @description draw text with an outline
/// @param {real} outline
/// @param {real} colour
/// @param {real} x
/// @param {real} y
/// @param {real} string
/// @param {real} width

draw_set_colour(argument0)

draw_text_ext(argument2-1,argument3+1,argument4,18,argument5)
draw_text_ext(argument2-1,argument3,argument4,18,argument5)
draw_text_ext(argument2-1,argument3-1,argument4,18,argument5)
draw_text_ext(argument2+1,argument3+1,argument4,18,argument5)
draw_text_ext(argument2+1,argument3,argument4,18,argument5)
draw_text_ext(argument2+1,argument3-1,argument4,18,argument5)
draw_text_ext(argument2,argument3+1,argument4,18,argument5)
draw_text_ext(argument2,argument3-1,argument4,18,argument5)

draw_set_colour(argument1)
draw_text_ext(argument2,argument3,argument4,18,argument5)