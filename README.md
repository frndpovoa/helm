```bash
true \
&& VERSION="v3.6.3" \
&& sudo docker pull alpine \
&& sudo docker build \
    --tag frndpovoa/helm:$VERSION \
    --build-arg HELM_VERSION=$VERSION \
    . \
&& sudo docker push frndpovoa/helm:$VERSION
```
