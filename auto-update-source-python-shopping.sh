echo "!!!stop python app before update!!!";

# update
cd /tmp;
# remove old
rm -rf python3-api-shopping-master;
rm master.zip
# download new one
wget https://github.com/haiht24/python3-api-shopping/archive/master.zip;
unzip master.zip;

# Copy new source to replace
cd /home/*;
rm -rf python-api.old;
mv python-api python-api.old;
mv /tmp/python3-api-shopping-master /home/*
mv /home/*/python3-api-shopping-master python-api

# upgrade pip and install requirements.txt
source /home/*/virtualenv/python-api/3.8/bin/activate && cd /home/*/python-api
pip install --upgrade pip
pip install -r requirements.txt

echo "=================";
echo "...Updated new source code. Let's Start App again"