echo CWD is ${CWD}
echo bin contains $(ls bin)
# bin/jaeger-agent --reporter.tchannel.host-port=collector.cfapps.io:80&
export SPAN_STORAGE_TYPE=memory
export JAEGER_HOST_AOI=jaeger-aio.cfapps.io:80
exec python echo.py --port=${PORT} --host=0.0.0.0
