import os
import sys
from dotenv import load_dotenv

from .base import *

# import socket
load_dotenv()

env = os.getenv("mode")

match env:
    case "production":
        from .production import *
    case "development":
        from .development import *
    case _:
        sys.exit(
            "No environment specified: set mode=production, staging or development"
        )
