echo "Be patient. This might take up to 2 minutes to run..."
(source ~/PA2/testInput.sh)>~/PA2/testOutput.txt
echo Finished Running. Now checking for differences to the expected output:
cd ~/PA2
diff testOutput.txt expectedOutput.txt && echo You passed the basic test.
