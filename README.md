# CLDB
Shared nothing shared database based on rocksdb and wangle. Uses folly heavily.

docker build -t cldb-dev docker/
cldbbuild() { docker run -v $HOME/dev/cldb/:/cldb -u $(id -u):$(id -g) -w /cldb -t cldb-dev "$@"; }

cldbbuild bazel build //include/cldb/exchanges:exchs --verbose_failures --sandbox_debug
^^^ a good test of completeness
