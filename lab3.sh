#region 1
ls /etc | grep [0-9]
#endregion

#region 2
touch voroshaki.txt
grep -h '.{3}lo$' voroshaki.txt
#endregion

#region 3
grep -h '[A-Z]' dirlist*.txt #ցույց է տալիս այն տողերը որոնք գոնե պարունակում են մեծատառերը A-ից Z:
grep -h '[-AZ]' dirlist*.txt #այն փնտրում է կամ - կամ A կամ Z տողի մեջ։
grep -h '^[A-Z]' dirlist*.txt #փնտրում է այն տողը որը սկսվում է A-ից մինչև Z մեծատառերից մեկով։
grep -h '[^A-Z]' dirlist*.txt #փնտրում է գոնե 1 տող որ պարունակում է A-ից Z չպատկանող սիմվոլ։
#endregion

#region 4
grep -h '^bz|^zip' dirlist-bin.txt dirlist-sbin.txt
#endregion

#region 5
grep -Eh '^(bz|gz|zip)' dirlist*.txt # ցույց կտա այն տողերը որոնք սկսվում են կամ bz կամ gz կամ zip:
grep -Eh '^bz|gz|zip' dirlist*.txt # ցույց կտա այն տողերը որոնք սկսվում են bz-ով ինչես նաև պարունակում են gz,zip:
#endregion

#region 6
echo "test@test.com" | grep -E '^[a-zA-z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
#endregion

#region 7
echo "192․168․0․1"  | grep -E '^([0-9]{1,3}\.){3}[0-9]{1,3}$'
#endregion

#region 8
# Create a file with certain content
echo -e "This is a sample file.\nLevel 123\nPalindrome civic\nAnother line\nstats\nRacecar\nEnd of file" > myfile.txt

# Highlight lines with 5-letter palindromes
grep -E '(^|[^[:alpha:]])(([[:alpha:]])[[:alpha:]]\3)[^[:alpha:]]*$' myfile.txt | grep -i 'level\|racecar'
#endregion

#region 9
echo "01/02/1970" | sed 's/\([0-9]\{2\}\)\/\([0-9]\{2\}\)\/\([0-9]\{4\}\)/\3-\2-\1/'
#endregion

#region 10
echo "0xx 12-34-56" | sed 's/\([0-9]\{2\}\) \([0-9]\{2\}-[0-9]\{2\}-[0-9]\{2\}\)/(\1) \2/'
#endregion
