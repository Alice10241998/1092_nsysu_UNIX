echo "Be patient. This might take up to 2 minutes to run..."
(source ~/PA3/testInput.sh)>~/PA3/testOutput.txt
echo Finished Running. Now checking for differences to the expected output:
cd ~/PA3
diff testOutput.txt expectedOutput.txt && echo You passed the basic test.
