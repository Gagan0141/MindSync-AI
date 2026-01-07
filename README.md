# MindSync-AI 🧠🤖

**MindSync-AI** is an advanced AI chatbot application designed to provide intelligent, context-aware interactions using Retrieval-Augmented Generation (RAG). Built with Python and Streamlit, it integrates specialized knowledge bases to deliver accurate responses and intervention strategies.

[![Streamlit App](https://static.streamlit.io/badges/streamlit_badge_black_white.svg)](https://mindsync-ai-0.streamlit.app/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Python](https://img.shields.io/badge/Python-3.8%2B-blue)](https://www.python.org/)

## 🌟 Features

* **Interactive Chat Interface**: A user-friendly chat interface powered by [Streamlit](https://streamlit.io/).
* **RAG Architecture**: Utilizes an **Enhanced RAG System** (`enhanced_rag_system.py`) to retrieve and generate answers from specific knowledge bases stored in `rag_knowledges/`.
* **Phased Intervention Logic**: Includes specialized modules for different phases of interaction:
    * **Phase 2 Enhancements**: Logic for improved context understanding.
    * **Phase 3 Intervention**: Specialized capabilities for active intervention (likely for mental health or coaching support).
* **Data Persistence**: Integrated database handling (`db.py`) for managing user sessions or chat history.
* **Customizable Responses**: Dedicated logic in `chatbot_responses.py` to tailor AI personality and output.

## 📂 Project Structure

```bash
MindSync-AI/
├── rag_knowledges/         # Directory containing source documents/knowledge for the RAG system
├── .devcontainer/          # Configuration for remote development containers
├── _virtual_chat.py        # Module handling the virtual chat UI components
├── chatbot_responses.py    # Logic for generating and formatting chatbot responses
├── db.py                   # Database connection and management functions
├── enhanced_rag_system.py  # Core RAG implementation (retrieval + generation logic)
├── packages.txt            # System-level dependencies (for Streamlit Cloud)
├── phase2_enhancements.py  # Module for secondary features/logic
├── phase3_intervention.py  # Module for tertiary/intervention logic
├── requirements.txt        # Python dependency list
├── the_final3.py           # Main application entry point (Streamlit app)
└── LICENSE                 # MIT License file
