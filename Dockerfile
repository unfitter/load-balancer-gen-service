ARG PYTHON3_IMAGE=UNDEFINED
FROM ${PYTHON3_IMAGE}

LABEL maintainer="Oleg Shvets <olegsvec742@gmail.com>"

RUN pip install --no-cache-dir kubernetes==31.0.0 --break-system-packages

COPY lb-gen-svc/lb-gen-svc.py /lb-gen-svc.py

ENTRYPOINT ["python3", "-u", "/lb-gen-svc.py"]
