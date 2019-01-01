# Sort an array by order.
#!/bin/bash
ARRAY=(4 1 2 5 8 4 7 3 6 9 3)
P1=0
LEN=${#ARRAY[@]}
NP1=''
PT=''
START=${ARRAY[$P1]}
END=${ARRAY[$P2]}
while (( $LEN > 0 ))
do
    P2=$((P1+1))
    if [[ "${ARRAY[$P1]}" -gt "${ARRAY[$P2]}" ]]
    then
        PT=${ARRAY[$P1]}
        ARRAY[$P1]=${ARRAY[$P2]}
        ARRAY[$P2]=$PT
        PP1=$P1
        while (( "$PP1" > 0 ))
        do
            PP2=$PP1
            ((PP1--))
             if [[ "${ARRAY[$PP1]}" -gt "${ARRAY[$PP2]}" ]]
             then
                 PT=${ARRAY[$PP1]}
                 ARRAY[$PP1]=${ARRAY[$PP2]}
                 ARRAY[$PP2]=$PT
            fi
        done
    fi
    ((P1++))
    ((LEN--))
done
echo ${ARRAY[@]}
