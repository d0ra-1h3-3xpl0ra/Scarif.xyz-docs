The ML backend consists of a docker microservice. This can be hosted for example on: 

- Custom Backend (consumer grad GPUs)
- Google Cloud Run
- Azure Container Apps
- AWS Apprunner

The docker microservice is easy to reproduce and host locally for anyone who wants to participate in the network. 
The application can be called via REST API, i.e. from curl, Typescript, Python, etc.really anything that can make POST requests. 
An example query includes a "prompt" parameter, and a "seed" parameter. The prompt parameter is constant amongst a set of applications and can be changed. The seed parameter is solely set through reproducible, publicly avaiable parameters that are stored on the blockchain. These may include


An example request:
```bash
curl -X POST -H "Content-Type: application/json" -d '{"seed": 42, "prompt": "Peaky Blinders NFT. Faces are not directly visible. No text."}' http://127.0.0.1:2500/predict
```

The corresponding response: 
```
{
    "response": <UTF-8 Base64 Encoded Bytestring Of PNG Image>
}
```

The Smart contract can then 
(1) generate and then store the image on arweave, or
(2) verify the base64 string with the image that is on arweave

In other words, the REST POST arguments are “seed” (you can map any bytes to an integer), and a prompt. Make sure that the prompt is relatively short (i.e. not GPT4-long). In this case, the model runs locally on localhost, but technically the model could run anywhere. In the future, we plan on using an ENS or Solana Name Service also decentralize this aspect.

Example interface (provided in the repository, using gradio): 

![Stable Diffusion Gradio Demo](resources/images/gradio-demo-stable-diffusion.jpg)
