# Local-LLM-Showdown
This repository serves as a training base for Large Language Models that can be run on edge devices (not requiring high amounts of compute power). The purpose of this is to evaluate the most popular LLMs on your local device and test which ones perform better at specific tasks. For this testing, we will be using CUDA, PyTorch, and LangChain in order to run the models locally. I am currently using a NVIDIA 3080 GPU.

## Getting Started
### 1. Download the version of NVIDIA CUDA Toolkit that is optimized for your GPU. 
CUDA toolkit versions can be found here https://developer.nvidia.com/cuda-toolkit-archive. I am using CUDA 11.8 as well as the following compatible PyTorch versions. 
- Torch: 2.5.1
- Torchvision: 0.20.1
- Torchaudio = 2.5.1

The PyTorch versions will be downloaded when we run the requirements.txt file; however, if you have versions of PyTorch that will interfere with the compatibility with CUDA, I recommend uninstalling them as PyTorch may not be able to sense your GPU. This should also work for your CPU as well, but performance will suffer.

```bash
pip uninstall torch torchvision torchaudio
```

### If you are using a different version of CUDA...
You will need to change the versions of PyTorch within the requirements.txt file. In some cases, the version can just be deleted, but the system will then download the most recent version of PyTorch. 

Use this website to find your version of PyTorch for your specific specifications.
- https://pytorch.org/get-started/locally/

### 2. VS Code: Fetching the repository
I am using Visual Studio Code for this project, but feel free to use what you are comfortable with. 
- Open VS Code.
- Press Ctrl + Shift + P (or Cmd + Shift + P on macOS) to open the Command Palette.
- Search for "Git: Clone" and select it.

'sh 
https://github.com/gober9/Local-LLM-Showdown.git

## Benefits of Running AI Locally
1. Privacy & Security
- Your data stays on your machine, avoiding third-party servers.
- Great for handling sensitive information without cloud exposure.
- No risk of API leaks or data logging by external services.
2. Cost Savings
- No need to pay for API calls to services like OpenAI, Anthropic, or Google.
- Once set up, running a model locally can be much cheaper in the long run.
- Avoids expensive cloud GPU rental costs for inference.
3. Speed & Latency
- No need to send requests over the internet and wait for a response.
- If optimized, responses can be faster than cloud-based models.
- Ideal for real-time applications like chatbots, coding assistants, and automation.
4. Full Control & Customization
- You can fine-tune, modify, or optimize models for your specific needs.
- Choose which model version to run (e.g., Mistral, LLaMA, or Gemma).
- Ability to run quantized models (GGUF, GPTQ, etc.) for better performance.
5. Offline Capability
- No internet required, making it useful for air-gapped environments.
- Always accessible, even if cloud services go down.
6. No Rate Limits or API Restrictions
- No need to worry about token limits, API downtime, or request throttling.
- Unlimited usage once installed, with no extra fees per request.
7. Multi-Model Flexibility
- Run any LLM (Mistral, LLaMA, Gemma, Mixtral, etc.) instead of being locked into one provider.
- Use different inference engines like llama.cpp, vLLM, ExLlama, or Text-Generation-WebUI.
