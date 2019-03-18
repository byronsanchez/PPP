SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $SCRIPTDIR/variables.sh;

# cd $plex_playlists && sed -i 's|C:\\Users\\bfs50\\music|C:\\Users\\bfs50\\Music|g' *

# Remove BOM from m3u8 playlists
cd $plex_playlists && sed -i '1s/^\xEF\xBB\xBF//' *

# This many backslashes are needed to 'escape' each initial backslash. The things to change here are:
# '\\\\server\\Uluru' is the path you want to remove from the .m3u text
# ... to replace it with 'D:'
