FROM python:3.7

LABEL "com.github.actions.name"="Changelog Generator"
LABEL "com.github.actions.description"="action that creates & commits new changelog on a release pull request with the changelog"
LABEL "com.github.actions.icon"="clock"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/energytoolbase/changelog-ci"
LABEL "homepage"="https://github.com/energytoolbase/changelog-ci"
LABEL "maintainer"="Energy Toolbase"

RUN pip install requests

COPY ./scripts/changelog-ci.py /changelog-ci.py

RUN ["chmod", "+x", "/changelog-ci.py"]
ENTRYPOINT ["python", "/changelog-ci.py"]
