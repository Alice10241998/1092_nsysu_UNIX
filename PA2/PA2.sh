ls ~/X &> /dev/null || ln -s /dev/null ~/X
ls ~/_ &> /dev/null || ln -s ~/PA2/rooms ~/_
cd ~/PA2; rm -rf rooms; tar -xf rooms.tar
cd rooms/receivingRoom; PS1=">"

alias x='cat'
alias score='echo You have scored `(ls ~/_/treasureRoom/??[al]*)2>~/X | wc -l`0 points.'
alias quit='score && exit &>~/X'
alias nogo='echo You cannot go that way.'
alias n='basename `pwd` |fgrep -w s&>~/X &&cd .. || cd n&>~/X && disp || nogo'
alias s='basename `pwd` |fgrep -w n&>~/X &&cd .. || cd s&>~/X && disp || nogo'
alias e='basename `pwd` |fgrep -w w&>~/X &&cd .. || cd e&>~/X && disp || nogo'
alias w='basename `pwd` |fgrep -w e&>~/X &&cd .. || cd w&>~/X && disp || nogo'
alias d='basename `pwd` |fgrep -w u&>~/X &&cd .. || cd d&>~/X && disp || nogo'
alias ne='basename `pwd`|fgrep -w sw&>~/X&&cd .. || cd ne&>~/X&& disp || nogo'
alias sw='basename `pwd`|fgrep -w ne&>~/X&&cd .. || cd sw&>~/X&& disp || nogo'
alias se='echo *|fgrep -vw se>~/X&&basename `pwd`|fgrep -w nw&>~/X&&cd ..||cd se&>~/X&& disp || nogo'
alias nw='echo *|fgrep -vw nw>~/X&&basename `pwd`|fgrep -w se&>~/X&&cd ..||cd nw&>~/X&& disp || nogo'
alias u='echo *|fgrep -vw u>~/X&&basename `pwd`|fgrep -w d&>~/X&&cd ..||cd u&>~/X&& disp || nogo'

alias disp='cd `pwd -P`&&(head -n [19] de*;(mv 9 1;dispmessages;ls&>~/X)2>~/X)'
alias dispmessages='fgrep -hw `ls -d *| paste ~/_/es -` -h ~/_/There | cut -d\; -f1'
alias l='mv 1 9&>~/X;disp'

alias i='echo You currently have:;(cd ~/_/i/i;ls|xargs -n1 echo A|fgrep " ")'
alias getall='mv *[arokvw][xaslempt]*[etdyprmlsk] ~/_/i/_&>~/X||echo Nothing to take.; (cd ~/_/i/_;ls *&>~/X&&ls|xargs -n1 echo Taken: a )&&mv ~/_/i/_/* ~/_/i/i&>~/X'
alias dropweight='ls ~/_/i/i/w* bu*&>~/X&&mv ../d ../.d&&ln -s ~/_/b* ../d&&cd ~/_/b*&&cd `pwd -P`;(ls ~/_/i/i/w*>~/X||echo You do not have that.;mv ~/_/i/i/w* .&&echo Done.&&ls bu*>~/X&&echo A passageway opens.)2>~/X'
alias press='((cat|fgrep passageway || echo You cannot press that.) 2>~/X || echo I do not see that here.) <'
alias put='(ls urinal||ls chute)&>~/X||echo Nothing to put treasures into.;(ls urinal||ls chute)&>~/X&&(ls ~/_/i/i/??[al]*&>~/X||echo No treasure to put into it.);(ls chute&&mv ~/_/i/i/??[al]* ~/_/tr*)&>~/X&&echo You hear it slide down the chute and off into the distance.&&score;(ls u*>~/X&&mv ~/_/i/i/??[al]* ~/_&&echo You hear it plop down in some water below.)2>~/X'
alias flush='ls urinal &>~/X&&echo Whoooosh\!\!||echo I see nothing to flush.;ls urinal &>~/X&&mv ~/_/[^f]?[al]* ~/_/tr*&>~/X&&score'

l
