FROM python:3-alpine
RUN mkdir /20103063_rapidfort_project
WORKDIR /20103063_rapidfort_project
COPY requirements.txt /20103063_rapidfort_project
RUN pip install - upgrade pip
RUN pip install - no-cache-dir -r requirements.txt
COPY . /20103063_rapidfort_project
EXPOSE 5000
CMD [ "python", "main.py" ]
