ls ~/X &> /dev/null || ln -s /dev/null ~/X
ls ~/_ &> /dev/null || ln -s ~/PA2/rooms ~/_
cd ~/PA2; rm -rf rooms; tar -xf rooms.tar
cd rooms/receivingRoom; PS1=">"

alias x='cat'
alias score='echo You have scored `ls ~/_/treasureRoom/*[emgil][lonv][enlu][tdmr] 2> ~/X | wc -l`0 points.'
alias quit='score; exit'
alias nogo='echo You cannot go that way.'
alias n='basename `pwd` | fgrep -w s &> ~/X && cd .. || cd n &> ~/X && disp || nogo'
alias e='basename `pwd` | fgrep -w w &> ~/X && cd .. || cd e &> ~/X && disp || nogo'
alias s='basename `pwd` | fgrep -w n &> ~/X && cd .. || cd s &> ~/X && disp || nogo'
alias w='basename `pwd` | fgrep -w e &> ~/X && cd .. || cd w &> ~/X && disp || nogo'
alias sw='basename `pwd` | fgrep -w ne &> ~/X && cd .. || cd sw &> ~/X && disp || nogo'
alias nw='basename `pwd` | fgrep -w se &> ~/X && cd .. || cd nw &> ~/X && disp || nogo'
alias d='basename `pwd` | fgrep -w u &> ~/X && cd .. || cd d &> ~/X && disp || nogo'
alias ne='! echo `ls` | fgrep -w ne &> ~/X && basename `pwd` | fgrep -w sw &> ~/X && cd .. || cd ne &> ~/X && disp || nogo'
alias se='! echo `ls` | fgrep -w se &> ~/X && basename `pwd` | fgrep -w nw &> ~/X && cd .. || cd se &> ~/X && disp || nogo'
alias u='! echo `ls` | fgrep -w u &> ~/X && basename `pwd` | fgrep -w d &> ~/X && cd .. || cd u &> ~/X && disp || nogo'

alias l='mv 1 9 &> ~/X; disp'
alias disp='cd `pwd -P` && (head -n `ls [19]` description; (mv 9 1 &> ~/X; dispmessages))'
alias dispmessages='fgrep -hw `ls | paste -d" " ~/_/es -` -h ~/_/There | cut -d";" -f1; ls > ~/X'

alias i='echo You currently have:; (cd ~/_/i/i; ls | xargs -n1 echo A | fgrep " ")'
alias getall='mv *[akrolw][xemcpltvm][eysopdi]* ~/_/i/_ &> ~/X || echo Nothing to take.; (cd ~/_/i/_; ls | xargs -n1 echo Taken: a | fgrep "a ") && mv ~/_/i/_/* ~/_/i/i &> ~/X'
alias dropweight='ls ~/_/i/i/weight &> ~/X && ls | grep -w button &> ~/X && cd .. && (mv d .d; ln -s ~/_/buttonRoom d) && cd d; (ls ~/_/i/i/weight &> ~/X || echo You do not have that.; ls ~/_/i/i/weight &> ~/X && mv ~/_/i/i/weight . && echo Done. && ls | grep -w button &> ~/X && echo A passageway opens.) 2> ~/X'
alias press='(cat | fgrep -w passageway || echo You cannot press that.) <'
alias put='(ls | fgrep -w chute &> ~/X && (((mv ~/_/i/i/*[emgil][lonv][enlu][tdmr] ~/_/treasureRoom/ &> ~/X ) && (echo You hear it slide down the chute and off into the distance.;score)) || echo No treasure to put into it.)) || (ls | fgrep -w urinal&> ~/X && (((mv ~/_/i/i/*[emgil][lonv][enlu][tdmr] ~/_ &> ~/X ) && (echo You hear it plop down in some water below.)) || echo No treasure to put into it. )) || echo Nothing to put treasures into.'
alias flush='ls urinal &> ~/X && echo Whoooosh!! || echo I see nothing to flush.; mv ~/_/*[emgil][lonv][enlu][tdmr] ~/_/treasureRoom/ &> ~/X && score'

l
