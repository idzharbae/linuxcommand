cat workshop.csv | awk -F',' '{print $1","$2","$4-$3}' | sort -t, -nk 3 | tail -n 1 | sed -r 's#^([^0-9]*)([0-9]*).*#printf "%s %s" "\1""$(expr \2 / 31536000)"#e'