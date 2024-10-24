SET(WITH_MPI TRUE CACHE BOOL "")
SET(CMAKE_BUILD_TYPE "RelWithDebInfo" CACHE STRING "")
SET(WITH_MATC TRUE CACHE BOOL "")
SET(WITH_Mumps TRUE CACHE BOOL "")
SET(WITH_Hypre FALSE CACHE BOOL "")
SET(HYPRE_INCLUDE_DIR "/usr/include/hypre" CACHE PATH "")
SET(HYPREROOT "/usr" CACHE PATH "")
SET(WITH_ElmerIce TRUE CACHE BOOL "")
SET(Hypre_LIBRARIES "/usr/lib/x86_64-linux-gnu/libHYPRE.so;/usr/lib/x86_64-linux-gnu/libHYPRE_FEI.so;/usr/lib/x86_64-linux-gnu/libHYPRE_core.so" CACHE FILE "")
SET(ELMER_SOLVER_HOME "/usr/share/elmersolver" CACHE PATH "")

# ElmerGUI related.
SET(WITH_ELMERGUI TRUE CACHE BOOL "")
SET(WITH_QT5 TRUE CACHE BOOL "")
SET(WITH_OCC TRUE CACHE BOOL "")
SET(WITH_VTK FALSE CACHE BOOL "")
SET(WITH_PARAVIEW TRUE CACHE BOOL "")
SET(WITH_QWT FALSE CACHE BOOL "")
SET(WITH_LUA TRUE CACHE BOOL "")
