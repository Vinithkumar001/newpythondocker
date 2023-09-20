FROM python:3.11
RUN mkdir newfile
COPY requirements.txt newfile
COPY .env /newfile/
COPY  main.py /newfile/
COPY app /newfile/
WORKDIR /newfile
RUN  pip install -r requirements.txt
EXPOSE 8003
#ENTRYPOINT [ "uvicorn","main:app","--host","0.0.0.0","--port","8082","--reload"]
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8003"]
