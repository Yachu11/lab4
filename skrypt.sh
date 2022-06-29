flag=$1

if [ $1 = "--date" ]; then
    date=$(date)
    echo $date
fi

if [ $1 = "--logs" ]; then
    if [ $2 ]; then 
        for (( i=1; i<=$2; i++ ))
        do
            date=$(date)
            name="log$i.txt"
            echo "$name $0 $date" >> $name
        done
    else 
        for i in {1..100}
        do
            date=$(date)
            name="log$i.txt"
            echo "$name $0 $date" >> $name
        done
    fi
fi