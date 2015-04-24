[ -n "$VERBOSE" ] && set -x
rm -rf ${ARENA:=test-arena}
mkdir -p $ARENA
top_builddir=`cd ${top_builddir-.}; pwd`
INTERDIFF=${top_builddir}/src/interdiff
REDIFF=${top_builddir}/src/rediff
COMBINEDIFF=${top_builddir}/src/combinediff
FLIPDIFF=${top_builddir}/src/flipdiff
LSDIFF=${top_builddir}/src/lsdiff
GREPDIFF=${top_builddir}/src/grepdiff
FILTERDIFF=${top_builddir}/src/filterdiff
SELECTDIFF=${top_builddir}/src/selectdiff
RECOUNTDIFF=${top_builddir}/scripts/recountdiff
UNWRAPDIFF=${top_builddir}/scripts/unwrapdiff
SPLITDIFF=${top_builddir}/scripts/splitdiff
export LSDIFF
: ${DIFF:=diff}
: ${PATCH:=patch -s}
cd $ARENA
if [ -n "$LxINENO" ]; then
  export PS4='[$LINENO] '
fi
set -x
