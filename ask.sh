#!/bin/bash

read -sp 'Enter PASS: ' PASS
echo
echo -e "#!/bin/bash\n\necho $PASS" > .pass.sh
chmod +x .pass.sh
echo $PASS > .sudo
