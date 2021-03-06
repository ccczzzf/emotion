# - Config file for the find_face_landmarks package
# It defines the following variables
#  FIND_FACE_LANDMARKS_INCLUDE_DIRS - include directories for find_face_landmarks
#  FIND_FACE_LANDMARKS_LIBRARIES    - libraries to link against
#  FIND_FACE_LANDMARKS_EXECUTABLE   - the find_face_landmarks executable
 
# Calculated paths
get_filename_component(FIND_FACE_LANDMARKS_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" DIRECTORY)
set(FIND_FACE_LANDMARKS_INCLUDE_DIRS "D:/Dev/Shared/Installations/vc14/find_face_landmarks/include")

# Our library dependencies (contains definitions for IMPORTED targets)
if(NOT TARGET find_face_landmarks AND NOT find_face_landmarks_BINARY_DIR)
  include("${FIND_FACE_LANDMARKS_CMAKE_DIR}/find_face_landmarks-targets.cmake")
endif()
 
# These are IMPORTED targets created by find_face_landmarks-targets.cmake
set(FIND_FACE_LANDMARKS_LIBRARIES sequence_face_landmarks)
if(TARGET find_face_landmarks)
	set(FIND_FACE_LANDMARKS_EXECUTABLE cache_face_landmarks)
endif()

if(find_face_landmarks_FOUND)
	message(STATUS "Found find_face_landmarks!")
endif()
