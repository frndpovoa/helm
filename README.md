```bash
true \
&& HELM_VERSION="v3.7.1" \
&& docker pull alpine \
&& docker build \
    --tag frndpovoa/helm:$HELM_VERSION \
    --build-arg HELM_VERSION=$HELM_VERSION \
    . \
&& docker push frndpovoa/helm:$HELM_VERSION
```
