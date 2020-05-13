var counts = array_create(6, 0)

counts[0] = ds_count(ds_type_list)
counts[1] = ds_count(ds_type_map)
counts[2] = ds_count(ds_type_grid)
counts[3] = ds_count(ds_type_stack)
counts[4] = ds_count(ds_type_queue)
counts[5] = ds_count(ds_type_priority)

return counts