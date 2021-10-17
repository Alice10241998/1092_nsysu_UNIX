echo "Be patient. This might take up to 2 minutes to run..."
(source ~/PA4/testInputPA6.sh>~/PA4/testOutputPA6.txt)
echo ______________________________________________________________________
echo Finished Running. Now checking for differences to the expected output:
cd ~/PA4
diff testOutputPA6.txt expectedOutputPA6.txt && echo You passed the basic test.
