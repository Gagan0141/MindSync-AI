# --------------------------------------------------
# Hugging Face Spaces – Python 3.10
# --------------------------------------------------
FROM python:3.10-slim

# Prevent Python from writing pyc files
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# --------------------------------------------------
# System Dependencies (CRITICAL for OpenCV & DeepFace)
# --------------------------------------------------
RUN apt-get update && apt-get install -y \
    git \
    ffmpeg \
    libgl1 \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender1 \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# --------------------------------------------------
# Set Working Directory
# --------------------------------------------------
WORKDIR /app

# --------------------------------------------------
# Copy Dependency Files
# --------------------------------------------------
COPY requirements.txt .

# --------------------------------------------------
# Install Python Dependencies
# --------------------------------------------------
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# --------------------------------------------------
# Copy Application Code
# --------------------------------------------------
COPY . .

# --------------------------------------------------
# Hugging Face Required Port
# --------------------------------------------------
EXPOSE 7860

# --------------------------------------------------
# Streamlit Entry Point
# --------------------------------------------------
CMD ["streamlit", "run", "the_final3.py", "--server.port=8501", "--server.address=0.0.0.0"]


# ENTRYPOINT ["streamlit", "run", "the_final3.py", "--server.port=8501", "--server.address=0.0.0.0"]