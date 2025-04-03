string lobby_name
uint64 game_state # 0 - connecting, 1 - connected, 2 - black to move, 3 - red to move, 4 - game complete
uint64[] movable_tile_indices
uint64 checksum_sig