read a1 a2 a3 <<< "{query}"

if [ $a3 ]
     then
          wget http://lorempixel.com/$a1/$a2/$a3 -O $a1x$a2-$a3.jpg
     else
          wget http://lorempixel.com/$a1/$a2/ -O $a1x$a2.jpg
fi