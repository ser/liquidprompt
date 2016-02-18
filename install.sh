#!/bin/bash
rm -rf ~/.liquidprompt
git clone https://github.com/nojhan/liquidprompt.git ~/.liquidprompt
cat <<EOF >> ~/.bashrc
# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ \$- = *i*  ]] && source ~/.liquidprompt/liquidprompt
EOF
rsync liquidpromptrc ~/.liquidpromptrc
echo LIFE IS LIQUID NOW
