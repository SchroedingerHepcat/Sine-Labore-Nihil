#!/usr/bin/python3
import sys
from pathlib import Path
with open(Path.home() / ".cloudns") as f:
    for line in f.readlines():
        DYNAMIC_DNS_URL = line
        if sys.version_info[0] < 3:
            import urllib
            page = urllib.urlopen(DYNAMIC_DNS_URL);
            page.close();
        else:
            import urllib.request
            page = urllib.request.urlopen(DYNAMIC_DNS_URL);
            page.close();
