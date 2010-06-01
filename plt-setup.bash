
function pltswitch() {
 H="$1"; shift
 if [[ -d "$1" ]]; then H=`cd "$1";pwd`; shift; fi
 if [[ $# == 0 ]]; then
   export PLTHOME="$H"
   unset PLTCOLLECTS
   echo "Using ${PLTHOME:-default}"
   export MANPATH=$MANPATH:$PLTHOME/man
 else
   PLTHOME="$H" PLTCOLLECTS="" "$@"
 fi
}
function plt() {
 pltswitch ~/sw/plt "$@"
}
