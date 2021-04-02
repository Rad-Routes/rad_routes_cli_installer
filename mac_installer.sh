echo "R.A.D. Routes will now install..."

echo '...creating R.A.D. Routes directory'

mkdir -p ~/.rad_routes

cd ~/.rad_routes

echo 'curling the master files'

curl https://github.com/shyaboi/rad-route-runner/archive/refs/heads/master.zip -O -J -L

echo 'unzipppping'

unzip rad-route-runner-master

cd rad-route-runner-master

echo 'copying files into your usr/local/bin directory'

chmod +x rr.py

mv rr.py rr

echo 'File linking R.A.D. Routes installation files'

sudo ln -s ~/.rad_routes/rad-route-runner-master/rr /usr/local/bin

echo 'R.A.D. Routes ready to use!, open a new terminal, and type rr -r YOUR_FAVORITE_ROUTE'

#env version checking
# vers=`pipenv --version`

# echo $vers
# # echo $vers | awk '{print substr($0,length,1)}'

# # if [ "$vers" == "d" ]; then

# echo 'Your current pipenv is ' $vers

# echo 'Please use your own Python env'
# echo 'in your virtual environment run;'
# echo 'pip install requests'

exit