event_inherited()
shader_time += 0.05
shader_set(shd_underwater)
shader_set_uniform_f(shader_get_uniform(shd_underwater, "time"), shader_time)
draw_self()
shader_reset()