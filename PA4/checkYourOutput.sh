echo "Be patient. This might take up to 2 minutes to run..."
(echo ____________________;echo testBrokenLampDeath:;source ~/PA4/testBrokenLampDeath.sh)> ~/PA4/testOutput.txt
(echo _________________________;echo testSteppedIntoDarkDeath:;source ~/PA4/testSteppedIntoDarkDeath.sh)>> ~/PA4/testOutput.txt
(echo _________________;echo testDrownedDeath:;source ~/PA4/testDrownedDeath.sh)>> ~/PA4/testOutput.txt
(echo ________________;echo testBurnedDeath:;source ~/PA4/testBurnedDeath.sh)>> ~/PA4/testOutput.txt
(echo ______________;echo testBledDeath:;source ~/PA4/testBledDeath.sh)>> ~/PA4/testOutput.txt

echo ______________________________________________________________________
echo Finished Running. Now checking for differences to the expected output:
cd ~/PA4
diff testOutput.txt expectedOutput.txt && echo You passed the basic test.
