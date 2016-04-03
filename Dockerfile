FROM python:2.7
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt



# Install dockerize
ADD Dockerfiles/dockerize /usr/local/bin/

ARG GIT_URL=github.com/DavisChang/composetest.git
ARG GIT_BRANCH=snapshot
ARG GIT_COMMIT=snapshot
ARG BUILD_NUMBER=snapshot
ARG BUILD_URL=http://localhost:8080/
ARG BUILD_USER
ARG BUILD_TIME
ENV DOCKER_IMAGE_ID=$BUILD_NUMBER-$GIT_COMMIT


CMD /usr/local/bin/dockerize \
      python app.py


LABEL component=test_build_image \
      git_url=$GIT_URL \
      git_branch=$GIT_BRANCH \
      git_commit=$GIT_COMMIT \
      build_number=$BUILD_NUMBER \
      build_url=$BUILD_URL \
      build_user=$BUILD_USER \
      build_time=$BUILD_TIME \
      docker_image_id=$DOCKER_IMAGE_ID

