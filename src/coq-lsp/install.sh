#!/bin/bash

if [[ ${version} == "" ]]; then

sudo -i -u ${_CONTAINER_USER} bash << EOF
# to make asdf available
. ~/.asdf/asdf.sh

opam init --bare --yes --disable-sandboxing --shell-setup
opam switch create 4.14.1
eval $(opam env --switch=4.14.1)
opam install --yes coq-lsp
EOF

else

sudo -i -u ${_CONTAINER_USER} bash << EOF
# to make asdf available
. ~/.asdf/asdf.sh

opam init --bare --yes --disable-sandboxing --shell-setup
opam switch create 4.14.1
eval $(opam env --switch=4.14.1)
opam install --yes coq-lsp.${version}
EOF

fi
