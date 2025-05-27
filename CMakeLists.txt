cmake_minimum_required(VERSION 3.5)
project(turtle_checkers_interfaces)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++17
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# Find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/DeclareWinner.msg"
  "msg/DrawDeclined.msg"
  "msg/DrawOffered.msg"
  "msg/Forfit.msg"
  "msg/GameStart.msg"
  "msg/LeaveLobby.msg"
  "msg/LogOutAccount.msg"
  "msg/OfferDraw.msg"
  "msg/PlayerJoinedLobby.msg"
  "msg/PlayerLeftLobby.msg"
  "msg/PlayerReady.msg"
  "msg/PlayerReadied.msg"
  "msg/UpdateBoard.msg"
  "srv/ConnectToGameMaster.srv"
  "srv/CreateAccount.srv"
  "srv/CreateLobby.srv"
  "srv/GetLobbyList.srv"
  "srv/JoinLobby.srv"
  "srv/LogInAccount.srv"
  "srv/RequestBoardState.srv"
  "srv/RequestPieceMove.srv"
  "srv/RequestReachableTiles.srv"
)

ament_export_dependencies(rosidl_default_runtime)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()