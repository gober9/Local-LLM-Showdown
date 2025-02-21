from langchain.llms import HuggingFacePipeline
from transformers import pipeline

# Load a model locally (e.g., Mistral-7B)
pipe = pipeline("text-generation", model="mistralai/Mistral-7B-Instruct")

# Create the LangChain LLM wrapper
llm = HuggingFacePipeline(pipeline=pipe)

# Test the model by calling it directly
response = llm("What is the weather like today?")
print(response)
