FROM centos:7
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN apt install python3.8
RUN apt install python3-pip
RUN python3.8 -m pip install auto-sklearn
RUN python3.8 -m pip install pandas
RUN python3.8 -m pip install pcntoolkit==0.20
RUN python3.8 -m pip install dash
RUN python3.8 -m pip install flask
RUN python3.8 -m pip install plotly
RUN python3.8 -m pip install gunicorn
RUN ln -s /usr/bin/python3.8 /usr/bin/python
RUN mkdir -p /home/models
RUN mkdir -p /home/models/lifespan_57K_82sites
RUN mkdir -p /home/docs
COPY apply_normative_models.py /home/
COPY apply_normative_models_test.py /home/
COPY models/* /home/models/lifespan_57K_82sites/
COPY docs/* /home/docs/
COPY app_df.py /home/
COPY app.py /home/
