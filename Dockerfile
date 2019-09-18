FROM node:10-alpine

LABEL "com.github.actions.name"="Triage New issues"
LABEL "com.github.actions.description"="Adds a triage label to your new issues when opened."
LABEL "com.github.actions.icon"="alert-circle"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/bdougie/triage-new-issues"
LABEL "homepage"="https://github.com/bdougie/triage-new-issues"
LABEL "maintainer"="Brian Douglas <bdougie@github.com>"

COPY package*.json ./
RUN npm ci
COPY . .

ENTRYPOINT ["probot", "receive"]
CMD ["/src/index.js"]
