ls ~/X &> /dev/null || ln -s /dev/null ~/X
rm -rf ~/_ &>/dev/null;ln -s ~/PA3/rooms ~/_; cd ~/PA3
chmod 700 -R rooms &> ~/X; rm -rf rooms; tar xf rooms.tar
chmod 400 rooms/mistyRoom/e/e/n/w
cd rooms/receivingRoom; cd .
cutfl="c1-4 --complement"

alias look='l'
alias examine='x'
alias inventory='i'
alias take='get'
alias throw='drop'
alias chop='break'
alias l='mv 1 9&>~/X;disp'
alias disp='cd `pwd -P`&&(grue;ls ~/_/grue>&~/X||(head -n `ls [19]` de*&&mv 9 1&&dispmessages)2>~/X;echo>~/X)'
alias dispmessages='cat ~/_/grue 2>~/X || grep -hw `ls -d *| paste ~/_/es -` -h ~/_/T*|cut -d\; -f1'
alias grue='(ls ~/_/i/i/lamp>&~/X||ls lamp>&~/X||pwd|egrep -q -egRoom/\?e\?$ -enw/s || (echo "It is pitch dark.  You are likely to be eaten by a grue." | tee ~/_/grue de*))'
alias x='cat'
alias i='echo You currently have:;(cd ~/_/i/i;ls|xargs -n1 echo A|fgrep " ")'
alias press='((cat|fgrep passageway || echo You cannot press that.) 2>~/X || echo I do not see that here.) <'

alias put='(ls urinal||ls chute)&>~/X||echo Nothing to put treasures into.;(ls urinal||ls chute)&>~/X&&(ls ~/_/i/i/??[al]*&>~/X||echo No treasure to put into it.);(ls chute&&mv ~/_/i/i/[bd]* ~/_/tr*)&>~/X&&echo You hear it slide down the chute and off into the distance.&&score;(ls u*>~/X&&mv ~/_/i/i/??[al]* ~/_&&echo You hear it plop down in some water below.)2>~/X'
alias flush='echo Whoooosh!!;mv ~/_/[bg][ro]* ~/_/tr*&>~/X&&score'
alias score='echo You have scored `(ls ~/_/treasureRoom/?[lori][al]*)2>~/X | wc -l | xargs expr 10 \*` points.'
alias quit='score && exit>&~/X'

alias get='~/PA3/get'
alias drop='~/PA3/drop'
alias turn='source ~/PA3/turn2'
alias break='source ~/PA3/break2'

alias u='grueK; cd u &>~/X && disp ||~/PA3/cantmove u ||cd u >&~/X ||movetry2'
alias d='grueK; cd d &>~/X && disp ||~/PA3/cantmove d ||cd d >&~/X ||movetry2'
alias w='grueK; cd w &>~/X && disp ||~/PA3/cantmove w ||cd w >&~/X ||movetry2'
alias n='grueK; cd n &>~/X && disp ||~/PA3/cantmove n ||cd n >&~/X ||movetry2'
alias ne='grueK;cd ne&>~/X && disp ||~/PA3/cantmove ne||cd ne>&~/X ||movetry2'
alias nw='grueK;cd nw&>~/X && disp ||~/PA3/cantmove nw||cd nw>&~/X ||movetry2'
alias se='grueK;cd se&>~/X && disp ||~/PA3/cantmove se||cd se>&~/X ||movetry2'
alias sw='grueK;cd sw&>~/X && disp ||~/PA3/cantmove sw||cd sw>&~/X ||movetry2'
alias s='grueK;safe;cd s>&~/X&&disp||~/PA3/cantmove s ||cd s >&~/X ||movetry2'
alias e='grueK;cd e>&~/X&&disp&&sauna||~/PA3/cantmove e||cd e>&~/X ||movetry2'
alias movetry2='cd ..>&~/X;cat ~/_/die 2>~/X&&quit'
alias grueK='ls ~/_/grue>&~/X &&grep ~/PA3/explanatoryWalkthrough.txt -etrip -A2 |cut -$cutfl &&quit'
alias sauna='(ls *5>&~/X&&((rm ~/_/i/i/rms&&cp ~/_/bu*/lad* ~/_/i/i/diamond&&grep ~/PA1/explanatoryWalkthrough.txt -emond\! -B1|cut -$cutfl);(rm ~/_/i/i/flo*&&grep ~/PA1/explanatoryWalkthrough.txt -egrab -A1|cut -$cutfl));echo>~/X)2>~/X'
alias safe='(ls ~/_/receivingRoom/e/e/*5&&ls s/s/lake)>&~/X&&grep ~/PA1/explanatoryWalkthrough.txt -egulf -C2|cut -$cutfl&&quit;(ls lake&&ls s/lake&&echo `ls ~/_/i/i`|grep -v \\\<p)>&~/X&&grep ~/PA1/explanatoryWalkthrough.txt -eswim -C2|cut -$cutfl&&quit'

l;PS1=">"
