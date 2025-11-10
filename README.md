# **scAgent**
Agentic AI framework that probes our local single-cell data. Enables non-computational experts to seamlessly investigate transcriptional signatures. 

## Methodology
- Converted our seurat object to anndata, enabling versatile scanpy analysis features
- Downloaded 20 billion parameter openAI LLM (gpt-oss:20b)
- Agentic framework designed with LangChain in Python. LLM provided with tools and context to execute analysis on our data

## Architecture

#### Phase 1: Planner
Expert bioinformatician takes prompt and generates a detailed step-by-step plan

#### Phase 2: Executor
Extracts plan and runs code on sc data using defined libraries

#### Phase 3: Self Corrector
Feedback loop that catches an error in the script. Debugs and updates

#### Phase 4: Summarizer
Summarizes results from executor


