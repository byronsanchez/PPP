# Copies playlists from one directory to a folder, as long as the file is a .m3u
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $SCRIPTDIR/variables.sh;

rm -f $plex_playlists/*;
cd $playlists;

for f in *.m3u8; do
    cp -prv -- "$f" "${plex_playlists}/${f%.m3u8}.m3u"
done
