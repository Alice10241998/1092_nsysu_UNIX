echo "Be patient. This might take up to 2 minutes to run..."
((source ~/PA4/testInputPA5.sh);(tail -4 ~/PA4/testInputPA5.sh>~/PA4/_tmptest;source ~/PA4/_tmptest;rm ~/PA4/_tmptest))|sed '/$ exit/{N;N;N;d}'>~/PA4/testOutputPA5.txt
echo ______________________________________________________________________
echo Finished Running. Now checking for differences to the expected output:
cd ~/PA4
diff testOutputPA5.txt expectedOutputPA5.txt && echo Your basic test passed.
