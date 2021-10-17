source ~/PA4/PA4.sh
echo ">touch ~/_/i/i/floppy";touch ~/_/i/i/floppy
echo ">i";i
echo ">get all";get all
echo ">e";e
echo ">drop shovel";drop shovel
echo ">e";e
echo ">w";w
echo ">n";n
echo ">w";w
echo ">e";e
echo ">cd ~/_/mistyRoom/e/e/";cd ~/_/mistyRoom/e/e/
echo ">w";w
echo ">w";w
echo ">e";e
echo ">drop paper";drop paper
echo ">e";e
echo ">n";n
echo 418 > ~/PA4/comb.txt
echo ">w";w
echo ">drop bracelet";drop bracelet
echo ">i";i
echo ">break cable";break cable
echo "$ exit";exit
echo "% cd ~/_/pokey";cd ~/_/pokey
echo "% ls -lrt *";ls -lrt * | sed 's/  */ /g' | cut -d" " -f1,9 | sed 's/ / ? ? ? ? ? ? ? /'
echo "% ls -lrt */*";ls -lrt */* | sed 's/  */ /g' | cut -d" " -f1,9 | sed 's/ / ? ? ? ? ? ? ? /'
echo "% head -1 */*/description";head -1 */*/description
