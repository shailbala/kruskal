#run this as root
if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

apt-get update
apt-get install python2.7 python-setuptools
easy_install https://pypi.python.org/packages/2.7/n/networkx/networkx-1.8.1-py2.7.egg

echo "execute the code as:
python kruskal.py [kruskal_heap|kruskal_merge|kruskal_quick] [number of nodes]
e.g.
python kruskal.py kruskal_heap 4000
that would run kruskal using heap-extract-min and a graph of 4000 nodes
"
