from pyspark.sql.functions import udf
from pyspark.sql.types import BooleanType
import re

# Integer (optional +/-, digits only)
def is_valid_int(value):
    if value is None:
        return False
    return bool(re.match(r"^[+-]?\d+$", str(value)))
isIntUDF = udf(is_valid_int, BooleanType())

# Float (optional sign, decimal point)
def is_valid_float(value):
    if value is None:
        return False
    return bool(re.match(r"^[+-]?(\d+(\.\d*)?|\.\d+)$", str(value)))
isFloatUDF = udf(is_valid_float, BooleanType())

# Boolean (true/false/1/0 case-insensitive)
def is_valid_bool(value):
    if value is None:
        return False
    return str(value).lower() in ["true", "false", "1", "0"]
isBoolUDF = udf(is_valid_bool, BooleanType())

# Date (YYYY-MM-DD)
def is_valid_date(value):
    if value is None:
        return False
    return bool(re.match(r"^\d{4}-\d{2}-\d{2}$", str(value)))
isDateUDF = udf(is_valid_date, BooleanType())

# Timestamp (ISO 8601 format)
def is_valid_timestamp(value):
    if value is None:
        return False
    return bool(re.match(r"^\d{4}-\d{2}-\d{2}[ T]\d{2}:\d{2}:\d{2}(\.\d+)?(Z|[+-]\d{2}:\d{2})?$", str(value)))
isTimestampUDF = udf(is_valid_timestamp, BooleanType())

# Email
def is_valid_email(value):
    if value is None:
        return False
    return bool(re.match(r"^[^\s@]+@[^\s@]+\.[^\s@]+$", str(value)))
isEmailUDF = udf(is_valid_email, BooleanType())

# UUID
def is_valid_uuid(value):
    if value is None:
        return False
    return bool(re.match(r"^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$", str(value)))
isUUIDUDF = udf(is_valid_uuid, BooleanType())
