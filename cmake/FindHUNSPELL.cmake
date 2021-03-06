# - Try to find HUNSPELL
# Once done this will define
#
#  HUNSPELL_FOUND - system has HUNSPELL
#  HUNSPELL_INCLUDE_DIR - the HUNSPELL include directory
#  HUNSPELL_LIBRARIES - The libraries needed to use HUNSPELL
#  HUNSPELL_DEFINITIONS - Compiler switches required for using HUNSPELL


IF (HUNSPELL_INCLUDE_DIR AND HUNSPELL_LIBRARIES)
  # Already in cache, be silent
  SET(HUNSPELL_FIND_QUIETLY TRUE)
ENDIF (HUNSPELL_INCLUDE_DIR AND HUNSPELL_LIBRARIES)

FIND_PATH(HUNSPELL_INCLUDE_DIR hunspell/hunspell.hxx )

FIND_LIBRARY(HUNSPELL_LIBRARIES NAMES hunspell-1.2 hunspell-1.3)

# handle the QUIETLY and REQUIRED arguments and set HUNSPELL_FOUND to TRUE if 
# all listed variables are TRUE
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(HUNSPELL DEFAULT_MSG HUNSPELL_LIBRARIES HUNSPELL_INCLUDE_DIR)


MARK_AS_ADVANCED(HUNSPELL_INCLUDE_DIR HUNSPELL_LIBRARIES)
