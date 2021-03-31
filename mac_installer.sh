mkdir -p ~/.rad_routes

cd ~/.rad_routes

curl https://github.com/shyaboi/rad-route-runner/archive/refs/heads/master.zip -O -J -L

unzip rad-route-runner-master

cd rad-route-runner-master

chmod +x rr.py

mv rr.py rr

ln -s ~/.rad_routes/rad-route-runner-master/rr /usr/local/bin

exit 0