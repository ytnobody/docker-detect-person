# ytnobody/detect-person

Learn and detect persons from image with [Microsoft Azure Cognitive Services Face API](https://azure.microsoft.com/ja-jp/services/cognitive-services/face/)

## SYNOPSIS

    docker run -p 5000:5000 \
        -e FACEAPI_ENDPOINT=https://westus.api.cognitive.microsoft.com/face/v1.0 \
        -e FACEAPI_ACCESSKEY=YOUR-SECRET \
        -it ytnobody/detect-person

## ENVIRONMENTS

- FACEAPI_ENDPOINT : Endpoint URL of Face API

- FACEAPI_ACCESSKEY : Access key of Face API

## API Reference

### Fetch status

path : /

params : none

Return training status.

### Add a person

path : /add

params : 

- name (string) : Name of person

- url (string) : Image URL of person's face

Add a person into the Person Group.

### Detect persons from an image

path : /detect

params : 

- url (string) : Image URL of test image

Detect persons from test image.

## AUTHOR

[ytnobody](https://github.com/ytnobody/)