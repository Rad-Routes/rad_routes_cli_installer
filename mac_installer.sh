vers=`pipenv --version`

echo $vers | awk '{print substr($0,length,1)}'

if [ "$vers" == "d" ]; then

echo 'no pippppppppppppp env '

echo 'Installing pipenv'

pip3 install pipenv

else

echo $vers

fi

echo 'done checking for pipenv...'

mkdir -p ~/.rad_routes

cd ~/.rad_routes

curl https://github.com/shyaboi/rad-route-runner/archive/refs/heads/master.zip -O -J -L

unzip rad-route-runner-master

cd rad-route-runner-master

chmod +x rr.py

mv rr.py rr

ln -s ~/.rad_routes/rad-route-runner-master/rr /usr/local/bin

exit 0