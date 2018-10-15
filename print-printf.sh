
#!/bin/bash
 
echo $0 $1
if [ $1x == 1x ]; then
    echo "printf"
    awk '{for(i=1;i<5;i++){printf($i"\t")}}' test.txt
else
    echo "print"
    awk '{for(i=1;i<5;i++){print($i"\t")}}' test.txt
fi
