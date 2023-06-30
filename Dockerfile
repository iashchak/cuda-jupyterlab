# Using specific version of pytorch image from NVIDIA
FROM nvcr.io/nvidia/pytorch:23.06-py3

# Update pip and install necessary packages
RUN pip install --upgrade pip && \
    pip install --no-cache-dir jupyterlab ipywidgets jupyterlab-widgets

# Expose the port jupyter lab will be served on
EXPOSE 8888

# Define command to start jupyter lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
