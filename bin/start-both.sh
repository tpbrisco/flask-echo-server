echo CWD is ${CWD}
echo bin contains $(ls bin)
bin/jaeger-agent &
exec python echo.py --port=${PORT} --host=0.0.0.0
