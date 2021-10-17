BEGIN {"cd ~/_/pokey;pwd"|getline ROOT; PATH = "usr/toukmond"}

{   while (1)
    {   printf "$ "
        getline < "-"  # write to $0
        print

        if (NF == 0) continue

        if ($1 == "cat")
        {   filename = ROOT"/"PATH"/"$2
            if (NF == 1)
            {   print "Usage: cat <ascii-file-name>"
                continue
            }
            else if ($2 ~ /\//)
            {   print "cat: only files in current directory allowed."
            }
            else if ((getline line < filename) < 0)
            {   print "File not found."
            }
            else if ($2 == "description")
	    {   print line # This was loaded by the prior else-if
                while (getline line < filename)
                    print line
            }
            else
	    {   print "Ascii files only."
            }
            close(filename)
        }
        else if ($1 == "exit")
	{   exit
        }
        else if ($1 == "pwd")
        {   if (length(PATH) == 0) print "/"
            else                   print "/"PATH"/"
        }
        else if ($1 == "echo")
        {   $1=""
            print substr($0,2)
        }
        else if ($1 != "ls" && $1 != "cd")
	{   print $1": not found."
        }
        else
        {   if (NF == 1)
            {   if ($1 == "cd")
		{   print "Usage: cd <path>"
                    continue
                }
                $2 = "."
            }

            if ($2 ~ /^\/.*/) $2 = substr($2, 2, length($2)) # remove '/'
            else if (length(PATH) != 0) $2 = PATH"/"$2

            if (system("cd "ROOT"/"$2"&> ~/X"))
                print "No such directory."
            else if ($1 == "cd")
                PATH = $2
            else if ($1 == "ls")
	    {   command = "ls -rtl "ROOT"/"$2
                X= "drwxr-xr-x "; Y=" Jan 1 1970 ."
                while (command | getline)
		{   if ($0 ~ /total/)
                    {   print $0
                        if (PATH ~ /toukmond$/)
			    print X"1 toukmond restricted      512"Y
                        else
			    print X"3 root     staff           512"Y
                        print X"3 root     staff          2048"Y"."
                    }
                    else
		    {   if ($1 ~ /\+/) printf substr($1, 1, length($1)-1)" "
                        else printf $1 " "
                        
                        if(PATH~ /toukmond$/ || $9~ /.o$/ || $9== "toukmond")
                            printf("%d %-8s restricted %8d %s %d 1970 %s\n",
				   1, "toukmond", $5, $6, $7, $9)
                        else
			{   if ($9 == "description") $5 = 2048
                            printf("%d %-8s staff      %8d %s %d 1970 %s\n",
				   3, "root", $5, $6, $7, $9)
}   }   }   }   }   }   }
