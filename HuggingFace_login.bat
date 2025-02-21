@echo off
echo Logging in to Hugging Face...
huggingface-cli login 

echo Setting up environment variables...
set /p HF_API_KEY="Enter your Hugging Face API key: "
setx HF_API_KEY %HF_API_KEY%

echo Verifying API key...
echo %HF_API_KEY%
echo You can now pull down models from Hugging Face using the API key.
pause
