#!/bin/python

import sys
import socket
from datetime import datetime

#Define your target
if len(sys.argv) == 2:
    target = socket.gethostbyname(sys.argv[1]) # Translate hostname to IPv4

else:
    print("Invalid amount of argument")
    print("Syntax: python3 scanner.py <ip>")
# Adding a pretty banner

print("_" * 50)
print(f"Scanning Target: {target}")
print(f"Time Started: {str(datetime.now())}")
print("_" * 50)

try:
    for port in range(1, 100):
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        socket.setdefaulttimeout(1)
        result = s.connect_ex((target, port))
        if result == 0:
            print(f"Port {port} is open")

except KeyboardInterrupt:
    print("\nExiting Progrm", "."*3)
except socket.gaierror:
    print("[Errno -3] Temporary failure in name resolution")
except socket.error:
    print("couldn't connect tot server")
    sys.exit()