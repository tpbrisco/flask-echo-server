echo CWD is ${CWD}
echo bin contains $(ls bin)
bin/jaeger-agent --reporter.tchannel.host-port=tpb-collector.cfapps.io:80&
exec python echo.py --port=${PORT} --host=0.0.0.0
