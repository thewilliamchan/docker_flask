FROM python:3.10
COPY requirements.txt requirements
RUN pip install -r requirements.txt
COPY app.py app.py
ENV FLASK_APP app
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]