#!/bin/bash

echo Logging in to Hugging Face...
huggingface-cli login 

echo Setting up environment variables...
read -p "Enter your Hugging Face API key: " HF_API_KEY
export HF_API_KEY=$HF_API_KEY

echo Verifying API key...
echo $HF_API_KEY
echo "You can now pull down models from Hugging Face using the API key."
