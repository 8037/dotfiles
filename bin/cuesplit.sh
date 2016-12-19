#!/bin/bash

# cuesplit.sh
# slightly modified version of sen's cuesplit.sh found here:
# https://bbs.archlinux.org/viewtopic.php?id=75774


# requires: cuetools, shntool
# optional: flac, mac, wavpack, ttaenc, dos2unix


for dir in */ ; do
	pushd "${dir}" || break
	
	dos2unix *.cue
	filetype=`ls -t1`

	case $filetype in
    *.ape*)
		mkdir split
        shnsplit -d split -f *.cue -o "flac flac -V --best -o %f -" *.ape -t "%n %p - %t"
        rm -f split/00*pregap*
        cuetag.sh *.cue split/*.flac
        ;;

    *.flac*)
		filename=(*.cue)
		foldername=${filename[@]%.cue}
		mkdir "${foldername}"
        shnsplit -d "${foldername}" -f *.cue -o "flac flac -V --best -o %f -" *.flac -t "%n %p - %t"
        rm -f "${foldername}"/00*pregap*
        cuetag.sh *.cue "${foldername}"/*.flac
        ;;

    *.mp3*)
        mp3splt -no "@n @p - @t (split)" -c *.cue *.mp3
        cuetag.sh *.cue *split\).mp3
        ;;

    *.ogg*)
        mp3splt -no "@n @p - @t (split)" -c *.cue *.ogg
        cuetag.sh *.cue *split\).ogg
        ;;

    *.tta*)
		filename=(*.cue)
		foldername=${filename[@]%.cue}
		mkdir "${foldername}"

        shnsplit -d "${foldername}" -f *.cue -o "flac flac -V --best -o %f -" *.tta -t "%n %p - %t"
        rm -f "${foldername}"/00*pregap*
        cuetag.sh *.cue "${foldername}"/*.flac
        ;;

    *.wv*)
        mkdir split
        shnsplit -d split -f *.cue -o "flac flac -V --best -o %f -" *.wv -t "%n %p - %t"
        rm -f split/00*pregap*
        cuetag.sh *.cue split/*.flac
        ;;

    *.wav*)
		filename=(*.cue)
		foldername=${filename[@]%.cue}
        mkdir "${foldername}"
        shnsplit -d "${foldername}" -f *.cue -o "flac flac -V --best -o %f -" *.wav -t "%n %p - %t"
        rm -f "${foldername}"/00*pregap*
        cuetag.sh *.cue "${foldername}"/*.flac
        ;;

    * )
    echo "Error: Found no files to split!"
    echo "       --> APE, FLAC, MP3, OGG, TTA, WV, WAV"
	esac

	popd
done
exit
