FROM jupyter/scipy-notebook

COPY apply_normative_models.py ./
COPY models/lifespan57K_82sites/* models/lifespan57K_82sites/
COPY docs/* docs/
COPY app_df.py ./

RUN pip install pcntoolkit==0.20
RUN pip install dash
RUN pip install flask
RUN pip install plotly
RUN pip install gunicorn


 CMD [ "gunicorn", "--workers=5", "--threads=1", "-b 0.0.0.0:80", "app:server"]
