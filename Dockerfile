# create docker image, if needed
FROM rackspacedot/python37
COPY . echo
WORKDIR echo
RUN python3 -m pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["gunicorn", "--bind=0.0.0.0:8080", "-c", "gunicorn.py", "echo:app"]
