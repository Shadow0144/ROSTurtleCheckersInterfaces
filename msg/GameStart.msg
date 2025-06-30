string lobby_name
string lobby_id
string black_player_name
string red_player_name
uint64 black_time_remaining_seconds
uint64 red_time_remaining_seconds
uint64 game_state # 0 - connecting, 1 - connected, 2 - black to move, 3 - red to move, 4 - game complete
uint64[] movable_tile_indices
uint64 checksum_sig