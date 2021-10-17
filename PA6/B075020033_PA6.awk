BEGIN { P = "~/_/pokey/usr/toukmond" }
function cddir(action) { system("cd "P"; "action) }
{
    while(1)
    {
        printf "$ "; getline x < "-"
        print x
        n = split(x, array, " ")
        if (n == 0) continue
        if (array[1] == "cat")
        {
            if (n == 1)
            {
                print "Usage: cat <ascii-file-name>"
                continue
            }
            else if (array[2] ~ /.*\/.*/)
            {
                print "cat: only files in current directory allowed."
            }
            else if (system("[ -f "P"/"array[2]" ]"))
            {
                print "File not found."
            }
            else if (array[2] == "description")
            {
                cddir("cat description")
            }
            else
            {
                print "Ascii files only."
            }
        }
        else if (array[1] == "exit")
        {
            exit
        }
        else if (array[1] == "pwd")
        {
            cddir("pwd | sed 's/.*pokey//;s_$_/_'")
        }
        else if (array[1] == "echo")
        {
            for (i = 2; i < n; ++i) { printf("%s ", array[i]) }
            if (n != 1) { print array[n] }
            else { print "" }
        }
        else if (array[1] != "ls" && array[1] != "cd")
        {
            gsub("./", "", array[1])
            print array[1]": not found."
        }
        else
        {
            if (n == 1)
            {
                if (array[1] == "cd")
                {
                    print "Usage: cd <path>"
                    continue
                }
                split(x" .", array, " ")
            }
            if (array[2] ~ /^\/.*/)
            {
                array[2] = "~/_/pokey"array[2]
            }
            else
            {
                array[2] = P"/"array[2]
            }
            if (system("[ -d "array[2]" ]"))
            {
                print "No such directory."
            }
            else if (array[1] == "cd")
            {
                P = array[2]
            }
            else if (array[1] == "ls")
            {
                cmd1 = "sed 's/  */ /g'"
                cmd2 = "cut -f3,4 --complement -d' '"
                cmd3 = "sed 's/+//; s/197[12]/1970/; s/  */ /g; /toukmond/!{/^d/bY}; /des/!s/ . /@/; :Y; /@/!s/ . /~/; s/~[^ ]\\{2,\\}/~2048/'"
                cmd4 = "sed '2{h; s/./d/; s/[^ ]*$/./; s/[~@][0-9]*/~2048/; s/.*/&\\n&./; G; /10423/s/~/@/; s/2048/512/;}; s/~/ 3 root     staff~/g; s/@/ 1 toukmond restricted~/g; s/~/             ~/g; s/\\([~@]\\)\\([^ ]*\\)/\\2\\1/g; tZ; :Z; s/\\([^\\n]\\{36\\}\\) \\(.....\\)~/\\1\\2~/; tZ; s/~//g'"
                system("ls -rtl "array[2]" | "cmd1" | "cmd2" | "cmd3" | "cmd4)
            }
        }
    }
}
